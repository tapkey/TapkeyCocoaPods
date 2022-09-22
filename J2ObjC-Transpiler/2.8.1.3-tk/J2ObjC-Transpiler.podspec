Pod::Spec.new do |s|
  s.name = "J2ObjC-Transpiler"
  s.version = "2.8.1.3-tk"
  s.summary = "Swift-compatible J2ObjC static framework pod"
  s.homepage = "http://j2objc.org"
  s.author = "J2ObjC Team"
  s.license = { :type => "Apache-2.0", :file => "LICENSE" }
  s.platforms = {
    :ios => "11.0",
    :watchos => "6.2",
  }
  s.source = { :http => "https://cocoapods.tapkey.com/J2ObjC-Transpiler/2.8.1.3-tk/J2ObjC-Transpiler-2.8.1.3-tk.tar.bz2", :sha256 => "587b397620b2d82e98a0f075a785d6132ab304933acb1d324551d0e4b21bdbb9"}
  s.preserve_paths = "*"
end
