Pod::Spec.new do |s|
    s.name             = 'TapkeyMobileLib'
    s.version          = '1.15.9.0'
    s.homepage         = 'https://platform.tapkey.com/'
    s.license          = { :type => 'Copyright (c) Tapkey GmbH', :file => 'TapkeyMobileLib_license' }
    s.author           = { 'Tapkey GmbH' => 'office@tapkey.com' }
    s.summary          = 'Tapkey AppSDK'
    s.source = { :http => 'https://cocoapods.tapkey.com/TapkeyMobileLib/1.15.9.0/TapkeyMobileLib-1.15.9.0.tar.bz2'}
    s.platform         = :ios
    s.ios.deployment_target = '9.0'
    s.swift_version = '4.1'
    s.ios.vendored_frameworks = ['TapkeyMobileLib.framework']
    s.resources = ['TapkeyMobileLib.framework/TapkeyMobileLib.bundle']
    s.dependency 'SwiftWebSocket', '2.7.0'
    s.dependency 'J2ObjC/JreCore', '2.1.1'
    s.dependency 'J2ObjC/JreUtil', '2.1.1'
    s.dependency 'GsonJ2ObjC-Light', '2.3.1'
end
