Pod::Spec.new do |s|

s.name         = 'ApiRTCSDK'
s.module_name  = 'ApiRTCSDK'
s.version      = '0.0.7'
s.summary      = 'ApiRTC is a WebRTC Platform as a Service that simplifies developers access to WebRTC technology'
s.description  = 'ApiRTC cloud-based WebRTC API are built for web and mobile developers. Empower you website with real-time text, audio and video interaction by leveraging our javascript library (compatible Node.js or Angular.js) or use our plugins for your mobile apps. Apizee takes care of browser compatibility, security and NAT traversal issues for you.'
s.homepage     = 'https://apirtc.com'
s.license      = { :type => 'Commercial', :text => 'Copyright 2011-2021 Apizee. All rights reserved. Use of this software is subject to the terms and conditions of the Apizee Terms of Service located at https://apirtc.com/ApiRTC_TermsofService.pdf' }
s.author      = { 'Aleksandr Khorobrykh' => 'aleksandr.khorobrykh@apizee.com', 'Maëlle Saïag' => 'maelle.saiag@apizee.com', 'Frederic Luart' => 'frederic.luart@apizee.com', 'Samuel Liard' => 'samuel.liard@apizee.com'  }

s.ios.deployment_target = '13.0'

s.source = { 
	:http => 'https://download.apizee.com/ios/sdk/ApiRTCSDK.xcframework.zip',
	:sha1 => '6d2eda26a94813d07c01593aed558273ebe9c068'
}

s.dependency 'RxSwift', '6.1.0'
s.dependency 'RxRelay', '6.1.0'
s.dependency 'Socket.IO-Client-Swift', '16.0.1'
s.dependency 'CocoaAsyncSocket', '7.6.5'
s.dependency 'GoogleWebRTC', '1.1.31999'

s.vendored_frameworks = 'ApiRTCSDK.framework'

end