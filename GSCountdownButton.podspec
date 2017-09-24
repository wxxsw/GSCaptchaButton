Pod::Spec.new do |s|
  s.name         = "GSCountdownButton"
  s.version      = "0.4.0"
  s.summary      = "Easy to use countdown button."
  s.homepage     = "https://github.com/wxxsw/GSMessages"

  s.license      = 'MIT'
  s.author       = { "GeSen" => "i@gesen.me" }
  s.source       = { :git => "https://github.com/wxxsw/GSCountdownButton.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'GSCountdownButton'
end
