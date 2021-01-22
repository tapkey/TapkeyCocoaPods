Pod::Spec.new do |s|
    s.name             = 'TapkeyMobileLib'
    s.module_name      = 'TapkeyMobileLibContainer'
    s.version          = '2.12.1.0'
    s.homepage         = 'https://platform.tapkey.com/'
    s.license          = { :type => 'Copyright (c) Tapkey GmbH', :file => 'TapkeyMobileLib_license' }
    s.author           = { 'Tapkey GmbH' => 'office@tapkey.com' }
    s.summary          = 'Tapkey AppSDK'
    s.source = { :http => 'https://cocoapods.tapkey.com/TapkeyMobileLib/2.12.1.0/TapkeyMobileLib-2.12.1.0.tar.bz2'}
    s.platform         = :ios
    s.ios.deployment_target = '9.0'
    s.static_framework = true
    s.ios.vendored_frameworks = ['TapkeyMobileLib.framework']
    s.resources = ['TapkeyMobileLib.framework/TapkeyMobileLib.bundle']
    s.dependency 'SocketRocket', '0.5.1'
    s.dependency 'J2ObjC/JreCore', '2.1.1-2'
    s.dependency 'J2ObjC/JreUtil', '2.1.1-2'
    s.dependency 'GsonJ2ObjC-Light', '2.3.1-2'
    s.source_files = 'src/*.swift'
end
