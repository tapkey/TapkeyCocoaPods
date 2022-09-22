Pod::Spec.new do |s|
  s.name = "JRE-Slim"
  s.version = "2.8.1.3-tk"
  s.summary = "Swift-compatible J2ObjC static framework pod"
  s.homepage = "http://j2objc.org"  
  s.author = "J2ObjC Team"
  s.license = { :type => "Apache-2.0", :file => "LICENSE" }
  s.platforms = {
    :ios => "11.0",
    :watchos => "6.2",
  }
  s.source = { :http => "https://cocoapods.tapkey.com/JRE-Slim/2.8.1.3-tk/JRE-Slim-2.8.1.3-tk.tar.bz2", :sha256 => "ef21f1fec402ec5fa829501d4792ebd6707f4d79c3339beb0f0376d6c07bec10"}
  s.static_framework = true
  s.vendored_frameworks = 'JRE-Slim.xcframework'
  s.libraries = "z", "iconv"
  s.preserve_paths = "third_party_licenses"
  xcconfig_entry = {
    "SWIFT_INCLUDE_PATHS": "${PODS_XCFRAMEWORKS_BUILD_DIR}/#{s.name}/Headers"
  }
  s.user_target_xcconfig = xcconfig_entry
  s.pod_target_xcconfig = xcconfig_entry
end
