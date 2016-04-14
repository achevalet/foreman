module Net
  module DNS
    class AAAARecord < DNS::ForwardRecord
      def initialize(opts = { })
        super opts
        self.ip = Validations.validate_ip6! self.ip
        self.ipfamily = Socket::AF_INET6
        @type = "AAAA"
      end
    end
  end
end
