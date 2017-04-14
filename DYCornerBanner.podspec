#
# Be sure to run `pod lib lint DYCornerBanner.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DYCornerBanner'
  s.version          = '1.0.2'
  s.summary          = 'Customisable corner banner label written in Swift 3.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
DYCornerBanner written in Swift 3 allows you to quickly create corner labels on top of any kind of rectangular view, e.g. UIImageView. The rotation angle of the corner label is determined by the width and height of the banner view.
                       DESC

  s.homepage         = 'https://github.com/DominikButz/DYCornerBanner'
  # s.screenshots     = 'https://github.com/DominikButz/DYCornerBanner/blob/master/gitResources/cornerBannerExamples.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dominikbutz' => 'dominikbutz@gmail.com' }
  s.source           = { :git => 'https://github.com/DominikButz/DYCornerBanner.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'DYCornerBanner/Classes/**/*'
  
  # s.resource_bundles = {
  #   'DYCornerBanner' => ['DYCornerBanner/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
