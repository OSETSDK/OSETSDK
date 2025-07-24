Pod::Spec.new do |s|
  s.name         = "OSETSDK"
  s.version      = "6.0.5"
  s.summary      = "AdSet广告对接聚合类"
  s.description  = <<-DESC
                    OSETSDK 是一个专业的广告聚合SDK，提供高效的广告展示和收益优化功能。
                    DESC
  s.homepage     = "https://github.com/OSETSDK/OSETSDK"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { 'shenshi' => 'yaohaofei@shenshiads.com' }
  
  # 设置最低支持版本
  s.ios.deployment_target = '12.0'
  
  # 源文件配置
  s.source       = {
    :git => 'https://github.com/OSETSDK/OSETSDK.git',
    :tag => s.version.to_s
  }
  
  # 主框架文件
  # 检查 OSETSDK.podspec 关键字段
  s.vendored_frameworks = 'OSETSDK/OSETSDK.xcframework'
  
  # 系统框架依赖
  s.frameworks = "Foundation", "UIKit", "AdSupport", "CoreTelephony", "StoreKit", "SystemConfiguration"
  
  # 资源文件（如果有）
  s.resources = "OSETSDK/OSETSDK.bundle"
  
  # 编译器设置
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64',
    'VALID_ARCHS' => 'arm64'
  }
  
  # Swift版本设置
  s.swift_version = '5.0'
  
  
  # ================= 第三方依赖库 =================
  
  # 腾讯广点通
  s.dependency 'GDTMobSDK', '~> 4.15.40'
  
  s.dependency 'KSAdSDK', '~> 3.3.76'

  # 穿山甲（字节跳动）
  s.dependency 'Ads-CN-Beta/BUAdSDK', '~> 6.9.0.6'
  s.dependency 'Ads-CN-Beta/CSJMediation', '~> 6.9.0.6'
  
  # Sigmob
  s.dependency 'SigmobAd-iOS', '~> 4.19.0'
  
  # 百度MobAdSDK
  s.dependency 'BaiduMobAdSDK', '~> 5.373'
  
  # 倍至SDK
  s.dependency 'BeiZiSDK-iOS/BeiZiSDK-iOS', '~> 4.90.5.12'
  
  # 章鱼SDK
  s.dependency 'OctopusSDK', '~> 1.6.3.4'
  
  # TanxSDK
  s.dependency 'TanxSDK', '~> 3.7.8'
  
  # 京东广告SDK
  s.dependency 'JADYun', '~> 2.6.8'
  
  # 趣盟广告SDK
  s.dependency 'QuMengAdSDK', '~> 1.3.4'
  
end
