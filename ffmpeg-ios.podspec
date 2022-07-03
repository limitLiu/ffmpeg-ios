libavcodec = 'libavcodec'
libavformat = 'libavformat'
libavutil = 'libavutil'
libswresample = 'libswresample'
libswscale = 'libswscale'
libavdevice = 'libavdevice'
libavfilter = 'libavfilter'
libpostproc = 'libpostproc'

Pod::Spec.new do |s|
  name = "ffmpeg-ios"
  version = "4.3.1"

  s.name         = "#{name}"
  s.version      = "#{version}"
  s.summary      = "A pod repo of 4.3 FFmpeg static libraries for ios."
  s.description  = "FFmpeg code base"

  s.homepage     = "https://github.com/limitLiu/ffmpeg-ios"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Limit" => "limitliu@qq.com" }
  s.requires_arc = false
  s.source       = { :git => "https://github.com/limitLiu/ffmpeg-ios", :tag => "#{s.version}" }

  s.ios.deployment_target = '10.0'

  s.ios.preserve_paths = "src/ios/#{s.version}/include"
  s.ios.header_mappings_dir = "src/ios/#{s.version}/include"
  
  s.subspec libavcodec do |sub|

    sub.ios.source_files        = "src/ios/#{s.version}/include/#{libavcodec}/*.h"
    sub.ios.vendored_libraries  = "src/ios/#{s.version}/lib/#{libavcodec}.a"
    sub.ios.public_header_files = "src/ios/#{s.version}/include/#{libavcodec}/*.h"

  end

  s.subspec libavformat do |sub|

    sub.ios.source_files        = "src/ios/#{s.version}/include/#{libavformat}/*.h"
    sub.ios.vendored_libraries  = "src/ios/#{s.version}/lib/#{libavformat}.a"
    sub.ios.public_header_files = "src/ios/#{s.version}/include/#{libavformat}/*.h"

  end

  s.subspec libavutil do |sub|

    sub.ios.source_files        = "src/ios/#{s.version}/include/#{libavutil}/*.h"
    sub.ios.vendored_libraries  = "src/ios/#{s.version}/lib/#{libavutil}.a"
    sub.ios.public_header_files = "src/ios/#{s.version}/include/#{libavutil}/*.h"

  end

  s.subspec libswresample do |sub|

    sub.ios.source_files        = "src/ios/#{s.version}/include/#{libswresample}/*.h"
    sub.ios.vendored_libraries  = "src/ios/#{s.version}/lib/#{libswresample}.a"
    sub.ios.public_header_files = "src/ios/#{s.version}/include/#{libswresample}/*.h"

  end

  s.subspec libswscale do |sub|

    sub.ios.source_files        = "src/ios/#{s.version}/include/#{libswscale}/*.h"
    sub.ios.vendored_libraries  = "src/ios/#{s.version}/lib/#{libswscale}.a"
    sub.ios.public_header_files = "src/ios/#{s.version}/include/#{libswscale}/*.h"

  end

  s.subspec libavdevice do |sub|

    sub.ios.source_files        = "src/ios/#{s.version}/include/#{libavdevice}/*.h"
    sub.ios.vendored_libraries  = "src/ios/#{s.version}/lib/#{libavdevice}.a"
    sub.ios.public_header_files = "src/ios/#{s.version}/include/#{libavdevice}/*.h"

  end

  s.subspec libavfilter do |sub|

    sub.ios.source_files        = "src/ios/#{s.version}/include/#{libavfilter}/*.h"
    sub.ios.vendored_libraries  = "src/ios/#{s.version}/lib/#{libavfilter}.a"
    sub.ios.public_header_files = "src/ios/#{s.version}/include/#{libavfilter}/*.h"

  end

  s.subspec libpostproc do |sub|

    sub.ios.source_files        = "src/ios/#{s.version}/include/#{libpostproc}/*.h"
    sub.ios.vendored_libraries  = "src/ios/#{s.version}/lib/#{libpostproc}.a"
    sub.ios.public_header_files = "src/ios/#{s.version}/include/#{libpostproc}/*.h"

  end

  s.library    = "iconv", "bz2", "z"
  s.frameworks = ["VideoToolbox", "AudioToolbox", "CoreMedia", "AVFoundation"]
  s.dependency "openssl"
  s.dependency "fdk-aac-ios"
  s.dependency "x264-ios"
  s.dependency "lame-ios"

end
