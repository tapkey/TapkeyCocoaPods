Pod::Spec.new do |s|

  s.name = 'GsonJ2ObjC-Light'
  s.version = '2.3.1-RC1'
  s.summary = 'J2Objc transpiled gson library'
  s.homepage = 'https://github.com/google/gson'

  s.author = 'https://github.com/google/gson'
  s.license = { :type => 'Apache-2.0', :file => "LICENSE" }

  s.platform = :ios

  s.source = { :http => 'https://tapkeyartifacts.blob.core.windows.net/gsonj2objc/2.3.1-RC1/GsonJ2ObjC-2.3.1-RC1.zip'}
  s.ios.deployment_target = '9.0'

  podPath = "${PODS_ROOT}/#{s.name}"

  s.dependency "J2ObjC/JreCore", '2.1.1-RC1'
  s.vendored_frameworks = "Gson.framework"
  s.vendored_libraries = ["libJreStub.a"]

  xcconfig_entry = {
    'HEADER_SEARCH_PATHS' => "\"#{podPath}/Gson.framework/Headers\"",
  }
  s.xcconfig = xcconfig_entry
  s.pod_target_xcconfig = xcconfig_entry

end
