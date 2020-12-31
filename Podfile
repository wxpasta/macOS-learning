source 'https://github.com/CocoaPods/Specs.git'
#use_frameworks!
platform :ios, '9.0'
inhibit_all_warnings!


targetsArray = ['SAP', 'SAP-dev', 'SAP-xiehe', 'SAP-yidayi','SAP-liantong', 'SAP-fuchan', 'SAP-qingyi', 'SAP-nanfang', 'SAP-weifang', 'SAP-datong', 'SAP-jieyang', 'SAP-beixinyuan', 'SAP-chengdu', 'SAP-zhonghangxin', 'SAP-fujiannongxin', 'SAP-chuanrui', 'SAP-htkg706', 'SAP-xinanshiji']
targetsArray.each do |t|
  target t do
    
    pod 'SDWebImage', '~> 5.0'
    pod 'AFNetworking', '~> 3.2.1'
    pod 'Masonry', '~> 1.1.0'
    pod 'MJExtension', '~> 3.0.13'
    pod 'MJRefresh', '~> 3.2.3'
    pod 'FMDB/SQLCipher', '~> 2.7.5'
    pod 'AFOAuth2Manager', '~> 3.0.0'
    pod 'JKImageCutter','~> 1.0.1'
    pod 'NSDate-Extensions', '~> 0.0.1'
    pod 'CocoaSecurity', '~> 1.2.4'
    pod 'SystemServices', '~> 2.0.1'
    pod 'TYCyclePagerView', '~> 1.1.2'
    pod 'MQTTClient', '~> 0.15.3'
    pod 'XRCarouselView', '~> 2.6.1'
    pod 'MBProgressHUD', '~> 1.1.0'
    pod 'SJVideoPlayer', '~> 2.4.5'
    pod 'Bugly', '~> 2.5.0'
    pod 'CocoaLumberjack', '~> 3.5.3'
    pod 'SCPageViewController'
    pod 'SSZipArchive', '~> 2.1.4'
#    pod "GCDWebServer", "~> 3.5.4"
    pod 'BRPickerView', '~> 2.5.7'
		pod 'AMap2DMap', '~> 5.6.1'
		pod 'AMapLocation', '~> 2.6.7'
		pod 'AMapSearch', '~> 7.3.0'
		pod 'FSCalendar', '~> 2.8.1'
		pod 'CocoaHTTPServer', '~> 2.3'
    
    #    pod 'JPush', '3.0.7'
    
    #    pod 'CordovaPlugin-console'
    
    #    pod 'Cordova', '~> 4.5.4'
    #    pod 'cordova-plugin-contacts'
    #    pod 'cordova-plugin-device'
    #    pod 'cordova-plugin-device-orientation'
    #    pod 'cordova-plugin-device-motion'
    #    pod 'cordova-plugin-globalization'
    #    pod 'cordova-plugin-geolocation'
    #    pod 'cordova-plugin-file'
    #    pod 'cordova-plugin-media-capture'
    #    pod 'cordova-plugin-camera'
    #    pod 'cordova-plugin-network-information'
    #    pod 'cordova-plugin-splashscreen'
    #    pod 'cordova-plugin-inappbrowser'
    #    pod 'cordova-plugin-file-transfer'
    #    pod 'cordova-plugin-statusbar'
    #    pod 'cordova-plugin-vibration'
    #    pod 'cordova-plugin-ionic-webview'
    
  end
end


post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '9.0'
        end
    end
end
