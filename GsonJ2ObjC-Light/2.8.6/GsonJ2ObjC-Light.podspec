Pod::Spec.new do |s|
  s.name = "GsonJ2ObjC-Light"
  s.version = '2.8.6'
  s.summary = "J2Objc transpiled gson library"
  s.homepage = "https://github.com/google/gson"
  s.author = "https://github.com/google/gson"
  s.license = { :type => "Apache-2.0", :file => "LICENSE" }
  s.platforms = {
    :ios => "9.0",
    :watchos => "2.0",
  }
  s.source = { :http => "https://cocoapods.tapkey.com/GsonJ2ObjC-Light/2.8.6/GsonJ2ObjC-Light-2.8.6.tar.bz2", :sha256 => "063223d0e087d2500c9c090dc3e3f6f2313fc68f94227146b302e208ca7b7e7b"}
  s.dependency "JRE-Slim", "2.8.1-tk"
  s.static_framework = true
  s.vendored_frameworks = "Gson.xcframework", "JREStub.xcframework"
  xcconfig_entry = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "i386",
    "HEADER_SEARCH_PATHS" => "\"${PODS_XCFRAMEWORKS_BUILD_DIR}/#{s.name}/Gson.framework/Headers/\"",
  }
  s.xcconfig = xcconfig_entry
  s.pod_target_xcconfig = xcconfig_entry
end
