Pod::Spec.new do |s|
  s.name         = 'GBRootWrappingViewController'
  s.version      = '1.0.0'
  s.summary      = 'Root view controller wrapper for quickly adding iOS7+ compatiblity to older UIs.'
  s.homepage     = 'https://github.com/lmirosevic/GBRootWrappingViewController'
  s.license      = 'Apache License, Version 2.0'
  s.author       = { 'Luka Mirosevic' => 'luka@goonbee.com' }
  s.platform     = :ios, '6.0'
  s.source       = { :git => 'https://github.com/lmirosevic/GBRootWrappingViewController.git', :tag => s.version.to_s }
  s.source_files  = 'GBRootWrappingViewController/*.{h,m}'
  s.public_header_files = 'GBRootWrappingViewController/*.h'
  s.requires_arc = true
end
