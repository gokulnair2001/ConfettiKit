#
# Be sure to run `pod lib lint ConfettiKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ConfettiKit'
  s.version          = '1.0.0'
  s.summary          = 'A custom framework used to add Confetti on your Swift projects.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'ConfettiKit is a custom framework used to add Confetti on your iOS/iPadOS projects. The kit provides variety of customisations in-order to design a confetti which matches your projects UI.'
                       DESC

  s.homepage         = 'https://github.com/gokulnair2001/ConfettiKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'gokulnair2001' => 'gokulnair.2001@gmail.com' }
  s.source           = { :git => 'https://github.com/gokulnair2001/ConfettiKit.git', :tag => s.version.to_s }
  s.social_media_url = 'https://github.com/gokulnair2001'

  s.ios.deployment_target = '12.1'
  s.swift_version = '5'
  s.source_files = 'Sources/**/*.swift'
  
  # s.resource_bundles = {
  #   'ConfettiKit' => ['ConfettiKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
