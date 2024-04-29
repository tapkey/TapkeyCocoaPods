Pod::Spec.new do |s|
  s.name = "J2ObjC-Transpiler"
  s.version = "2.9.3.0-tk"
  s.summary = "Swift-compatible J2ObjC static framework pod"
  s.homepage = "http://j2objc.org"
  s.author = "J2ObjC Team"
  s.license = { :type => "Apache-2.0", :file => "LICENSE" }
  s.platforms = {
    :ios => "12.0",
    :watchos => "6.2",
  }
  s.source = { :http => "https://cocoapods.tapkey.com/J2ObjC-Transpiler/2.9.3.0-tk/J2ObjC-Transpiler-2.9.3.0-tk.tar.bz2", :sha256 => "df793c9d41e320b8fdcea6653a46e9e518f0663208fc3f9c2488942a80b5853f"}
  s.preserve_paths = "*"
end
