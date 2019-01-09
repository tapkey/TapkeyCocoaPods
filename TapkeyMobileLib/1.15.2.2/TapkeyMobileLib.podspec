Pod::Spec.new do |s|
    s.name             = 'TapkeyMobileLib'
    s.version          = '1.15.2.2'
    s.homepage         = 'https://platform.tapkey.com/'
    s.license          = { :type => 'Copyright (c) Tapkey GmbH', :file => 'TapkeyMobileLib_license' }
    s.author           = { 'Tapkey GmbH' => 'office@tapkey.com' }
    s.summary          = 'Tapkey AppSDK'
    s.source = { :http => 'https://tapkeyartifacts.blob.core.windows.net/tapkeyiosmobilelib/1.15.2.2/TapkeyMobileLib-1.15.2.2.tar.bz2'}
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

    s.subspec 'TapkeyGCM' do |subspec|
        subspec.dependency "#{s.name}/TapkeyMobileLib"
        subspec.ios.vendored_frameworks = 'TapkeyGCM.framework'
        subspec.dependency 'Google/CloudMessaging', '2.0.4'
        # fixed versions of dependencies
        subspec.dependency 'GGLInstanceID', '1.2.1'
        subspec.dependency 'Google/Core', '2.0.4'
        subspec.dependency 'GoogleInterchangeUtilities', '1.2.0'
        subspec.dependency 'GoogleNetworkingUtilities', '1.2.0'
        subspec.dependency 'GoogleSymbolUtilities', '1.1.0'
        subspec.dependency 'GoogleUtilities', '1.3.0'
        subspec.dependency 'GoogleCloudMessaging', '1.2.0'
        subspec.dependency 'GoogleIPhoneUtilities', '1.2.1'
    end

    s.subspec 'TapkeyGoogleAnalytics' do |subspec|
        subspec.dependency "#{s.name}/TapkeyMobileLib"
        subspec.ios.vendored_frameworks = 'TapkeyGoogleAnalytics.framework'
        subspec.dependency 'Google/Analytics', '2.0.4'
        # fixed versions of dependencies
        subspec.dependency 'GoogleAnalytics', '3.17.0'
        subspec.dependency 'Google/Core', '2.0.4'
        subspec.dependency 'GoogleInterchangeUtilities', '1.2.0'
        subspec.dependency 'GoogleNetworkingUtilities', '1.2.0'
        subspec.dependency 'GoogleSymbolUtilities', '1.1.0'
        subspec.dependency 'GoogleUtilities', '1.3.0'
    end

    s.subspec 'TapkeyGoogleSignIn' do |subspec|
        subspec.dependency "#{s.name}/TapkeyMobileLib"
        subspec.ios.vendored_frameworks = 'TapkeyGoogleSignIn.framework'
        subspec.dependency 'Google/SignIn', '2.0.4'
          # fixed versions of dependencies
        subspec.dependency 'GoogleSignIn', '3.0.0'
        subspec.dependency 'GoogleAppUtilities', '1.1.0'
        subspec.dependency 'GoogleAuthUtilities', '2.0.0'
        subspec.dependency 'Google/Core', '2.0.4'
        subspec.dependency 'GoogleInterchangeUtilities', '1.2.0'
        subspec.dependency 'GoogleNetworkingUtilities', '1.2.0'
        subspec.dependency 'GoogleSymbolUtilities', '1.1.0'
        subspec.dependency 'GoogleUtilities', '1.3.0'
    end

end
