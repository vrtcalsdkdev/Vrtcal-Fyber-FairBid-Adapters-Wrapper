import Vrtcal_Adapters_Wrapper_Parent
import FairBidSDK

// Must be NSObject for FairBidDelegate
class VrtcalFyberFairbidAdaptersWrapper: NSObject, AdapterWrapperProtocol {

    var appLogger: Logger
    var sdkEventsLogger: Logger
    var sdk = SDK.fyberFairbid
    var delegate: AdapterWrapperDelegate
    
    required init(
        appLogger: Logger,
        sdkEventsLogger: Logger,
        delegate: AdapterWrapperDelegate
    ) {
        self.appLogger = appLogger
        self.sdkEventsLogger = sdkEventsLogger
        self.delegate = delegate
    }
    
    func initializeSdk() {
        appLogger.log()
        FairBid.delegate = self
        FairBid.start(withAppId: "109613")
    }
    
    func handle(adTechConfig: AdTechConfig) {
        
        switch adTechConfig.placementType {
                
            case .banner:
                appLogger.log()
                
            case .interstitial:
                appLogger.log()
                
            case .rewardedVideo:
                sdkEventsLogger.log()
                
            case .showDebugView:
                sdkEventsLogger.log()
        }
    }
    
    func showInterstitial() -> Bool {
        return false
    }
    
    func destroyInterstitial() {
        
    }
}

extension VrtcalFyberFairbidAdaptersWrapper: FairBidDelegate {
    func networkStarted(_ network: FYBMediatedNetwork) {
        sdkEventsLogger.log("networkStarted: \(network)")
    }
    
    func network(_ network: FYBMediatedNetwork, failedToStartWithError error: Error) {
        sdkEventsLogger.log("network: \(network) failedToStartWithError: \(error)")
    }
    
    func mediationStarted() {
        sdkEventsLogger.log("mediationStarted")
    }
    
    func mediationFailedToStartWithError(_ error: Error) {
        sdkEventsLogger.log("mediationFailedToStartWithError: \(error)")
    }
}
