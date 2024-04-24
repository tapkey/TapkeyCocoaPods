Pod::Spec.new do |s|
  s.name = "J2ObjC-Transpiler"
  s.version = "2.9.2.0-tk"
  s.summary = "Swift-compatible J2ObjC static framework pod"
  s.homepage = "http://j2objc.org"
  s.author = "J2ObjC Team"
  s.license = { :type => "Apache-2.0", :file => "LICENSE" }
  s.platforms = {
    :ios => "12.0",
    :watchos => "6.2",
  }
  s.source = { :http => "https://cocoapods.tapkey.com/J2ObjC-Transpiler/2.9.2.0-tk/J2ObjC-Transpiler-2.9.2.0-tk.tar.bz2", :sha256 => "00e63d04dd672ad9e3810f003e0862cb119d2a0b9baf253b8ca988cbe5a0612c"}
  s.preserve_paths = "*"
end
