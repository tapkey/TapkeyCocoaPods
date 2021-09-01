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
  s.source = { :http => "https://cocoapods.tapkey.com/GsonJ2ObjC/2.8.6-alpha2/Gson-2.8.6-alpha2.zip", :sha256 => "7c0d443c2449a09ef9da690482e79532fde1be23a5ce09de14fba8617c49f2b0"}
  s.dependency "JRE", "2.8.1-tk-alpha2"
  s.static_framework = true
  s.vendored_frameworks = "Gson.xcframework"
  xcconfig_entry = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "i386",
    "HEADER_SEARCH_PATHS" => "\"${PODS_XCFRAMEWORKS_BUILD_DIR}/#{s.name}/Gson.framework/Headers/\"",
  }
  s.xcconfig = xcconfig_entry
  s.pod_target_xcconfig = xcconfig_entry
end
