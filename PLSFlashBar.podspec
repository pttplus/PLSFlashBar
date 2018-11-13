#
# Be sure to run `pod lib lint PLSFlashBar.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PLSFlashBar'
  s.version          = '0.1.0'
  s.summary          = 'Show flash bar for displaying hint messages.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Show flash bar for displaying hint message.
  Currently support displaying flash bar under navigation bar of UINavigationController. 
                       DESC

  s.homepage         = 'https://github.com/pttplus/PLSFlashBar'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Hanlin Wang' => 'wani420@gmail.com' }
  s.source           = { :git => 'git@github.com:pttplus/PLSFlashBar.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.2'

  s.source_files = 'PLSFlashBar/Classes/**/*'
  
  # s.resource_bundles = {
  #   'PLSFlashBar' => ['PLSFlashBar/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
