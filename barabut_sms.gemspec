Gem::Specification.new do |s|
  s.name        = 'barabut_sms'
  s.version     = '0.1.2'
  s.date        = '2016-04-08'
  s.summary     = "SMS sender for Turkey barabut.com!"
  s.description = "This gem is for sending SMS using Barabut.com services"
  s.authors     = ["IPOS - Huseyin Gomleksizoglu"]
  s.email       = 'huseyin.gomleksizoglu@ipos.com.tr'
  s.files       = ["lib/barabut_sms.rb","lib/core-ext/hash.rb", "lib/barabut_sms/configuration.rb", "lib/barabut_sms/sms.rb", "lib/barabut_sms/date.rb", "lib/barabut_sms/xml_body.rb"]
  s.homepage    =
    'http://rubygems.org/gems/barabut_sms'
  s.license       = 'MIT'
  s.add_dependency "xml-simple"
end