Pod::Spec.new do |s|
  s.name = "J2ObjC-Transpiler"
  s.version = "2.9.1.1-tk"
  s.summary = "Swift-compatible J2ObjC static framework pod"
  s.homepage = "http://j2objc.org"
  s.author = "J2ObjC Team"
  s.license = { :type => "Apache-2.0", :file => "LICENSE" }
  s.platforms = {
    :ios => "12.0",
    :watchos => "6.2",
  }
  s.source = { :http => "https://cocoapods.tapkey.com/J2ObjC-Transpiler/2.9.1.1-tk/J2ObjC-Transpiler-2.9.1.1-tk.tar.bz2", :sha256 => "3f1e60ff905c3c170bc45f505530e38d1dc28dcb829157d5f800673bcd33fc11"}
  s.preserve_paths = "*"
end
