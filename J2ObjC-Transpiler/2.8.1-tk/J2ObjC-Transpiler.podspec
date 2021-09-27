Pod::Spec.new do |s|
  s.name = "J2ObjC-Transpiler"
  s.version = "2.8.1-tk"
  s.summary = "Swift-compatible J2ObjC static framework pod"
  s.homepage = "http://j2objc.org"
  s.author = "J2ObjC Team"
  s.license = { :type => "Apache-2.0", :file => "LICENSE" }
  s.platforms = {
    :ios => "9.0",
    :watchos => "2.0",
  }
  s.source = { :http => "https://cocoapods.tapkey.com/J2ObjC-Transpiler/2.8.1-tk/J2ObjC-Transpiler-2.8.1-tk.tar.bz2", :sha256 => "764edc31344858bb30acdeb4e30f2efa40e512cf687131d0318a70025aa3e0da"}
  s.preserve_paths = "*"
end
