

Pod::Spec.new do |spec|

  spec.name         = "NPSoftUI"
  spec.version      = "0.1.0"
  spec.summary      = "Soft UI for non-swift ui base"
  spec.description  = "This is soft ui for non-swift ui base"
  spec.homepage     = "https://github.com/nawinest/NWSoftUI"
  spec.license      = ""
  spec.author       = { "Nawin P." => "nawinc.work@gmail.com" }
  spec.source       = { :git => "https://github.com/nawinest/NWSoftUI.git", :tag => spec.version }
  spec.source_files  = "Classes", 'Classes/*.{h,m,swift}'
  spec.exclude_files = "Classes/Exclude"
end
