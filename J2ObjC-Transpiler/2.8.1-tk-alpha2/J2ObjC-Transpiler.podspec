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
  s.source = { :http => "https://cocoapods.tapkey.com/J2ObjC-Transpiler/2.8.1-tk-alpha2/J2ObjC-Transpiler-2.8.1-tk-alpha2.zip", :sha256 => "d8bf0d4cd47c7bd476630ad22bd3821a16a314e772645413b01ff8875816bf9f"}
  s.preserve_paths = "*"
end
