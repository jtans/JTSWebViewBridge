#
# Be sure to run `pod lib lint JTSWebViewBridge.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JTSWebViewBridge'
  s.version          = '0.1.0'
  s.summary          = 'A aop extension of WebViewJavascriptBridge.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
a aop extension Framework for WebViewJavascriptBridge.Modify close,extend open.
                       DESC

  s.homepage         = 'https://github.com/jtans/JTSWebViewBridge'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jtans' => 'jtans' }
  s.source           = { :git => 'https://github.com/jtans/JTSWebViewBridge.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  s.source_files = 'JTSWebViewBridge/Classes/**/*'
  
  # s.resource_bundles = {
  #   'JTSWebViewBridge' => ['JTSWebViewBridge/Assets/*.png']
  # }

  s.public_header_files = 'JTSWebViewBridge/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'WebViewJavascriptBridge'
end
