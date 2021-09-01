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
  s.source = { :http => "https://cocoapods.tapkey.com/GsonJ2ObjC/2.8.6-alpha2/Gson-2.8.6-alpha2.zip", :sha256 => "e5a4181c7064b361be70c5812c2aeb72b29fcf03072379474eff8d1f0c543254"}
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
