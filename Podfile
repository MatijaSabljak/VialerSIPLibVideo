platform :ios, '9.0'
#use_frameworks! #!! Do not enable, causes an error about "target has transitive dependencies that include static binaries.... "

pre_install do |installer|
    # workaround for https://github.com/CocoaPods/CocoaPods/issues/3289
    def installer.verify_no_static_framework_transitive_dependencies; end
end

def pods_for_all_targets
    pod 'VialerSIPLibVideo', :path => '../'
    pod 'Reachability'
    pod 'CocoaLumberjack'
end

post_install do |installer_representation|
    installer_representation.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
            config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||= ['$(inherited)']
            config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] << 'PJ_AUTOCONF=1'
        end
    end
end