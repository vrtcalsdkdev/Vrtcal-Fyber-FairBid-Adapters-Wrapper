import Vrtcal_Adapters_Wrapper_Parent
import FairBidSDK

class VrtcalFyberFairbidAdaptersWrapper: AdapterWrapperProtocol {

    var appLogger: Logger
    var sdkEventsLogger: Logger
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
        FairBid.start(withAppId: "109613")
    }
    
    func handle(vrtcalAsSecondaryConfig: VrtcalAsSecondaryConfig) {
        
        switch vrtcalAsSecondaryConfig.placementType {
                
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
}
