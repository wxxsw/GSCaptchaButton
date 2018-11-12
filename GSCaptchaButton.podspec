Pod::Spec.new do |s|
    s.name         = 'GSCaptchaButton'
    s.version      = '1.0.0'
    s.summary      = '为普通按钮增加验证码倒计时功能，不影响按钮样式'
    s.homepage     = 'https://github.com/wxxsw/GSCaptchaButton'
    s.license      = 'MIT'
    
    s.author       = { 'Gesen' => 'i@gesen.me' }
    s.source       = { :git => 'https://github.com/wxxsw/GSCaptchaButton.git', :tag => s.version.to_s }
    
    s.source_files = 'GSCaptchaButton/Classes/**/*'
    
    s.ios.deployment_target = '8.0'
    s.swift_version = '4.2'
end
