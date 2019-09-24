Pod::Spec.new do |s|
    s.name             = 'TapkeyMobileLib'
    s.module_name      = 'TapkeyMobileLibContainer'
    s.version          = '1.15.21.0'
    s.homepage         = 'https://platform.tapkey.com/'
    s.license          = { :type => 'Copyright (c) Tapkey GmbH', :file => 'TapkeyMobileLib_license' }
    s.author           = { 'Tapkey GmbH' => 'office@tapkey.com' }
    s.summary          = 'Tapkey AppSDK'
    s.source = { :http => 'https://cocoapods.tapkey.com/TapkeyMobileLib/1.15.21.0/TapkeyMobileLib-1.15.21.0.tar.bz2'}
    s.platform         = :ios
    s.ios.deployment_target = '9.0'
    s.swift_version = '5.0'
    s.static_framework = true
    s.ios.vendored_frameworks = ['TapkeyMobileLib.framework']
    s.resources = ['TapkeyMobileLib.framework/TapkeyMobileLib.bundle']
    s.dependency 'SocketRocket', '0.5.1'
    s.dependency 'J2ObjC/JreCore', '2.1.1'
    s.dependency 'J2ObjC/JreUtil', '2.1.1'
    s.dependency 'GsonJ2ObjC-Light', '2.3.1'
    s.source_files = 'src/*.swift'
end
