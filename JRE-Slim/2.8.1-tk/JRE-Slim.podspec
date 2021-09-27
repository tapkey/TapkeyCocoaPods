Pod::Spec.new do |s|
  s.name = "JRE-Slim"
  s.version = "2.8.1-tk"
  s.summary = "Swift-compatible J2ObjC static framework pod"
  s.homepage = "http://j2objc.org"  
  s.author = "J2ObjC Team"
  s.license = { :type => "Apache-2.0", :file => "LICENSE" }
  s.platforms = {
    :ios => "9.0",
    :watchos => "2.0",
  }
  s.source = { :http => "https://cocoapods.tapkey.com/JRE-Slim/2.8.1-tk/JRE-Slim-2.8.1-tk.tar.bz2", :sha256 => "cdea8d7faa44fc4dd55fd439e4ac0b1a30134aca0d224d2dfba8a089d4cdc2cf"}
  s.vendored_frameworks = 'JRE-Slim.xcframework'
  s.libraries = "z", "iconv"
  s.preserve_paths = "third_party_licenses"
  xcconfig_entry = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "i386",
    "SWIFT_INCLUDE_PATHS": "${PODS_XCFRAMEWORKS_BUILD_DIR}/#{s.name}/Headers"
  }
  s.user_target_xcconfig = xcconfig_entry
  s.pod_target_xcconfig = xcconfig_entry
end
