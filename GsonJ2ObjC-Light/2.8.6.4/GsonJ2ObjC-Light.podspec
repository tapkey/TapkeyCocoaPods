Pod::Spec.new do |s|
  s.name = "GsonJ2ObjC-Light"
  s.version = '2.8.6.4'
  s.summary = "J2Objc transpiled gson library"
  s.homepage = "https://github.com/google/gson"
  s.author = "https://github.com/google/gson"
  s.license = { :type => "Apache-2.0", :file => "LICENSE" }
  s.platforms = {
    :ios => "11.0",
    :watchos => "6.2",
  }
  s.source = { :http => "https://cocoapods.tapkey.com/GsonJ2ObjC-Light/2.8.6.4/GsonJ2ObjC-Light-2.8.6.4.tar.bz2", :sha256 => "3c6bb48109d5472532a5a17dad56068388e52e78c9b9ab4fb5c3d3ff415cce20"}
  s.dependency "JRE-Slim", "2.8.1.3-tk"
  s.static_framework = true
  s.vendored_frameworks = "Gson.xcframework", "JREStub.xcframework"
  xcconfig_entry = {
    "HEADER_SEARCH_PATHS" => "\"${PODS_XCFRAMEWORKS_BUILD_DIR}/#{s.name}/Gson.framework/Headers/\"",
  }
  s.xcconfig = xcconfig_entry
  s.pod_target_xcconfig = xcconfig_entry
end
