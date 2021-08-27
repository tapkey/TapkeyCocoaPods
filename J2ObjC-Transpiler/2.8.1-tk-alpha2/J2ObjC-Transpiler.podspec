Pod::Spec.new do |s|
  s.name = "J2ObjC-Transpiler"
  s.version = "2.8.1-tk-alpha2"
  s.summary = "Swift-compatible J2ObjC static framework pod"
  s.homepage = "http://j2objc.org"
  s.author = "J2ObjC Team"
  s.license = { :type => "Apache-2.0", :file => "LICENSE" }
  s.platforms = {
    :ios => "9.0",
    :watchos => "2.0",
  }
  s.source = { :http => "https://cocoapods.tapkey.com/J2ObjC-Transpiler/2.8.1-tk-alpha2/J2ObjC-Transpiler-2.8.1-tk-alpha2.zip", :sha256 => "a2fec5e1a6e67185fd7d515d87975ba1104c5f95b4f6da8d80b7c0f2a9753c93"}
  s.preserve_paths = "*"
end
