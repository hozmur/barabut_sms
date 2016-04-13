module Barabut
	class XmlBody
		def self.send_sms_body(recipient, message_text, valid_options)
			"<?xml version='1.0'?>
			<Submit xmlns:i='http://www.w3.org/2001/XMLSchema-instance' xmlns='SmsApi'>
			    <Credential>
			            <Password>#{Barabut.configuration.password}</Password>
			            <Username>#{Barabut.configuration.usercode}</Username>
			    </Credential>
			    <DataCoding>#{valid_options[:unicode] ? 'UCS2' : 'Default'}</DataCoding>
			    <Header>
			            <From>#{valid_options[:from]}</From>
			    </Header>
			    <Message><![CDATA[#{message_text}]]></Message>
			    <To xmlns:d2p1='http://schemas.microsoft.com/2003/10/Serialization/Arrays'>
			            <d2p1:string>#{recipient}</d2p1:string>
			    </To>
			</Submit>"
		end
	end
end