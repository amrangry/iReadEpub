#
# Be sure to run `pod lib lint iReadEpub.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'iReadEpub'
    s.version          = '0.1.6'
    s.summary          = 'iReadEpub is aswiftly lib for Epub reading'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
    DESC
    
    s.homepage         = 'https://github.com/amrangry/iReadEpub'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'amrangry' => 'amr.elghadban@gmail.com' }
    s.source           = { :git => 'https://github.com/amrangry/iReadEpub.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    
    s.ios.deployment_target = '14.0'
    s.swift_version = '5.0'
    s.platforms = {
        "ios": "14.0"
    }
    
    s.requires_arc     = true
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
    s.frameworks = 'UIKit', 'WebKit', 'SafariServices'
    s.dependency 'Fuzi' , '~> 3.1.3'
    s.dependency 'DifferenceKit' , '~> 1.3.0'
    s.dependency 'CryptoSwift', '~> 1.5.1'
    s.dependency 'SwiftSoup', '~> 2.5.3'
    s.dependency 'Minizip', '~> 1.0.0'

    #  s.default_subspec  = 'App'
    #  s.subspec 'App' do |app|
    #      app.source_files = 'SwiftMessages/**/*.swift'
    #      app.resource_bundles = {'iReadEpub' => ['iReadEpub/Resources/*.*']}
    #  end
    
    #s.source_files = 'iReadEpub/Classes/**/*'
    s.source_files = 'Source/**/*'
    
    s.resource_bundles = {
        'iReadEpub' => ['iReadEpub/Resources/*.*']
    }
    
end
