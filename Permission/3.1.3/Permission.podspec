Pod::Spec.new do |s|
  s.name          = 'Permission'
  s.version       = '3.1.3'
  s.license       = 'MIT'
  s.homepage      = 'https://github.com/khanhbui/Permission'
  s.author        = { 'Damien' => 'damien@delba.io', 'Khanh Bui' => 'buihoangkhanh@gmail.com' }
  s.summary       = 'A unified API to ask for permissions on iOS'
  s.description   = <<-DESC
A unified API to ask for permissions on iOS.

This is based on [Damien's Permission](https://github.com/delba/Permission)
DESC
  s.source        = { :git => 'https://github.com/khanhbui/Permission.git', :tag => s.version }
  s.swift_version = '5.1'

  s.weak_frameworks = 'Speech', 'AppTrackingTransparency'

  s.ios.deployment_target = '10.0'

  s.requires_arc = true

  s.default_subspec = 'Core'

  s.subspec 'Core' do |co|
    co.source_files = 'Source/**/*.{swift, h}'
  end

  s.subspec 'Bluetooth' do |bl|
    bl.dependency 'Permission/Core'
    bl.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_BLUETOOTH' }
  end

  s.subspec 'Camera' do |cm|
    cm.dependency 'Permission/Core'
    cm.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_CAMERA' }
  end

  s.subspec 'Contacts' do |cn|
    cn.dependency 'Permission/Core'
    cn.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_CONTACTS' }
  end

  s.subspec 'Events' do |ev|
    ev.dependency 'Permission/Core'
    ev.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_EVENTS' }
  end

  s.subspec 'Location' do |lo|
    lo.dependency 'Permission/Core'
    lo.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_LOCATION' }
  end

  s.subspec 'Microphone' do |mi|
    mi.dependency 'Permission/Core'
    mi.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_MICROPHONE' }
  end

  s.subspec 'Motion' do |mo|
    mo.dependency 'Permission/Core'
    mo.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_MOTION' }
  end

  s.subspec 'Notifications' do |no|
    no.dependency 'Permission/Core'
    no.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_NOTIFICATIONS' }
  end

  s.subspec 'Photos' do |ph|
    ph.dependency 'Permission/Core'
    ph.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_PHOTOS' }
  end

  s.subspec 'Reminders' do |re|
    re.dependency 'Permission/Core'
    re.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_REMINDERS' }
  end

  s.subspec 'SpeechRecognizer' do |rs|
    rs.dependency 'Permission/Core'
    rs.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_SPEECH_RECOGNIZER' }
  end

  s.subspec 'MediaLibrary' do |ml|
    ml.dependency 'Permission/Core'
    ml.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_MEDIA_LIBRARY' }
  end

  s.subspec 'Siri' do |ab|
    ab.dependency 'Permission/Core'
    ab.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_SIRI' }
  end

  s.subspec 'AppTrackingTransparency' do |at|
    at.dependency 'Permission/Core'
    at.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_APP_TRACKING_TRANSPARENCY' }
  end
end
