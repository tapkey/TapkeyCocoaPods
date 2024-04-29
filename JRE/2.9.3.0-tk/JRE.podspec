Pod::Spec.new do |s|
  s.name = "JRE"
  s.version = "2.9.3.0-tk"
  s.summary = "Swift-compatible J2ObjC static framework pod"
  s.homepage = "http://j2objc.org"  
  s.author = "J2ObjC Team"
  s.license = { :type => "Apache-2.0", :file => "LICENSE" }
  s.platforms = {
    :ios => "12.0",
    :watchos => "6.2",
  }
  s.source = { :http => "https://cocoapods.tapkey.com/JRE/2.9.3.0-tk/JRE-2.9.3.0-tk.tar.bz2", :sha256 => "36318e36a2bdf8a2baacff3a1b6201871bf521b0723c2ce8d67f5a88762ef266"}
  s.static_framework = true
  s.vendored_frameworks = 'JRE.xcframework'
  s.resource_bundles = {'JRE' => ['JRE.xcframework/ios-arm64/JRE.framework/PrivacyInfo.xcprivacy']}
  s.libraries = "iconv"
  s.preserve_paths = "third_party_licenses"
end
