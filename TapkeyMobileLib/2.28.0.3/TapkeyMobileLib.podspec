Pod::Spec.new do |s|
    s.name             = 'TapkeyMobileLib'
    s.version = '2.28.0.3'
    s.homepage         = 'https://developers.tapkey.io/'
    s.license          = { :type => 'Copyright (c) Tapkey GmbH', :file => 'LICENSE' }
    s.author           = { 'Tapkey GmbH' => 'office@tapkey.com' }
    s.summary          = 'Tapkey AppSDK'
    s.source = { :http => "https://cocoapods.tapkey.com/TapkeyMobileLib/2.28.0.3/TapkeyMobileLib-2.28.0.3.tar.bz2", :sha256 => "200eae4f2c5108a98964583ce367ddfea6528dc257de8a7c1c5b4cb490bf2c0a"}
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
