Pod::Spec.new do |s|
  s.name = 'GsonJ2ObjC'
  s.version = '2.8.6.7'
  s.summary = 'J2Objc transpiled gson library'
  s.homepage = 'https://github.com/google/gson'
  s.author = 'https://github.com/google/gson'
  s.license = { :type => 'Apache-2.0', :file => "LICENSE" }
  s.platforms = { 
    :ios => "12.0",
    :watchos => "6.2"
  }
  s.source = { :http => "https://cocoapods.tapkey.com/GsonJ2ObjC/2.8.6.7/GsonJ2ObjC-2.8.6.7.tar.bz2", :sha256 => "d6ba89ac9dbaf2558d5fd5ebc5b50baab843ef6d3bdbbcb731bf408b643969e5"}
  s.dependency "JRE", "2.9.1.1-tk"
  s.static_framework = true
  s.vendored_frameworks = "Gson.xcframework"
  s.resource_bundles = {'Gson' => ['Gson.xcframework/ios-arm64/Gson.framework/PrivacyInfo.xcprivacy']}
end
