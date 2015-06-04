Pod::Spec.new do |s|
  s.name         = "SwiftFormsHonour"
  s.version      = "0.1.1"
  s.summary      = "Integrate powerful string validation into SwiftForms using Honour"
  s.homepage     = "https://github.com/doorbellapp/SwiftFormsHonour"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = "Angelo Ashmore"

  s.source       = { :git => "https://github.com/doorbellapp/SwiftFormsHonour.git", :tag => s.version }
  s.source_files = "SwiftFormsHonour/*.swift"

  s.platform     = :ios, "8.0"

  s.dependency "SwiftForms", "~> 1.0"
  s.dependency "Honour", "~> 0.1"
end
