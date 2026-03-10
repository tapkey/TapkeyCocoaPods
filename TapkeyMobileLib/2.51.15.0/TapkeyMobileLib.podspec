Pod::Spec.new do |s|
    s.name             = 'TapkeyMobileLib'
    s.version = '2.51.15.0'
    s.homepage         = 'https://developers.tapkey.io/'
    s.license          = { :type => 'Copyright (c) Tapkey GmbH', :file => 'LICENSE' }
    s.author           = { 'Tapkey GmbH' => 'office@tapkey.com' }
    s.summary          = 'Tapkey AppSDK'
    s.source = { :http => "https://cocoapods.tapkey.com/TapkeyMobileLib/2.51.15.0/TapkeyMobileLib-2.51.15.0.tar.bz2", :sha256 => "af57be72ce56bc9fbad38aa2146afa930e17d6cb9ffb9d7bf0116c9800f16c70"}
    s.platforms = { 
        :ios => "15.6",
        :watchos => "8.7"
    }
    s.static_framework = true
    s.swift_versions = '5.7'
    s.default_subspecs = 'Core'
    s.subspec 'Core' do |cs|
        cs.vendored_frameworks = ['TapkeyMobileLib.xcframework']
        cs.resources = ['TapkeyMobileLib.xcframework/ios-arm64/TapkeyMobileLib.framework/TapkeyMobileLib.bundle']
        cs.platforms = { 
            :ios => "15.6",
            :watchos => "8.7"
        }
        cs.dependency 'JRE', '2.9.3.0-tk'
        cs.dependency 'GsonJ2ObjC', '2.8.6.9'

    end
    s.subspec 'Fcm' do |cs|
        cs.vendored_frameworks = ['TapkeyFcm.xcframework']
        cs.resources = ['TapkeyFcm.xcframework/ios-arm64/TapkeyFcm.framework/TapkeyFcm.bundle']
        cs.platforms = { 
            :ios => "15.6",
            :watchos => "8.7"
        }
        cs.dependency 'TapkeyMobileLib/Core'
        cs.dependency 'Firebase/Messaging', '~> 10.24'
    end
end
