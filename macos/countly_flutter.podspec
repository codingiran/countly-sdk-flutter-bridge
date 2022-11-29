#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name = 'countly_flutter'
  s.version = '22.02.0'
  s.summary = 'Countly is an innovative, real-time, open source mobile analytics platform.'
  s.homepage = 'https://github.com/codingiran/countly-sdk-flutter-bridge'
  s.social_media_url = 'https://twitter.com/gocountly'
  s.author = {'Countly' => 'hello@count.ly'}
  s.source = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/CountlyFlutterPlugin.h'
  s.platform = :osx, '10.15'
  s.dependency 'FlutterMacOS'

  s.macos.deployment_target = '10.15'
  s.static_framework = true
end

