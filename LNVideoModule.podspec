#
# Be sure to run `pod lib lint LNVideoModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LNVideoModule'
  s.version          = '0.1.2'
  s.summary          = 'A short description of LNVideoModule.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/dongjianxiong/LNVideoModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dongjianxiong' => 'jianxiong20090919@126.com' }
  s.source           = { :git => 'https://github.com/dongjianxiong/LNVideoModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'LNVideoModule/Classes/**/*'
  s.public_header_files = 'LNVideoModule/Classes/*.h'
  
  s.subspec 'Common' do |com|
    com.source_files = 'LNVideoModule/Classes/Common/**/*'
    com.public_header_files = 'LNVideoModule/Classes/Common/*.h'
  end
  
  s.subspec 'Network' do |network|
    network.source_files = 'LNVideoModule/Classes/Network/**/*'
    network.public_header_files = 'LNVideoModule/Classes/Network/*.h'
  end
  
  s.subspec 'Feature' do |feature|
    feature.source_files = 'LNVideoModule/Classes/Feature/**/*.{h,m}'
    feature.public_header_files = 'LNVideoModule/Classes/Feature/**/*.h'
    feature.resource_bundles = {
      'LNVideoModule' => ['LNVideoModule/Classes/Feature/**/*.xib', 'LNVideoModule/Classes/**/*.{png,jpg,jpeg}']
    }
    feature.dependency 'LNVideoModule/Common'
    feature.dependency 'LNVideoModule/Network'
  end
  
  s.subspec 'Mediator' do |mediator|
    mediator.source_files = 'LNVideoModule/Classes/Mediator/**/*'
    mediator.dependency 'LNVideoModule/Feature'
  end

  
  s.dependency 'LNModuleProtocol', '0.1.5'
  s.dependency 'LNCommonKit', '0.1.8'
  
  # s.resource_bundles = {
  #   'LNVideoModule' => ['LNVideoModule/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
