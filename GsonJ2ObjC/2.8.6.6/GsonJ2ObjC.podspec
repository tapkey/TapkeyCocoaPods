Pod::Spec.new do |s|
  s.name = 'GsonJ2ObjC'
  s.version = '2.8.6.6'
  s.summary = 'J2Objc transpiled gson library'
  s.homepage = 'https://github.com/google/gson'
  s.author = 'https://github.com/google/gson'
  s.license = { :type => 'Apache-2.0', :file => "LICENSE" }
  s.platforms = { 
    :ios => "12.0",
    :watchos => "6.2"
  }
  s.source = { :http => "https://cocoapods.tapkey.com/GsonJ2ObjC/2.8.6.6/GsonJ2ObjC-2.8.6.6.tar.bz2", :sha256 => "149785768d54b09990c719d87e16d1af7d4c72b19a6df590f62bb66fd422fc37"}
  s.dependency "JRE", "2.9.1.0-tk"
  s.static_framework = true
  s.vendored_frameworks = "Gson.xcframework"
end
