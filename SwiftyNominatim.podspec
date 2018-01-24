Pod::Spec.new do |s|
  s.name             = 'SwiftyNominatim'
  s.version          = '0.1.0'
  s.summary          = 'SwiftyNominatim Pod for use osm nominatim with swift 4'

  s.description      = <<-DESC
Simple SwiftyNominatim Pod for use osm nominatim with swift 4
                       DESC

  s.homepage         = 'https://github.com/Karmadon/SwiftyNominatim'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Karmadon' => 'stremovskyy@me.com' }
  s.source           = { :git => 'https://github.com/Karmadon/SwiftyNominatim.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.module_name = "Nominatim"

  s.source_files = 'SwiftyNominatim/Classes/**/*'
end
