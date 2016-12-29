#
# Be sure to run `pod lib lint RestFetcher.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FontAwesomeSwift'
  s.version          = '1.3'
  s.summary          = 'FontAwesome in Swift'


  s.description      = <<-DESC
An extensible library for using external font icons such as FontAwesome.
                       DESC

  s.homepage         = 'https://github.com/charles-oder/FontAwesomeSwift'
  s.license          = { :type => 'MIT', :text => <<-LICENSE
The MIT License (MIT)

Copyright (c) [year] [fullname]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
    LICENSE
  }
  s.author           = { 'Charles Oder' => 'charles@oder.us' }
  s.source           = { :git => 'https://github.com/charles-oder/FontAwesomeSwift.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'FontAwesomeSwift/FontAwesomeSwift.h'

  s.subspec 'Core' do |ss|
    ss.source_files = 'FontAwesomeSwift/FASFontLoader.swift', 'FontAwesomeSwift/FASFont.swift', 'FontAwesomeSwift/FASIcon.swift'
  end

  s.subspec 'FontAwesome' do |ss|
    ss.dependency 'FontAwesomeSwift/Core'
    ss.source_files = 'FontAwesomeSwift/FASFontAwesome.swift'
    ss.resource = 'FontAwesomeSwift/Resources/FontAwesome.ttf'
  end

  s.subspec 'Ionicons' do |ss|
    ss.dependency 'FontAwesomeSwift/Core'
    ss.source_files = 'FontAwesomeSwift/FASIonicons.swift'
    ss.resource = 'FontAwesomeSwift/Resources/Ionicons.ttf'
  end

  s.subspec 'FoundationIcons' do |ss|
    ss.dependency 'FontAwesomeSwift/Core'
    ss.source_files = 'FontAwesomeSwift/FASFoundationIcons.swift'
    ss.resource = 'FontAwesomeSwift/Resources/fontcustom.ttf'
  end

  s.subspec 'MaterialDesign' do |ss|
    ss.dependency 'FontAwesomeSwift/Core'
    ss.source_files = 'FontAwesomeSwift/FASMaterialDesign.swift'
    ss.resource = 'FontAwesomeSwift/Resources/Material-Design-Iconic-Font.ttf'
  end

  s.subspec 'Octicons' do |ss|
    ss.dependency 'FontAwesomeSwift/Core'
    ss.source_files = 'FontAwesomeSwift/FASOcticons.swift'
   ss.resource = 'FontAwesomeSwift/Resources/Octicons.ttf'
  end

  s.subspec 'Zocial' do |ss|
    ss.dependency 'FontAwesomeSwift/Core'
    ss.source_files = 'FontAwesomeSwift/FASZocial.swift'
    ss.resource = 'FontAwesomeSwift/Resources/Zocial.ttf'
  end

end
