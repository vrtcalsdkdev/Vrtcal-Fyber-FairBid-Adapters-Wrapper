Pod::Spec.new do |s|
    s.name         = "Vrtcal-Fyber-FairBid-Adapters-Wrapper"
    s.version      = "1.0.0"
    s.summary      = "Wrapper for Vrtcal-Fyber-FairBid-Adapters"
    s.homepage     = "http://vrtcal.com"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2020 Vrtcal Markets, Inc.
                  LICENSE
                }
    s.author       = { "Scott McCoy" => "scott.mccoy@vrtcal.com" }
    
    s.source       = { :git => "https://github.com/vrtcalsdkdev/Vrtcal-Fyber-FairBid-Adapters-Wrapper.git", :tag => "#{s.version}" }
    s.source_files = "*.swift"

    s.platform = :ios
    s.ios.deployment_target  = '11.0'

    s.dependency 'Vrtcal-Adapters-Wrapper-Parent'
    s.dependency 'Vrtcal-Fyber-FairBid-Adapters'

    s.static_framework = true
end
