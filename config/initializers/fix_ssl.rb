require 'open-uri'
require 'net/https'

#module Net
#  class HTTP
#    alias_method :original_use_ssl=, :use_ssl=#
#
#    def use_ssl=(flag)
#      self.ca_file = "/Users/haibt/.ssl/server.crt"  # for Centos/Redhat
#      self.verify_mode = OpenSSL::SSL::VERIFY_NONE
#      self.original_use_ssl = flag
#    end
#  end
#end

class Net::HTTP   
    alias_method :origConnect, :connect
    
    def connect
      self.verify_mode = OpenSSL::SSL::VERIFY_NONE
      origConnect
    end
end