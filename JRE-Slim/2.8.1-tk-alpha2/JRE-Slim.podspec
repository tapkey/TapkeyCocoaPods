Pod::Spec.new do |s|
  s.name = "JRE-Slim"
  s.version = "2.8.1-tk-alpha2"
  s.summary = "Swift-compatible J2ObjC static framework pod"
  s.homepage = "http://j2objc.org"  
  s.author = "J2ObjC Team"
  s.license = { :type => "Apache-2.0", :file => "LICENSE" }
  s.platforms = {
    :ios => "9.0",
    :watchos => "2.0",
  }
  s.source = { :http => "https://cocoapods.tapkey.com/JRE-Slim/2.8.1-tk-alpha2/JRE-Slim-2.8.1-tk-alpha2.zip", :sha256 => "a72b91c489a6d0533a5cea20a453c2ad70616e97db9173c1179b77c383186e59"}
  s.vendored_frameworks = 'JRE-Slim.xcframework'
  s.libraries = "z", "iconv"
  xcconfig_entry = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "i386",
    "SWIFT_INCLUDE_PATHS": "${PODS_XCFRAMEWORKS_BUILD_DIR}/#{s.name}/Headers"
  }
  s.user_target_xcconfig = xcconfig_entry
  s.pod_target_xcconfig = xcconfig_entry
end
