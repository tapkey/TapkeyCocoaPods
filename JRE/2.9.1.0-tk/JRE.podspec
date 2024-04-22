Pod::Spec.new do |s|
  s.name = "JRE"
  s.version = "2.9.1.0-tk"
  s.summary = "Swift-compatible J2ObjC static framework pod"
  s.homepage = "http://j2objc.org"  
  s.author = "J2ObjC Team"
  s.license = { :type => "Apache-2.0", :file => "LICENSE" }
  s.platforms = {
    :ios => "12.0",
    :watchos => "6.2",
  }
  s.source = { :http => "https://cocoapods.tapkey.com/JRE/2.9.1.0-tk/JRE-2.9.1.0-tk.tar.bz2", :sha256 => "49a1c06eb0fe15fb835a875e32869cc352bdc73405cbfc2dd83a45b2c99ce14b"}
  s.static_framework = true
  s.vendored_frameworks = 'JRE.xcframework'
  s.libraries = "iconv"
  s.preserve_paths = "third_party_licenses"
end
