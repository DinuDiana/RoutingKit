#include <routingkit/vector_io.h>
#include <routingkit/permutation.h>
#include <routingkit/inverse_vector.h>
#include <routingkit/customizable_contraction_hierarchy.h>
#include <routingkit/graph_util.h>
#include <routingkit/min_max.h>
#include <routingkit/timer.h>

#include <iostream>
#include <stdexcept>
#include <vector>

using namespace RoutingKit;
using namespace std;

int test_customizable_contraction_hierarchy_customization(int argc, char*argv[]){
	try{

		vector<unsigned>
			first_out = {0, 0, 1, 4},
			tail = {0, 0, 1, 2},
			head = {1, 2, 3, 3},
			weight = {1, 10, 1, 10};
		std::vector<unsigned> cch_order = {1, 2, 3, 4};
			
		long long timer;

		cout << "Building CCH ... " << flush;

		timer = -get_micro_time();
		CustomizableContractionHierarchy cch(cch_order, tail, head);
		timer += get_micro_time();

		cout << "done [" << timer << "musec]" << endl;

		cout << "Regular CCH Customization ... " << flush;

		timer = -get_micro_time();
		CustomizableContractionHierarchyMetric reference_metric(cch, weight);
		reference_metric.customize();
		timer += get_micro_time();

		cout << "done [" << timer << "musec]" << endl;


		#ifdef _OPENMP
		cout << "Constructing Parallelization data structures ... " << flush;
		timer = -get_micro_time();
		CustomizableContractionHierarchyParallelization parallel_customization(cch);
		timer += get_micro_time();
		cout << "done [" << timer << "musec]" << endl;

		cout << "Parallel CCH Customization ... " << flush;
		timer = -get_micro_time();
		CustomizableContractionHierarchyMetric parallel_metric(cch, weight);
		parallel_customization.customize(parallel_metric);
		timer += get_micro_time();
		cout << "done [" << timer << "musec]" << endl;

		if(reference_metric.forward != parallel_metric.forward || reference_metric.backward != parallel_metric.backward){
			throw std::runtime_error("Parallel Customization is broken");
		}else{
			cout << "Parallel Customization is ok" << endl;
		}
		#endif

		CustomizableContractionHierarchyMetric partial_metric = reference_metric;
		CustomizableContractionHierarchyPartialCustomization partial_update(cch);

		cout << "Nop Partial Customization ... " << flush;
		timer = -get_micro_time();
		partial_update.customize(partial_metric);
		timer += get_micro_time();
		cout << "done [" << timer << "musec]" << endl;


		if(reference_metric.forward != partial_metric.forward || reference_metric.backward != partial_metric.backward){
			throw std::runtime_error("Nop Partial Customization is broken");
		}else{
			cout << "Nop Partial Customization is ok" << endl;
		}

		cout << "No-Change Partial Customization ... " << flush;
		timer = -get_micro_time();
		for(unsigned i=0; i<1000; ++i)
			partial_update.update_arc(rand()%head.size());
		partial_update.customize(partial_metric);
		timer += get_micro_time();
		cout << "done [" << timer << "musec]" << endl;

		if(reference_metric.forward != partial_metric.forward || reference_metric.backward != partial_metric.backward){
			throw std::runtime_error("No-Change Partial Customization is broken");
		}else{
			cout << "No-Change Partial Customization is ok" << endl;
		}

		cout << "Partial Customization ... " << flush;
		timer = -get_micro_time();
		for(unsigned i=0; i<1000; ++i){
			unsigned a = rand()%head.size();
			weight[a] = rand()%1000;
			partial_update.update_arc(a);
		}
		partial_update.customize(partial_metric);
		timer += get_micro_time();
		cout << "done [" << timer << "musec]" << endl;

		reference_metric.customize();

		for(unsigned a = 0; a < reference_metric.forward.size(); ++a){
			if(reference_metric.forward[a] != partial_metric.forward[a])
				throw std::runtime_error("Partial Customization is broken: forward weight of "+std::to_string(a)+" is "+std::to_string(partial_metric.forward[a]) + " but should be "+std::to_string(reference_metric.forward[a]));
			if(reference_metric.backward[a] != partial_metric.backward[a])
				throw std::runtime_error("Partial Customization is broken: backward weight of "+std::to_string(a)+" is "+std::to_string(partial_metric.forward[a]) + " but should be "+std::to_string(reference_metric.forward[a]));

		}
		cout << "Partial Customization is ok" << endl;

	}catch(exception&err){
		cerr << "Stopped on exception : " << err.what() << endl;
		return 1;
	}
	return 0;
}

