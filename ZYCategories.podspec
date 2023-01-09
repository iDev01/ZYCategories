Pod::Spec.new do |s|

  s.name         = "ZYCategories"
  s.version      = "1.0.7"
  s.summary      = "ZYCategories."

  s.description  = <<-DESC
                    this is ZYCategories
                   DESC

  s.homepage     = "https://github.com/iDev01/ZYCategories"

  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "iDev01" => "ideveloper_mahao@163.com" }
  s.platform     = :ios

  s.ios.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/iDev01/ZYCategories.git", :tag => s.version.to_s }

  s.source_files  = "ZYCategories/**/*.{h,m}"

  s.requires_arc = true

end
