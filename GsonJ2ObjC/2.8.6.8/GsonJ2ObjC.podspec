Pod::Spec.new do |s|
  s.name = 'GsonJ2ObjC'
  s.version = '2.8.6.8'
  s.summary = 'J2Objc transpiled gson library'
  s.homepage = 'https://github.com/google/gson'
  s.author = 'https://github.com/google/gson'
  s.license = { :type => 'Apache-2.0', :file => "LICENSE" }
  s.platforms = { 
    :ios => "12.0",
    :watchos => "6.2"
  }
  s.source = { :http => "https://cocoapods.tapkey.com/GsonJ2ObjC/2.8.6.8/GsonJ2ObjC-2.8.6.8.tar.bz2", :sha256 => "64329800d26a0dd1c9a879b724cc8e5eb4c6d5b753fd4462e571d8a7cfbdecc6"}
  s.dependency "JRE", "2.9.2.0-tk"
  s.static_framework = true
  s.vendored_frameworks = "Gson.xcframework"
  s.resource_bundles = {'Gson' => ['Gson.xcframework/ios-arm64/Gson.framework/PrivacyInfo.xcprivacy']}
end
