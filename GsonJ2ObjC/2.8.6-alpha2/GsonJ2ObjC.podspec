Pod::Spec.new do |s|
  s.name = 'GsonJ2ObjC'
  s.version = '2.8.6-alpha2'
  s.summary = 'J2Objc transpiled gson library'
  s.homepage = 'https://github.com/google/gson'
  s.author = 'https://github.com/google/gson'
  s.license = { :type => 'Apache-2.0', :file => "LICENSE" }
  s.platforms = { 
    :ios => "9.0",
    :watchos => "2.0"
  }
  s.source = { :http => "https://cocoapods.tapkey.com/GsonJ2ObjC/2.8.6-alpha2/Gson-2.8.6-alpha2.zip", :sha256 => "5f51947b9eac5f563fe06673c7a431c8e310cd72a6bfc30e1adc003c4aa294d6"}
  s.dependency "JRE", "2.8.1-tk-alpha2"
  s.static_framework = true
  s.vendored_frameworks = "Gson.xcframework"
  xcconfig_entry = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "i386",
    "HEADER_SEARCH_PATHS" => "\"${PODS_XCFRAMEWORKS_BUILD_DIR}/Gson/Gson.framework/Headers/\"",
  }
  s.xcconfig = xcconfig_entry
  s.pod_target_xcconfig = xcconfig_entry
end
