# ApiRTC iOS SDK

ApiRTC cloud-based WebRTC API are built for web and mobile developers. Empower you website with real-time text, audio and video interaction by leveraging our javascript library (compatible Node.js or Angular.js) or use our plugins for your mobile apps. 

[Apizee](https://apizee.com/) takes care of browser compatibility, security and NAT traversal issues for you.

# Requirements

Requires iOS 12+, Swift 5+, Xcode 12+

# Installation

## CocoaPods

```
pod 'ApiRTCSDK'
```

Use Podfile post_install setup to properly link dependencies:
```
post_install do |installer|
	installer.pods_project.targets.each do |target|
		target.build_configurations.each do |config|
			config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
		end
	end
end
```

# Samples

Check our [iOS samples](https://github.com/apizee/ApiRTC-iOS-Samples)
