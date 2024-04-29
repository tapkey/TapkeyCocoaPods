Pod::Spec.new do |s|
    s.name             = 'TapkeyMobileLib'
    s.version = '2.42.3.0'
    s.homepage         = 'https://developers.tapkey.io/'
    s.license          = { :type => 'Copyright (c) Tapkey GmbH', :file => 'LICENSE' }
    s.author           = { 'Tapkey GmbH' => 'office@tapkey.com' }
    s.summary          = 'Tapkey AppSDK'
    s.source = { :http => "https://cocoapods.tapkey.com/TapkeyMobileLib/2.42.3.0/TapkeyMobileLib-2.42.3.0.tar.bz2", :sha256 => "15f0ecc41fb2aba5e03e8b5ac267d7cfd3ce62302e36d83ef17fe275e662988c"}
    s.platforms = { 
        :ios => "12.0",
        :watchos => "6.2"
    }
    s.static_framework = true
    s.swift_versions = '5.7'
    s.default_subspecs = 'Core'
    s.subspec 'Core' do |cs|
        cs.vendored_frameworks = ['TapkeyMobileLib.xcframework']
        cs.resources = ['TapkeyMobileLib.xcframework/ios-arm64/TapkeyMobileLib.framework/TapkeyMobileLib.bundle']
        cs.platforms = { 
            :ios => "12.0",
            :watchos => "6.2"
        }
        cs.ios.dependency 'SocketRocket', '~> 0.6.0'
        cs.dependency 'JRE', '2.9.3.0-tk'
        cs.dependency 'GsonJ2ObjC', '2.8.6.9'

    end
    s.subspec 'Fcm' do |cs|
        cs.vendored_frameworks = ['TapkeyFcm.xcframework']
        cs.resources = ['TapkeyFcm.xcframework/ios-arm64/TapkeyFcm.framework/TapkeyFcm.bundle']
        cs.platforms = { 
            :ios => "12.0",
            :watchos => "6.2"
        }
        cs.dependency 'TapkeyMobileLib/Core'
        cs.dependency 'Firebase/Messaging', '~> 10.24'
    end
end
