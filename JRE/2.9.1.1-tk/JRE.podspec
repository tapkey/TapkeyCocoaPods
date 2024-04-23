Pod::Spec.new do |s|
  s.name = "JRE"
  s.version = "2.9.1.1-tk"
  s.summary = "Swift-compatible J2ObjC static framework pod"
  s.homepage = "http://j2objc.org"  
  s.author = "J2ObjC Team"
  s.license = { :type => "Apache-2.0", :file => "LICENSE" }
  s.platforms = {
    :ios => "12.0",
    :watchos => "6.2",
  }
  s.source = { :http => "https://cocoapods.tapkey.com/JRE/2.9.1.1-tk/JRE-2.9.1.1-tk.tar.bz2", :sha256 => "4d1b9868681d641d73bf221983e5b310589485a1bcfc751cebe253c794574ebd"}
  s.static_framework = true
  s.vendored_frameworks = 'JRE.xcframework'
  s.resource_bundles = {'JRE' => ['JRE.xcframework/ios-arm64/JRE.framework/PrivacyInfo.xcprivacy']}
  s.libraries = "iconv"
  s.preserve_paths = "third_party_licenses"
end
