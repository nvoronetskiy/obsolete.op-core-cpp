//
//  MediaEngineDelegateWrapper.h
//  Hookflash
//
//  Created by Vladimir Morosev on 9/27/12.
//
//

#import <Foundation/Foundation.h>
#include <openpeer/core/IMediaEngine.h>

using namespace openpeer::core;

class MediaEngineDelegateWrapper : public IMediaEngineDelegate
{
public:
  typedef boost::shared_ptr<MediaEngineDelegateWrapper> MediaEngineDelegateWrapperPtr;
  
  static MediaEngineDelegateWrapperPtr create();
  
  virtual void onMediaEngineAudioRouteChanged(IMediaEngine::OutputAudioRoutes audioRoute);
  virtual void onMediaEngineAudioSessionInterruptionBegan();
  virtual void onMediaEngineAudioSessionInterruptionEnded();
  virtual void onMediaEngineFaceDetected();
  virtual void onMediaEngineVideoCaptureRecordStopped();
  
};

typedef boost::shared_ptr<MediaEngineDelegateWrapper> MediaEngineDelegateWrapperPtr;
