Pod::Spec.new do |s|
    s.name             = 'TapkeyMobileLib'
    s.version = '2.18.0.1'
    s.homepage         = 'https://developers.tapkey.io/'
    s.license          = { :type => 'Copyright (c) Tapkey GmbH', :file => 'LICENSE' }
    s.author           = { 'Tapkey GmbH' => 'office@tapkey.com' }
    s.summary          = 'Tapkey AppSDK'
    s.source = { :http => "https://cocoapods.tapkey.com/TapkeyMobileLib/2.18.0.1/TapkeyMobileLib-2.18.0.1.tar.bz2", :sha256 => "7d106ad1050796d408a27b02688c462a1e534bbb432a2e5ebb201695eaed7602"}
    s.platforms = { 
        :ios => "9.0",
        :watchos => "6.2"
    }
    s.static_framework = true
    s.vendored_frameworks = ['TapkeyMobileLib.xcframework']
    s.resources = ['TapkeyMobileLib.xcframework/ios-arm64_armv7/TapkeyMobileLib.framework/TapkeyMobileLib.bundle']
    s.ios.dependency 'SocketRocket', '0.5.1'
    s.dependency 'JRE-Slim', '2.8.1-tk'
    s.dependency 'GsonJ2ObjC-Light', '2.8.6'
    s.swift_versions = '5.5'
    s.pod_target_xcconfig = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
    }
    s.user_target_xcconfig = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
    }
end
