#
# Be sure to run `pod lib lint ANFPager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ANFPager'
  s.version          = '0.1.1'
  s.summary          = 'Easy to use UIPageview Controller'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A Pageview Controller that support both orientations and LTR / RTL language. Easy to setup.
                       DESC

  s.homepage         = 'https://github.com/niroshanf/ANFPager'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Anthony Fernandez' => 'niroshanf@gmail.com' }
  s.source           = { :git => 'https://github.com/niroshanf/ANFPager.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

#  s.source_files = 'ANFPager/*.{swift}'
  s.ios.source_files  = "*.{swift}"
  
  s.swift_version = "5.0"
  
  # s.resource_bundles = {
  #   'ANFPager' => ['ANFPager/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
