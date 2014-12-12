require 'pws'

module AWS
  module PWS
    class Client
      attr_accessor :raw_data, :cli

      def initialize
        @cli ||= ::PWS.new({})
        @raw_data = @cli.instance_variable_get(:@data)
      end

      def read(key)
        return unless raw_data[key]
        raw_data[key][:password]
      end
    end
  end
end
