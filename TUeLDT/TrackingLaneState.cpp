#include "TrackingLaneState.h"

#ifdef s32v2xx
     TrackingLaneState::TrackingLaneState(BufferingDAG_s32v&& bufferingGraph)
     :mTrackingLaneGraph(std::move(bufferingGraph))
     {	
		
     }
#else
     TrackingLaneState::TrackingLaneState(BufferingDAG_generic&& bufferingGraph)
     :mTrackingLaneGraph(std::move(bufferingGraph))
     {	
		
     } 
#endif

void TrackingLaneState::setupDAG(LaneFilter* laneFilter, VanishingPtFilter* vpFilter)
{

	//Setting Up observing Filters for the Graph	
	 mTrackingLaneGraph.mLaneFilter = laneFilter;
	 mTrackingLaneGraph.mVpFilter   = vpFilter;
	 
	 
	 mTrackingLaneGraph.mLOWER_LIMIT_IntBase 
	 = SCALE_INTSEC*laneFilter->HISTOGRAM_BINS(0) - (SCALE_INTSEC*laneFilter->STEP)/2;
	 
	mTrackingLaneGraph.mUPPER_LIMIT_IntBase = 
	   SCALE_INTSEC*laneFilter->HISTOGRAM_BINS(laneFilter->mNb_HISTOGRAM_BINS-1) 
	 + (SCALE_INTSEC*laneFilter->STEP)/2;
	 
	 mTrackingLaneGraph.mLOWER_LIMIT_IntPurview = 
	   -SCALE_INTSEC*vpFilter->VP_RANGE_H - (SCALE_INTSEC*vpFilter->STEP)/2;
	 
	 mTrackingLaneGraph.mUPPER_LIMIT_IntPurview = 
	   SCALE_INTSEC*vpFilter->VP_RANGE_H +  (SCALE_INTSEC*vpFilter->STEP)/2;


	 mTrackingLaneGraph.mSCALED_STEP_LANE_FILTER	= laneFilter->STEP*SCALE_INTSEC;
	 mTrackingLaneGraph.mSCALED_STEP_VP_FILTER      = vpFilter->STEP*SCALE_INTSEC;
	 mTrackingLaneGraph.mSCALED_START_LANE_FILTER   = laneFilter->HISTOGRAM_BINS(0)*SCALE_INTSEC;
	 mTrackingLaneGraph.mSCALED_START_VP_FILTER	= vpFilter->HISTOGRAM_BINS(0)*SCALE_INTSEC;

	
	 mTrackingLaneGraph.mHistBase 	   = Mat::zeros(laneFilter->mNb_HISTOGRAM_BINS,  1 ,  CV_32S);
	 mTrackingLaneGraph.mHistPurview   = Mat::zeros(laneFilter->mNb_HISTOGRAM_BINS,  1 ,  CV_32S);
	
	 this->currentStatus= StateStatus::ACTIVE;	
}


void TrackingLaneState::run()
{

#ifdef PROFILER_ENABLED
mProfiler.start("SingleRun_TRACK");
#endif

	if (mSideExecutor.joinable())
		mSideExecutor.join();
	
	mSideExecutor =
#ifdef s32v2xx
	std::thread(&TrackingLaneDAG_s32v::auxillaryTasks, 	std::ref(mTrackingLaneGraph));
#else
	std::thread(&TrackingLaneDAG_generic::auxillaryTasks, 	std::ref(mTrackingLaneGraph));
#endif
		
		
	//Grab and Buffer Required Frames
	if (0==mTrackingLaneGraph.grabFrame())
	{
		mTrackingLaneGraph.buffer();
		mTrackingLaneGraph.extractLanes();
	}			
	else
		currentStatus = StateStatus::ERROR;	


	this->StateCounter++;
		
#ifdef PROFILER_ENABLED
mProfiler.end();
LOG_INFO_(LDTLog::TIMING_PROFILE)<<endl
				<<"******************************"<<endl
				<<  "Completing a TrackingLanes run." <<endl
				<<  "Complete run Time: " << mProfiler.getAvgTime("SingleRun_TRACK")<<endl
				<<"******************************"<<endl<<endl;	
				#endif	
}

TrackingLaneState::~TrackingLaneState()
{
	
		if (mSideExecutor.joinable())
		   mSideExecutor.join();	
}

