Pod::Spec.new do |s|
  s.name = "JRE"
  s.version = "2.8.1-tk-alpha2"
  s.summary = "Swift-compatible J2ObjC static framework pod"
  s.homepage = "http://j2objc.org"  
  s.author = "J2ObjC Team"
  s.license = { :type => "Apache-2.0", :file => "LICENSE" }
  s.platforms = {
    :ios => "9.0",
    :watchos => "2.0",
  }
  s.source = { :http => "https://cocoapods.tapkey.com/JRE/2.8.1-tk-alpha2/JRE-2.8.1-tk-alpha2.zip", :sha256 => "ee55ce7c52b590a8bcffcaecfb786ec56d86e981a7bb0c214179b6fc11b926ec"}
  s.vendored_frameworks = 'JRE.xcframework'
  s.libraries = "z", "iconv"
  s.preserve_paths = "third_party_licenses"
  xcconfig_entry = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "i386",
    "SWIFT_INCLUDE_PATHS": "${PODS_ROOT}/#{s.name}/JRE.xcframework/Headers",
    "HEADER_SEARCH_PATHS": "${PODS_ROOT}/#{s.name}/JRE.xcframework/Headers"
  }
  s.user_target_xcconfig = xcconfig_entry
  s.pod_target_xcconfig = xcconfig_entry
end
