Pod::Spec.new do |s|

s.name         = 'WHTUtils'
s.version      = '1.0.6'
s.platform     = :ios, '7.0'
s.summary      = 'A collection of convenient classes for iOS.'

s.license      = 'MIT'
s.homepage     = 'https://github.com/wenhuatai/WHTUtils'
s.author       = { 'wenhuatai' => '869610770@qq.com' }
s.source       = { :git => 'https://github.com/wenhuatai/WHTUtils.git',
:tag => s.version.to_s}

s.requires_arc = true
s.public_header_files = 'WHTUtils/*.h'
s.source_files  = 'WHTUtils/SUIUtils.h'

s.frameworks = 'UIKit', 'Foundation', 'CoreGraphics', 'QuartzCore'

s.subspec 'Tool' do |ss|
ss.source_files = 'WHTUtils/Tool/*.{h,m}'
end


end