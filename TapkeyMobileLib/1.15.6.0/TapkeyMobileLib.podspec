Pod::Spec.new do |s|
    s.name             = 'TapkeyMobileLib'
    s.version          = '1.15.6.0'
    s.homepage         = 'https://platform.tapkey.com/'
    s.license          = { :type => 'Copyright (c) Tapkey GmbH', :file => 'TapkeyMobileLib_license' }
    s.author           = { 'Tapkey GmbH' => 'office@tapkey.com' }
    s.summary          = 'Tapkey AppSDK'
    s.source = { :http => 'https://cocoapods.tapkey.com/TapkeyMobileLib/1.15.6.0/TapkeyMobileLib-1.15.6.0.tar.bz2'}
    s.platform         = :ios
    s.ios.deployment_target = '9.0'
    s.default_subspec = "TapkeyMobileLib"
    s.swift_version = '4.1'
    
    s.subspec 'TapkeyMobileLib' do |subspec|
        subspec.ios.vendored_frameworks = ['TapkeyMobileLib.framework']
        subspec.resources = ['TapkeyMobileLib.framework/TapkeyMobileLib.bundle']
        subspec.dependency 'SwiftWebSocket', '2.7.0'
        subspec.dependency 'J2ObjC/JreCore', '2.1.1'
        subspec.dependency 'J2ObjC/JreUtil', '2.1.1'
        subspec.dependency 'GsonJ2ObjC-Light', '2.3.1'
    end

    s.subspec 'Auth0Authentication' do |subspec|
        subspec.dependency "#{s.name}/TapkeyMobileLib"
        subspec.ios.vendored_frameworks = 'Auth0Authentication.framework'
        subspec.dependency 'Auth0', '1.12.0'
    end

    s.subspec 'TapkeyFCM' do |subspec|
        subspec.dependency "#{s.name}/TapkeyMobileLib"
        subspec.ios.vendored_frameworks = 'TapkeyFCM.framework'
        subspec.dependency 'Firebase/Messaging', '~>5.4'
        # fixed versions of dependencies
        subspec.dependency 'Firebase/Core', '~>5.4'
        subspec.dependency 'GoogleToolboxForMac','~>2.1'
    end

    s.subspec 'TapkeyGoogleAnalytics' do |subspec|
        subspec.dependency "#{s.name}/TapkeyMobileLib"
        subspec.ios.vendored_frameworks = 'TapkeyGoogleAnalytics.framework'
        # fixed versions of dependencies
        subspec.dependency 'Firebase/Core', '~>5.4'
        subspec.dependency 'GoogleToolboxForMac','~>2.1'
        subspec.dependency 'GoogleAnalytics', '~>3.17'
    end

    s.subspec 'TapkeyGoogleSignIn' do |subspec|
        subspec.dependency "#{s.name}/TapkeyMobileLib"
        subspec.ios.vendored_frameworks = 'TapkeyGoogleSignIn.framework'
        subspec.dependency 'GoogleSignIn', '~>4.3'
        subspec.dependency 'Firebase/Core', '~>5.4'
        subspec.dependency 'Firebase/Auth', '~>5.4'
        subspec.dependency 'GoogleToolboxForMac', '~>2.1'
    end

end
