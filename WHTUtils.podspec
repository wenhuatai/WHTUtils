

Pod::Spec.new do |s|
  s.name         = "WHTUtils"
  s.version      = "1.0.0"
  s.summary      = "A Library for iOS to use for WHTUtils."
  s.ios.deployment_target = '7.0'
  s.homepage     = "https://github.com/wenhuatai/WHTUtils"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "wenhuatai" => "869710770@qq.com" }
  s.source       = { :git => "https://github.com/wenhuatai/WHTUtils.git", :tag => "#{s.version}" }
  s.source_files = "WHTUtils/*.{h,m}"
end
