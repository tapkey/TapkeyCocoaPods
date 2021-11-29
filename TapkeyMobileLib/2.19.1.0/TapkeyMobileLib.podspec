Pod::Spec.new do |s|
    s.name             = 'TapkeyMobileLib'
    s.version = '2.19.1.0'
    s.homepage         = 'https://developers.tapkey.io/'
    s.license          = { :type => 'Copyright (c) Tapkey GmbH', :file => 'LICENSE' }
    s.author           = { 'Tapkey GmbH' => 'office@tapkey.com' }
    s.summary          = 'Tapkey AppSDK'
    s.source = { :http => "https://cocoapods.tapkey.com/TapkeyMobileLib/2.19.1.0/TapkeyMobileLib-2.19.1.0.tar.bz2", :sha256 => "915c7e8728a94fb7925afd6cc30c915ad22ffaa3bc533d507701178509bf3409"}
    s.platforms = { 
        :ios => "9.0",
        :watchos => "6.2"
    }
    s.static_framework = true
    s.vendored_frameworks = ['TapkeyMobileLib.xcframework']
    s.resources = ['TapkeyMobileLib.xcframework/ios-arm64_armv7/TapkeyMobileLib.framework/TapkeyMobileLib.bundle']
    s.ios.dependency 'SocketRocket', '0.5.1'
    s.dependency 'JRE-Slim', '2.8.1.2-tk'
    s.dependency 'GsonJ2ObjC-Light', '2.8.6.2'
    s.swift_versions = '5.5'
    s.pod_target_xcconfig = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
    }
    s.user_target_xcconfig = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
    }
end
