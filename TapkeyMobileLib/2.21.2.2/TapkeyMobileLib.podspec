Pod::Spec.new do |s|
    s.name             = 'TapkeyMobileLib'
    s.version = '2.21.2.2'
    s.homepage         = 'https://developers.tapkey.io/'
    s.license          = { :type => 'Copyright (c) Tapkey GmbH', :file => 'LICENSE' }
    s.author           = { 'Tapkey GmbH' => 'office@tapkey.com' }
    s.summary          = 'Tapkey AppSDK'
    s.source = { :http => "https://cocoapods.tapkey.com/TapkeyMobileLib/2.21.2.2/TapkeyMobileLib-2.21.2.2.tar.bz2", :sha256 => "6148b849916aed71dd58ff01219a55f8a0bfefaa548ef0ccb0c230ae17bbdaf6"}
    s.platforms = { 
        :ios => "10.0",
        :watchos => "6.2"
    }
    s.static_framework = true
    s.swift_versions = '5.5'
    s.pod_target_xcconfig = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
    }
    s.user_target_xcconfig = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
    }
    s.default_subspecs = 'Core'
    s.subspec 'Core' do |cs|
        cs.vendored_frameworks = ['TapkeyMobileLib.xcframework']
        cs.resources = ['TapkeyMobileLib.xcframework/ios-arm64_armv7/TapkeyMobileLib.framework/TapkeyMobileLib.bundle']
        cs.platforms = { 
            :ios => "10.0",
            :watchos => "6.2"
        }
        cs.ios.dependency 'SocketRocket', '0.5.1'
        cs.dependency 'JRE-Slim', '2.8.1.2-tk'
        cs.dependency 'GsonJ2ObjC-Light', '2.8.6.2'

    end
    s.subspec 'Fcm' do |cs|
        cs.vendored_frameworks = ['TapkeyFcm.xcframework']
        cs.platforms = { 
            :ios => "10.0",
            :watchos => "6.2"
        }
        cs.dependency 'TapkeyMobileLib/Core'
        cs.dependency 'Firebase/Messaging', '~> 6.34'
    end
end
