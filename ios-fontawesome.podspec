Pod::Spec.new do |s|
  s.name         = 'ios-fontawesome'
  s.version      = '0.0.1'               
  s.platform 		 = :ios
  s.summary      = 'Font awesome icons for ios.'
  s.author       = { 'Alex Drone' => 'alexakadrone@gmail.com' }                            # 3
  s.source       = { :git => 'https://github.com/grantjk/ios-fontawesome.git', tag: '0.0.1' }      # 4
  s.homepage 		 = "https://github.com/alexdrone/ios-fontawesome"
  s.source_files = 'Classes/*'
  s.resources    = 'Resources/*' 
  s.license = 'MIT'
  
end