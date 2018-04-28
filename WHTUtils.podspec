Pod::Spec.new do |s|

s.name         = 'WHTUtils'
s.version      = '1.0.6'
s.platform     = :ios, '7.0'
s.summary      = 'A collection of convenient classes for iOS.'

s.license      = 'MIT'
s.homepage     = 'https://github.com/wenhuatai/WHTUtils'
s.author       = { 'wenhuatai' => '869610770@qq.com' }
s.source       = { :git => 'https://github.com/wenhuatai/WHTUtils.git',
:tag => s.version}

s.requires_arc = true

s.public_header_files = 'WHTUtils/**/*.h'
s.source_files  = 'WHTUtils/SUIUtils.h'

s.frameworks = 'UIKit', 'Foundation', 'CoreGraphics', 'QuartzCore'

s.subspec 'Tool' do |ss|
ss.source_files = 'WHTUtils/Tool/*.{h,m}'
end

s.subspec 'Foundation' do |ss|
ss.dependency 'WHTUtils/Tool'
ss.source_files = 'WHTUtils/Foundation/*.{h,m}'
end

s.subspec 'UIKit' do |ss|
ss.dependency 'WHTUtils/Foundation'
ss.source_files = 'WHTUtils/UIKit/*.{h,m}'
end

s.subspec 'Helper' do |ss|
ss.dependency 'WHTUtils/UIKit'
ss.dependency 'UITableView+FDTemplateLayoutCell', '~> 1.4'
ss.source_files = 'WHTUtils/Helper/*.{h,m}'
end

end