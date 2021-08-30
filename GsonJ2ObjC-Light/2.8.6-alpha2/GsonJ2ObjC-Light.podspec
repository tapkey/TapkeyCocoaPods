Pod::Spec.new do |s|
  s.name = "GsonJ2ObjC-Light"
  s.version = '2.8.6-alpha2'
  s.summary = "J2Objc transpiled gson library"
  s.homepage = "https://github.com/google/gson"
  s.author = "https://github.com/google/gson"
  s.license = { :type => "Apache-2.0", :file => "LICENSE" }
  s.platforms = {
    :ios => "9.0",
    :watchos => "2.0",
  }
  s.source = { :http => "https://cocoapods.tapkey.com/GsonJ2ObjC-Light/2.8.6-alpha2/Gson-2.8.6-alpha2.zip", :sha256 => "3e77752a5ed6ed28130b01663887357cf2de577be22a0a456b22c9592e62c99f"}
  s.dependency "JRE-Slim", "2.8.1-tk-alpha2"
  s.static_framework = true
  s.vendored_frameworks = "Gson-Light.xcframework"
  xcconfig_entry = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "i386",
    "HEADER_SEARCH_PATHS" => "\"${PODS_XCFRAMEWORKS_BUILD_DIR}/Gson-Light/Gson-Light.framework/Headers/\"",
  }
  s.xcconfig = xcconfig_entry
  s.pod_target_xcconfig = xcconfig_entry
end
