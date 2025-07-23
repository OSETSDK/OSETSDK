Pod::Spec.new do |s|
  s.name         = "OSETSDK"
  s.version      = "6.0.1"  # 修改版本号
  s.summary      = "AdSet广告对接聚合类"
  s.homepage     = "https://github.com/OSETSDK/OSETSDK"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { 'shenshi' => 'yaohaofei@shenshiads.com' }
  s.ios.deployment_target = '12.0'
  s.source       = { :git => 'https://github.com/OSETSDK/OSETSDK.git', :tag => s.version }
  # 添加外部依赖
  s.vendored_frameworks = 'OSETSDK/*.{xcframework,framework}'
  # 其他框架和资源
  s.frameworks = ["Foundation", "UIKit"]
s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }


end
