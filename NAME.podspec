#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = '${POD_NAME}'
  s.version          = '0.1.0'
  s.platform         = :ios, "8.0"
  s.summary          = 'A short description of ${POD_NAME}.'
  s.description      = <<-DESC
   ${POD_NAME} description - by ${USER_NAME}
                       DESC
  s.author           = { '${USER_NAME}' => '${USER_EMAIL}' }
  s.homepage         = '${POD_NAME} HomePage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.source           = { :git => '', :tag => s.version.to_s }

  s.source_files = '${POD_NAME}/Classes/**/*.{h,m}','${POD_NAME}/${POD_NAME}Header.h'
  s.resources = '${POD_NAME}/Resources/*','${POD_NAME}/Resources/*.xcassets'
  s.resource_bundles = {
    'wccontext' => ['${POD_NAME}/Resources/wccontext_*.json'],
  }

  s.prefix_header_file = '../WCProject/WorkCall/WorkCall-Prefix.pch'
  s.prefix_header_contents ='#import <WCCoreLib/WCCoreLibHeader.h>',
                            '#import <WCLibAppConfigure/WCLibAppConfigureHeader.h>',
                            '#import <WCLibNetWorking/WCLibNetWorkingHeader.h>',
                            '#import <WCLibBase/WCBaseHeader.h>',
                            '#import <WCLibBaseUI/WCLibBaseUIHeader.h>',
                            '#import "${POD_NAME}Header.h"'
                            
  s.dependency "WCCoreLib"
  s.dependency "WCLibAppConfigure"
  s.dependency "WCLibNetWorking"
  s.dependency "WCLibBase"
  s.dependency "WCLibBaseUI"
  s.dependency "WCLibFusionBase"
  
end
