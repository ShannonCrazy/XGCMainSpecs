#
# Be sure to run `pod lib lint XGCMain.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'XGCMain'
    s.version          = '1.0.8'
    s.summary          = 'A short description of XGCMain.'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
    DESC
    
    s.homepage         = 'https://github.com/ShannonCrazy/XGCMain'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'ShannonCrazy' => '541273160@qq.com' }
    s.source           = { :git => 'https://github.com/ShannonCrazy/XGCMain.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    
    s.ios.deployment_target = '12.0'
    
    s.source_files = 'XGCMain/Classes/XGCMain.h'
    
    s.resource_bundles = {
        'XGCMain' => ['XGCMain/Assets/XGCMain.xcassets']
    }
    
    s.subspec 'XGCEmptyScrollView' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCEmptyScrollView/*'
        # 外部
        ss.dependency 'DZNEmptyDataSet'
    end
    
    s.subspec 'XGCMJRefresh' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCMJRefresh/*'
        # 内部
        ss.dependency 'XGCMain/XGCEmptyScrollView'
        # 外部
        ss.dependency 'MJRefresh'
    end
    
    s.subspec "XGCThemeManager" do |ss|
        ss.source_files = 'XGCMain/Classes/XGCThemeManager/*'
        # 内部
        ss.dependency 'XGCMain/XGCCategory'
    end
    
    s.subspec 'XGCCategory' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCCategory/*'
    end
    
    s.subspec 'XGCUser' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCUser/*'
        # 外部
        ss.dependency 'MJExtension'
        # 内部
        ss.dependency 'XGCMain/XGCCategory'
    end
    
    s.subspec 'XGCMainRoute' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCMainRoute/*'
    end
    
    s.subspec 'XGCURLManagerCenter' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCURLManagerCenter/*'
    end
    
    s.subspec 'XGCURLSession' do |ss|
        ss.source_files = ['XGCMain/Classes/XGCURLSession/*', 'XGCMain/Classes/XGCAFNetworking/*']
        # 内部
        ss.dependency 'XGCMain/XGCUser'
        ss.dependency 'XGCMain/XGCURLManagerCenter'
        # 外部
        ss.dependency 'AFNetworking'
    end
    
    s.subspec 'XGCUploadSession' do |ss|
        ss.source_files = ['XGCMain/Classes/XGCUploadSession/*', 'XGCMain/Classes/XGCAliyunOSSiOS/*']
        # 内部
        ss.dependency 'XGCMain/XGCUser'
        # 外部
        ss.dependency 'AliyunOSSiOS'
    end
    
    s.subspec 'XGCMainFrame' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCMainFrame/*'
        # 内部
        ss.dependency 'XGCMain/MobClickCenter'
        ss.dependency 'XGCMain/XGCThemeManager'
    end
    
    s.subspec 'XGCMainFrameBase' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCMainFrameBase/*'
        # 内部
        ss.dependency 'XGCMain/XGCUser'
        ss.dependency 'XGCMain/XGCMainFrame'
        ss.dependency 'XGCMain/XGCMJRefresh'
    end
    
    s.subspec 'XGCImageUrlControl' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCImageUrlControl/*'
        # 内部
        ss.dependency 'XGCMain/XGCThemeManager'
        # 外部
        ss.dependency 'SDWebImage'
    end
    
    s.subspec "XGCTextField" do |ss|
        ss.source_files = 'XGCMain/Classes/XGCMainTool/XGCTextField/*'
    end
    
    s.subspec "XGCTextView" do |ss|
        ss.source_files = 'XGCMain/Classes/XGCMainTool/XGCTextView/*'
    end
    
    s.subspec "XGCUISegmentedControl" do |ss|
        ss.source_files = 'XGCMain/Classes/XGCUISegmentedControl/*'
    end
    
    s.subspec 'XGCMainPickerManager' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCMainTool/XGCMainPickerManager/*'
        # 外部
        ss.dependency 'TZImagePickerController'
    end
    
    s.subspec "XGCAlertView" do |ss|
        ss.source_files = 'XGCMain/Classes/XGCMainTool/XGCAlertView/*'
        # 内部
        ss.dependency 'XGCMain/XGCUser'
        ss.dependency 'XGCMain/XGCThemeManager'
        ss.dependency 'XGCMain/XGCEmptyScrollView'
        # 外部
        ss.dependency 'M13OrderedDictionary'
    end
    
    s.subspec 'XGCDatePickerView' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCMainTool/XGCDatePickerView/*'
    end
    
    s.subspec 'XGCMediaPreview' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCMediaPreview/**/*'
        # 内部
        ss.dependency 'XGCMain/XGCCategory'
        ss.dependency 'XGCMain/XGCMainRoute'
        ss.dependency 'XGCMain/XGCThemeManager'
        ss.dependency 'XGCMain/XGCMainPickerManager'
        # 外部
        ss.dependency 'Masonry'
        ss.dependency 'SDWebImage'
    end
    
    s.subspec 'XGCWebView' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCWebView/*'
        # 内部
        ss.dependency 'XGCMain/XGCMainFrame'
        ss.dependency 'XGCMain/XGCMainRoute'
        ss.dependency 'XGCMain/XGCURLManagerCenter'
        # frameworks
        ss.frameworks = 'WebKit', 'QuartzCore'
    end
    
    s.subspec 'XGCViewConfiguration' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCViewConfiguration/*'
        # 外部
        s.dependency 'Toast'
        s.dependency 'SVProgressHUD'
    end
    
    s.subspec 'XGCMainForm' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCMainForm/**/*'
        # 内部
        ss.dependency 'XGCMain/XGCUser'
        ss.dependency 'XGCMain/XGCCategory'
        ss.dependency 'XGCMain/XGCTextView'
        ss.dependency 'XGCMain/XGCTextField'
        ss.dependency 'XGCMain/XGCAlertView'
        ss.dependency 'XGCMain/XGCThemeManager'
        ss.dependency 'XGCMain/XGCMediaPreview'
        ss.dependency 'XGCMain/XGCUploadSession'
        ss.dependency 'XGCMain/XGCMainFrameBase'
        ss.dependency 'XGCMain/XGCDatePickerView'
        ss.dependency 'XGCMain/XGCViewConfiguration'
        # 外部
        ss.dependency 'Masonry'
        ss.dependency 'SDWebImage'
    end
    
    s.subspec 'XGCUserNotificationCenter' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCUserNotificationCenter/*'
        # frameworks
        ss.frameworks = 'UserNotifications'
    end
    
    s.subspec 'UMConfigureCenter' do |ss|
        ss.source_files = 'XGCMain/Classes/UMConfigureCenter/*'
        # 外部
        ss.dependency 'UMCommon'
        ss.dependency 'UMDevice'
        # 使用静态库
#        s.static_framework = true
    end
    
    s.subspec 'UMessageManager' do |ss|
        ss.source_files = 'XGCMain/Classes/UMessageManager/*'
        # 内部
        ss.dependency 'XGCMain/XGCUser'
        ss.dependency 'XGCMain/UMConfigureCenter'
        ss.dependency 'XGCMain/XGCUserNotificationCenter'
        # 外部
        ss.dependency 'UYuMao'
        ss.dependency 'UMPush'
        # 使用静态库
#        s.static_framework = true
    end
    
    s.subspec 'MobClickCenter' do |ss|
        ss.source_files = 'XGCMain/Classes/MobClickCenter/*'
        # 内部
        ss.dependency 'XGCMain/UMConfigureCenter'
        # 外部
        ss.dependency 'UMAPM'
        # 配置环境
        s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
        s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
        # 使用静态库
#        s.static_framework = true
    end
    
    s.subspec 'XGCMainView' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCMainTool/XGCMainView/*'
        # 内部
        ss.dependency 'XGCMain/XGCThemeManager'
        ss.dependency 'XGCMain/XGCViewConfiguration'
        # 外部
        ss.dependency 'Masonry'
    end
    
    s.subspec 'XGCSignatureViewController' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCMainTool/XGCSignatureViewController/*'
        # 内部
        ss.dependency 'XGCMain/XGCUser'
        ss.dependency 'XGCMain/XGCCategory'
        ss.dependency 'XGCMain/XGCMainFrame'
        ss.dependency 'XGCMain/XGCThemeManager'
        ss.dependency 'XGCMain/XGCUploadSession'
        ss.dependency 'XGCMain/XGCViewConfiguration'
        # 外部
        ss.dependency 'Masonry'
    end
    
    s.subspec 'XGCMainOrgTree' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCMainTool/XGCMainOrgTree/**/*'
        # 内部
        ss.dependency 'XGCMain/XGCMainView'
        ss.dependency 'XGCMain/XGCMainFrame'
        ss.dependency 'XGCMain/XGCTextField'
        ss.dependency 'XGCMain/XGCURLSession'
        ss.dependency 'XGCMain/XGCThemeManager'
        ss.dependency 'XGCMain/XGCEmptyScrollView'
        ss.dependency 'XGCMain/XGCViewConfiguration'
        # 外部
        ss.dependency 'Masonry'
        ss.dependency 'MJExtension'
        ss.dependency 'M13OrderedDictionary'
    end
    
    s.subspec 'XGCMainProPerson' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCMainTool/XGCMainProPerson/**/*'
        # 内部
        ss.dependency 'XGCMain/XGCUser'
        ss.dependency 'XGCMain/XGCCategory'
        ss.dependency 'XGCMain/XGCMainView'
        ss.dependency 'XGCMain/XGCMainFrame'
        ss.dependency 'XGCMain/XGCTextField'
        ss.dependency 'XGCMain/XGCMJRefresh'
        ss.dependency 'XGCMain/XGCURLSession'
        ss.dependency 'XGCMain/XGCThemeManager'
        ss.dependency 'XGCMain/XGCImageUrlControl'
        ss.dependency 'XGCMain/XGCViewConfiguration'
        # 外部
        ss.dependency 'Masonry'
        ss.dependency 'MJExtension'
        ss.dependency 'M13OrderedDictionary'
    end
    
    s.subspec 'XGCWeakTargetTimer' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCMainTool/XGCWeakTargetTimer/*'
    end
    
    s.subspec 'XGCQRCodeControl' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCMainTool/XGCQRCodeControl/*'
    end
    
    s.subspec 'XGCIcon' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCIcon/*'
        # 内部
        ss.dependency 'XGCMain/XGCUser'
        ss.dependency 'XGCMain/XGCMainView'
        ss.dependency 'XGCMain/XGCMainRoute'
        ss.dependency 'XGCMain/XGCMainFrame'
        ss.dependency 'XGCMain/XGCThemeManager'
        ss.dependency 'XGCMain/XGCEmptyScrollView'
        # 外部
        ss.dependency 'Masonry'
    end
    
    s.subspec 'XGCFileJsonController' do |ss|
        ss.source_files = 'XGCMain/Classes/XGCMainTool/XGCFileJsonController/*'
        # 内部
        ss.dependency 'XGCMain/XGCWebView'
        ss.dependency 'XGCMain/XGCMainRoute'
        ss.dependency 'XGCMain/XGCMediaPreview'
    end
    
    # https://github.com/CocoaPods/CocoaPods/issues/10065#issuecomment-694266259
#    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
#    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
