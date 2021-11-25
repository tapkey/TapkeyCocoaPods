Pod::Spec.new do |s|
  s.name = "J2ObjC-Transpiler"
  s.version = "2.8.1.2-tk"
  s.summary = "Swift-compatible J2ObjC static framework pod"
  s.homepage = "http://j2objc.org"
  s.author = "J2ObjC Team"
  s.license = { :type => "Apache-2.0", :file => "LICENSE" }
  s.platforms = {
    :ios => "9.0",
    :watchos => "2.0",
  }
  s.source = { :http => "https://cocoapods.tapkey.com/J2ObjC-Transpiler/2.8.1.2-tk/J2ObjC-Transpiler-2.8.1.2-tk.tar.bz2", :sha256 => "f49277f19a8ad964b146f3c1dde35e91b1a212e6838473c24233703538112d52"}
  s.preserve_paths = "*"
end
