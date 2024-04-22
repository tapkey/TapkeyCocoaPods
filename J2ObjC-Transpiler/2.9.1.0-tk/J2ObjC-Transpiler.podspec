Pod::Spec.new do |s|
  s.name = "J2ObjC-Transpiler"
  s.version = "2.9.1.0-tk"
  s.summary = "Swift-compatible J2ObjC static framework pod"
  s.homepage = "http://j2objc.org"
  s.author = "J2ObjC Team"
  s.license = { :type => "Apache-2.0", :file => "LICENSE" }
  s.platforms = {
    :ios => "12.0",
    :watchos => "6.2",
  }
  s.source = { :http => "https://cocoapods.tapkey.com/J2ObjC-Transpiler/2.9.1.0-tk/J2ObjC-Transpiler-2.9.1.0-tk.tar.bz2", :sha256 => "dcf7d2b3a717bd25d04045a615618a1ba05515121f005d4ca311be110623497e"}
  s.preserve_paths = "*"
end
