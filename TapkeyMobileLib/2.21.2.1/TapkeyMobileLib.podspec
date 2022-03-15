Pod::Spec.new do |s|
    s.name             = 'TapkeyMobileLib'
    s.version = '2.21.2.1'
    s.homepage         = 'https://developers.tapkey.io/'
    s.license          = { :type => 'Copyright (c) Tapkey GmbH', :file => 'LICENSE' }
    s.author           = { 'Tapkey GmbH' => 'office@tapkey.com' }
    s.summary          = 'Tapkey AppSDK'
    s.source = { :http => "https://cocoapods.tapkey.com/TapkeyMobileLib/2.21.2.1/TapkeyMobileLib-2.21.2.1.tar.bz2", :sha256 => "d1fbf36b9c9542470ba4abcf3ca6a69bb61f4e595c540edadad6bfc09e479cc5"}
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
    s.subspec 'FCM' do |cs|
        cs.vendored_frameworks = ['TapkeyFcm.xcframework']
        cs.platforms = { 
            :ios => "10.0",
            :watchos => "6.2"
        }
        cs.dependency 'TapkeyMobileLib/Core'
        cs.dependency 'Firebase/Messaging', '~> 6.34'
    end
end
