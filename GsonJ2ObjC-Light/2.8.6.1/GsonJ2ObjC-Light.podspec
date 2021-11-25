Pod::Spec.new do |s|
  s.name = "GsonJ2ObjC-Light"
  s.version = '2.8.6.1'
  s.summary = "J2Objc transpiled gson library"
  s.homepage = "https://github.com/google/gson"
  s.author = "https://github.com/google/gson"
  s.license = { :type => "Apache-2.0", :file => "LICENSE" }
  s.platforms = {
    :ios => "9.0",
    :watchos => "2.0",
  }
  s.source = { :http => "https://cocoapods.tapkey.com/GsonJ2ObjC-Light/2.8.6.1/GsonJ2ObjC-Light-2.8.6.1.tar.bz2", :sha256 => "a00169d8f1575a258cb64b26387b0e061fce5bf2b36dc39fc01581fce9b97d66"}
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
