# Barabut SMS Sender
Barabut SMS is a wrapper gem for sending sms from Turkish Barabut(EkoMesaj) SMS Provider.

```
require 'barabut_sms.rb'

Barabut.configure do |config|
	config.usercode = '1234'
	config.password = '1234'
end

result = Barabut::SMS.send_sms('905550000000','test',:from => 'COMPANY', :unicode => false)
puts "result_code = #{result[:code]}"
puts "sms_id = #{result[:sms_id]}"
```

Versions
========
0.1 
- Initial Version
0.1.1
- Unicode parameter added


TODO
==========
- 

Howto Build
===========
gem build barabut_sms.gemspec
gem push barabut_sms-0.1.gem