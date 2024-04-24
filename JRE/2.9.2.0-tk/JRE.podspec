Pod::Spec.new do |s|
  s.name = "JRE"
  s.version = "2.9.2.0-tk"
  s.summary = "Swift-compatible J2ObjC static framework pod"
  s.homepage = "http://j2objc.org"  
  s.author = "J2ObjC Team"
  s.license = { :type => "Apache-2.0", :file => "LICENSE" }
  s.platforms = {
    :ios => "12.0",
    :watchos => "6.2",
  }
  s.source = { :http => "https://cocoapods.tapkey.com/JRE/2.9.2.0-tk/JRE-2.9.2.0-tk.tar.bz2", :sha256 => "590d4113cb0bf2bf14960fa8270faa12d16888c12c02be8a767074a1fb5cb917"}
  s.static_framework = true
  s.vendored_frameworks = 'JRE.xcframework'
  s.resource_bundles = {'JRE' => ['JRE.xcframework/ios-arm64/JRE.framework/PrivacyInfo.xcprivacy']}
  s.libraries = "iconv"
  s.preserve_paths = "third_party_licenses"
end
