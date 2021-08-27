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
  s.source = { :http => "https://cocoapods.tapkey.com/JRE/2.8.1-tk-alpha2/JRE-2.8.1-tk-alpha2.zip", :sha256 => "3eb07784e0ab00e0149a6f82482613860b23a6791eb7143167e7c2355df9ac1f"}
  s.vendored_frameworks = 'JRE.xcframework'
  s.libraries = "z", "iconv"
  xcconfig_entry = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "i386",
    "SWIFT_INCLUDE_PATHS": "${PODS_XCFRAMEWORKS_BUILD_DIR}/#{s.name}/Headers"
  }
  s.user_target_xcconfig = xcconfig_entry
  s.pod_target_xcconfig = xcconfig_entry
end
