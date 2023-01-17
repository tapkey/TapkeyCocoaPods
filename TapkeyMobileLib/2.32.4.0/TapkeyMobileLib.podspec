Pod::Spec.new do |s|
    s.name             = 'TapkeyMobileLib'
    s.version = '2.32.4.0'
    s.homepage         = 'https://developers.tapkey.io/'
    s.license          = { :type => 'Copyright (c) Tapkey GmbH', :file => 'LICENSE' }
    s.author           = { 'Tapkey GmbH' => 'office@tapkey.com' }
    s.summary          = 'Tapkey AppSDK'
    s.source = { :http => "https://cocoapods.tapkey.com/TapkeyMobileLib/2.32.4.0/TapkeyMobileLib-2.32.4.0.tar.bz2", :sha256 => "70fd9db50b23fca23aec9100d4c9b1dbd6a17d4f95a526c59d474f9ead096e63"}
    s.platforms = { 
        :ios => "11.0",
        :watchos => "6.2"
    }
    s.static_framework = true
    s.swift_versions = '5.7'
    s.default_subspecs = 'Core'
    s.subspec 'Core' do |cs|
        cs.vendored_frameworks = ['TapkeyMobileLib.xcframework']
        cs.resources = ['TapkeyMobileLib.xcframework/ios-arm64/TapkeyMobileLib.framework/TapkeyMobileLib.bundle']
        cs.platforms = { 
            :ios => "11.0",
            :watchos => "6.2"
        }
        cs.ios.dependency 'SocketRocket', '0.6.0'
        cs.dependency 'JRE-Slim', '2.8.1.3-tk'
        cs.dependency 'GsonJ2ObjC-Light', '2.8.6.4'

    end
    s.subspec 'Fcm' do |cs|
        cs.vendored_frameworks = ['TapkeyFcm.xcframework']
        cs.platforms = { 
            :ios => "11.0",
            :watchos => "6.2"
        }
        cs.dependency 'TapkeyMobileLib/Core'
        cs.dependency 'Firebase/Messaging', '~> 6.34'
    end
end
