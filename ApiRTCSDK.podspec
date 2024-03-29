Pod::Spec.new do |s|

s.name         = 'ApiRTCSDK'
s.module_name  = 'ApiRTCSDK'
s.version      = '1.0.8'
s.summary      = 'ApiRTC is a WebRTC Platform as a Service that simplifies developers access to WebRTC technology'
s.description  = 'ApiRTC cloud-based WebRTC API are built for web and mobile developers. Empower you website with real-time text, audio and video interaction by leveraging our javascript library (compatible Node.js or Angular.js) or use our plugins for your mobile apps. Apizee takes care of browser compatibility, security and NAT traversal issues for you.'
s.homepage     = 'https://apirtc.com'
s.license      = { :type => 'Commercial', :text => 'Copyright 2011-2022 Apizee. All rights reserved. Use of this software is subject to the terms and conditions of the Apizee Terms of Service located at https://apirtc.com/terms-and-conditions/' }
s.author      = { 'Aleksandr Khorobrykh' => 'aleksandr.khorobrykh@apizee.com', 'Maëlle Saïag' => 'maelle.saiag@apizee.com', 'Frederic Luart' => 'frederic.luart@apizee.com', 'Samuel Liard' => 'samuel.liard@apizee.com'  }

s.ios.deployment_target = '14.0'

s.source = { 
	:http => 'https://download.apizee.com/ios/sdk/ApiRTCSDK-1.0.8.xcframework.zip'
}

s.swift_versions = ['5.0']
s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

s.dependency 'RxSwift', '6.5.0'
s.dependency 'RxRelay', '6.5.0'
s.dependency 'ReactorKit', '3.2.0'
s.dependency 'Alamofire', '5.5.0'
s.dependency 'Resolver', '1.5.0'

s.dependency 'Socket.IO-Client-Swift', '16.0.1'
s.dependency 'CocoaAsyncSocket', '7.6.5'
s.dependency 'Connectivity', '5.0.0'

s.dependency 'GoogleWebRTC', '1.1.31999'

s.vendored_frameworks = 'ApiRTCSDK.xcframework'

end

