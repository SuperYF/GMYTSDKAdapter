#
#  Be sure to run `pod spec lint GMYTSDKAdapter.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "GMYTSDKAdapter"
  spec.version      = "2.0.4"
  spec.summary      = "iOS开源工具SDK，封装网络、广告、埋点、基础组件"

  
  spec.description  = <<-DESC
                   一款轻量级iOS开源SDK，包含开屏广告、信息流模版广告、埋点、网络等功能，支持OC与Swift项目.
DESC

  # GitHub仓库主页
  spec.homepage     = "https://github.com/SuperYF/GMYTSDKAdapter"
  # 开源协议（公有库必须带file指向LICENSE文件）
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  # 作者信息
  spec.author       = { "SuperYF" => "1205008558@qq.com" }
  
  # 源码地址 + tag版本
  spec.source       = { :git => "https://github.com/SuperYF/GMYTSDKAdapter.git", :tag => "#{spec.version}" }

  # 平台最低版本
  spec.ios.deployment_target = "13.0"
  spec.swift_versions = ["5.0"]
  # 3. 系统依赖框架（UIKit必写）
  spec.frameworks = "UIKit", "Foundation"

  # 4. 第三方依赖（如有，示例）
  spec.dependency "Ads-CN-Beta/BUAdSDK", "~> 7.8.0.2"
  spec.dependency "Ads-CN-Beta/CSJMediation", "~> 7.8.0.2"
  spec.dependency "YTAdSDK", "~> 2.0.4"

  # 二进制框架路径
  spec.vendored_frameworks = "Frameworks/GMYTSDKAdapter.xcframework"

  # 资源打包成独立 Bundle（关键，防止资源冲突）
spec.resource_bundles = {
 
}
spec.pod_target_xcconfig = {
  "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64",
  # 仅模拟器强制12，真机不受影响，依然支持iOS11设备
  "IPHONEOS_DEPLOYMENT_TARGET[sdk=iphonesimulator*]" => "13.0"
}
  
 

end
