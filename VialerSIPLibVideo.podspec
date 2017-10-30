#
# Be sure to run `pod lib lint VialerSIPLibVideo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VialerSIPLibVideo'
  s.version          = '0.1.0'
  s.summary          = 'pjsip library with Video support'
  s.description      = "Swift wrapper around PJSIP with video support"


  s.homepage         = 'https://github.com/MatijaSabljak/VialerSIPLibVideo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MatijaSabljak' => 'matija.sabljak@globaldizajn.hr' }
  s.source           = { :git => 'https://github.com/MatijaSabljak/VialerSIPLibVideo.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

    s.source_files  = "Pod/Classes/**/*.{h,m}"

  
   s.dependency 'Vialer-pjsip-iOS'
   s.dependency 'CocoaLumberjack'
   s.dependency 'Reachability'
end
