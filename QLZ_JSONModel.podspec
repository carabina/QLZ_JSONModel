
Pod::Spec.new do |s|
s.name         = "QLZ_JSONModel"
s.version      = "0.1"
s.summary      = "iOS json analysis."
s.homepage     = "https://github.com/qlz130514988/QLZ_JSONModel"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "qlz130514988." => "https://github.com/qlz130514988" }
s.platform = :ios, "7.0"
s.source   = { :git => 'https://github.com/qlz130514988/QLZ_JSONModel.git', :tag => s.version, :submodules => true }
s.source_files  = "QLZ_JSONModel/*.{h,m}""
s.frameworks = "Foundation"
s.requires_arc = true
s.dependency "QLZ_JSON", "~> 0.1"

end
