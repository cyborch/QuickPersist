Pod::Spec.new do |s|
  s.name         = 'QuickPersist'
  s.version      = '1.1.0'
  s.summary      = 'Easily save Structs to Realm.'
  s.description  = <<-DESC
    QuickPersist lets you easily save any data type to a Realm database.
  DESC
  s.homepage     = 'https://github.com/cszatma/QuickPersist'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 
    'Christopher Szatmary' => 'cs@christopherszatmary.com',
    'Anders Borch' => 'anders@cyborch.com'
  }
  s.source       = { :git => 'https://github.com/cyborch/QuickPersist.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
  s.source_files  = 'Sources/**/*.{swift}'
  s.frameworks  = 'Foundation'
  s.dependency 'RealmSwift'
end
