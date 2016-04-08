require 'net/http'
require 'net/https'
require 'core-ext/hash'
require 'xmlsimple'

require 'barabut_sms/configuration'
require 'barabut_sms/sms'
require 'barabut_sms/date'
require 'barabut_sms/xml_body'

module Barabut
  def self.root
    File.expand_path('../..', __FILE__)
  end
end

