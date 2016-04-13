module Barabut
	class SMS
		def self.send_sms(recipient, message_text, opts={})
			valid_options = opts.only(:from, :start_date, :stop_date, :turkish, :validity_period)
			valid_options.merge!(:start_date => Barabut::DATE.now) unless valid_options[:start_date]
			valid_options.merge!(:validity_period => 1440) unless valid_options[:validity_period]

			body = Barabut::XmlBody.send_sms_body(recipient, message_text, valid_options)

			response = send_request(body)

			result = parse_response(response)
			code = result["Response"].first["Status"].first["Code"].first rescue "500"
			sms_id = result["Response"].first["MessageId"].first rescue nil
			return {code: code, sms_id: sms_id}
		end

		def sms_status
			'OK status'
		end

		def check_balance
			'OK Balance'
		end

		def initialize(auth_options={})
			@auth_options = auth_options
		end

		def self.send_request(body)
		    header = { 
		      "Content-Type" => "text/xml; charset=utf-8", 
		      "Content-Length" => body.bytesize.to_s, 
		      "Accept" => "*/*" 
		    }

		    request = Net::HTTP::Post.new('/v1/xml/syncreply/Submit', header)
		    request.body = body
		    #puts  "Request #{@header} #{request.body} "
		    response = Net::HTTP.new(Barabut.configuration.host, Barabut.configuration.port).start {|http| http.request(request) }
		    #puts "Response #{response.code} #{response.message}: #{response.body}"

		    # parser = XMLRPC::XMLParser::REXMLStreamParser::StreamListener.new
		    # parser.parse(response.body)

		    return response.body
		end

		def self.parse_response(body)
			data = XmlSimple.xml_in(body)
		end
	end
end