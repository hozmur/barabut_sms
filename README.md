

require 'barabut_sms.rb'

Barabut.configure do |config|
	config.usercode = '1234'
	config.password = '1234'
end

result = Barabut::SMS.send_sms('123','test',:from => 'COMPANY', :turkish => true)
puts "result_code = #{result[:code]}"
puts "sms_id = #{result[:sms_id]}"

Versions
========
0.1 
- Initial Version


TODO
==========
- 

Howto Build
===========
gem build barabut_sms.gemspec
gem push barabut_sms-0.1.gem