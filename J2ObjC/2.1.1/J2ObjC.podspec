Pod::Spec.new do |s|

  s.name = 'J2ObjC'
  s.version = '2.1.1'
  s.summary = 'Swift-compatible J2ObjC static framework pod'
  s.homepage = 'http://j2objc.org'

  j2ObjcVersion = "2.1.1"
  distPath = "j2objc-#{j2ObjcVersion}"

  s.author = 'J2ObjC Team'
  s.license = { :type => 'Apache-2.0', :file => "#{distPath}/LICENSE" }

  s.platform = :ios

  s.prepare_command = <<-CMD 
    ln -s #{distPath} current 
  CMD

  s.source = { :http => "https://github.com/google/j2objc/releases/download/#{j2ObjcVersion}/j2objc-#{j2ObjcVersion}.zip"  }
  s.ios.deployment_target = '9.0'
  podPath = "${PODS_ROOT}/#{s.name}"

  libPath = "#{distPath}/lib"
  frameworkPath = "#{distPath}/frameworks"

  s.subspec 'AndroidUtil' do |subspec|
    subspec.dependency "#{s.name}/JreCore"
    subspec.dependency "#{s.name}/JreNet"
    subspec.vendored_libraries = "#{libPath}/libandroid_util.a"
  end

  s.subspec 'Guava' do |subspec|
    subspec.dependency "#{s.name}/JreCore"
    subspec.dependency "#{s.name}/JreNet"
    subspec.dependency "#{s.name}/JreUtil"
    subspec.dependency "#{s.name}/JreSecurity"
    subspec.dependency "#{s.name}/JreConcurrent"
    subspec.dependency "#{s.name}/JreZip"
    subspec.dependency "#{s.name}/JSR305"
    subspec.dependency "#{s.name}/JreChannels"
    subspec.dependency "#{s.name}/JreIo"
    subspec.vendored_frameworks = "#{frameworkPath}/Guava.framework"
    xcconfig_entry = {
      'HEADER_SEARCH_PATHS' => "\"#{podPath}/#{frameworkPath}/Guava.framework/Headers/\"",
    }
    subspec.xcconfig = xcconfig_entry
    subspec.pod_target_xcconfig = xcconfig_entry
  end

  s.subspec 'J2OBJC' do |subspec|
    subspec.dependency "#{s.name}/JreCore"
    subspec.preserve_paths = "current", "#{distPath}/j2objc*", "#{distPath}/lib", "#{distPath}/cycle_finder", "#{distPath}/man"
  end

  s.subspec 'JavaxInject' do |subspec|
    subspec.vendored_frameworks = "#{frameworkPath}/JavaxInject.framework"
    subspec.dependency "#{s.name}/JreCore"
    xcconfig_entry = {
      'HEADER_SEARCH_PATHS' => "\"#{podPath}/#{frameworkPath}/JavaxInject.framework/Headers/\"",
    }
    subspec.xcconfig = xcconfig_entry
    subspec.pod_target_xcconfig = xcconfig_entry
  end

  s.subspec 'JreBeans' do |subspec|
    subspec.dependency "#{s.name}/JreCore"
    subspec.dependency "#{s.name}/JreUtil"
    subspec.vendored_libraries = "#{libPath}/libjre_beans.a"
  end
  s.subspec 'JreChannels' do |subspec|
    subspec.dependency "#{s.name}/JreCore"
    subspec.dependency "#{s.name}/JreNet"
    subspec.dependency "#{s.name}/JreSecurity"
    subspec.dependency "#{s.name}/JreUtil"
    subspec.vendored_libraries = "#{libPath}/libjre_channels.a"
  end

  s.subspec 'JreConcurrent' do |subspec|
    subspec.dependency "#{s.name}/JreCore"
    subspec.dependency "#{s.name}/JreUtil"
    subspec.vendored_libraries = "#{libPath}/libjre_concurrent.a"
  end

  s.subspec 'JreCore' do |subspec|
    subspec.ios.framework = 'UIKit'
    subspec.libraries = 'z', 'iconv'
    subspec.vendored_libraries = "#{libPath}/libjre_core.a"
    subspec.preserve_paths = "#{distPath}/third_party_licenses", "#{frameworkPath}/JRE.framework/Versions/A/Headers"
    
    xcconfig_entry = {
      'HEADER_SEARCH_PATHS' => "\"#{podPath}/#{frameworkPath}/JRE.framework/Versions/A/Headers\"",
    }

    subspec.xcconfig = xcconfig_entry
    subspec.pod_target_xcconfig = xcconfig_entry
  end

  s.subspec 'JreIo' do |subspec|
    subspec.dependency "#{s.name}/JreCore"
    subspec.vendored_libraries = "#{libPath}/libjre_io.a"
  end

  s.subspec 'JreNet' do |subspec|
    subspec.dependency "#{s.name}/JreCore"
    subspec.vendored_libraries = "#{libPath}/libjre_net.a"
  end

  s.subspec 'JreSecurity' do |subspec|
    subspec.dependency "#{s.name}/JreCore"
    subspec.dependency "#{s.name}/JreNet"
    subspec.frameworks = 'Security'
    subspec.vendored_libraries = "#{libPath}/libjre_security.a"
  end
  
  s.subspec 'JreSql' do |subspec|
    subspec.dependency "#{s.name}/JreCore"
    subspec.vendored_libraries = "#{libPath}/libjre_sql.a"
  end

  s.subspec 'JreSsl' do |subspec|
    subspec.dependency "#{s.name}/JreCore"
    subspec.dependency "#{s.name}/JreNet"
    subspec.dependency "#{s.name}/JreSecurity"
    subspec.vendored_libraries = "#{libPath}/libjre_ssl.a"
  end
  
  s.subspec 'JreUtil' do |subspec|
    subspec.dependency "#{s.name}/JreCore"
    subspec.vendored_libraries = "#{libPath}/libjre_util.a"
  end

  s.subspec 'JreXml' do |subspec|
    subspec.dependency "#{s.name}/JreCore"
    subspec.dependency "#{s.name}/JreNet"
    subspec.vendored_libraries = "#{libPath}/libjre_xml.a"
  end

  s.subspec 'JreZip' do |subspec|
    subspec.dependency "#{s.name}/JreCore"
    subspec.dependency "#{s.name}/JreNet"
    subspec.dependency "#{s.name}/JreSecurity"
    subspec.dependency "#{s.name}/JreIo"
    subspec.libraries = 'z'
    subspec.vendored_libraries = "#{libPath}/libjre_zip.a"
  end

  s.subspec 'JSR305' do |subspec|
    subspec.vendored_frameworks = "#{frameworkPath}/JSR305.framework"
    subspec.dependency "#{s.name}/JreCore"
    xcconfig_entry = {
      'HEADER_SEARCH_PATHS' => "\"#{podPath}/#{frameworkPath}/JSR305.framework/Headers/\"",
    }
    subspec.xcconfig = xcconfig_entry
    subspec.pod_target_xcconfig = xcconfig_entry
  end

  s.subspec 'JUnit' do |subspec|
    subspec.vendored_frameworks = "#{frameworkPath}/JUnit.framework"
    subspec.dependency "#{s.name}/JreCore"
    xcconfig_entry = {
      'HEADER_SEARCH_PATHS' => "\"#{podPath}/#{frameworkPath}/JUnit.framework/Headers/\"",
    }

    subspec.xcconfig = xcconfig_entry
    subspec.pod_target_xcconfig = xcconfig_entry
  end

  s.subspec 'Mockito' do |subspec|
    subspec.vendored_frameworks = "#{frameworkPath}/Mockito.framework"
    subspec.dependency "#{s.name}/JreCore"
    subspec.dependency "#{s.name}/JUnit"
    subspec.dependency "#{s.name}/JreUtil"
    subspec.dependency "#{s.name}/JreConcurrent"
    xcconfig_entry = {
      'HEADER_SEARCH_PATHS' => "\"#{podPath}/#{frameworkPath}/Mockito.framework/Headers/\"",
    }
    subspec.xcconfig = xcconfig_entry
    subspec.pod_target_xcconfig = xcconfig_entry
  end

  s.subspec 'ProtobufRuntime' do |subspec|
    subspec.vendored_frameworks = "#{frameworkPath}/ProtobufRuntime.framework"
    subspec.dependency "#{s.name}/JreCore"
    subspec.libraries = 'c++'
    xcconfig_entry = {
      'HEADER_SEARCH_PATHS' => "\"#{podPath}/#{frameworkPath}/ProtobufRuntime.framework/Headers/\"",
    }
    subspec.xcconfig = xcconfig_entry
    subspec.pod_target_xcconfig = xcconfig_entry
  end

  s.subspec 'Xalan' do |subspec|
    subspec.vendored_frameworks = "#{frameworkPath}/Xalan.framework"
    subspec.dependency "#{s.name}/JreCore"
    subspec.dependency "#{s.name}/JreXml"
    subspec.dependency "#{s.name}/JreIo"
    subspec.dependency "#{s.name}/JreSecurity"
    subspec.dependency "#{s.name}/JreUtil"
    xcconfig_entry = {
      'HEADER_SEARCH_PATHS' => "\"#{podPath}/#{frameworkPath}/Xalan.framework/Headers/\"",
    }
    subspec.xcconfig = xcconfig_entry
    subspec.pod_target_xcconfig = xcconfig_entry
  end

end
