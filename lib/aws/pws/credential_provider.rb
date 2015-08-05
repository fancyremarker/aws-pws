require 'aws/pws'
require 'aws-sdk'
require 'aws/core'

module AWS
  module PWS
    class CredentialProvider
      include AWS::Core::CredentialProviders::Provider

      attr_reader :client

      def initialize
        @client = AWS::PWS::Client.new
      end

      # rubocop:disable AccessorMethodName
      def get_credentials
        {
          access_key_id: client.read('AWS_ACCESS_KEY_ID'),
          secret_access_key: client.read('AWS_SECRET_ACCESS_KEY')
        }
      end
      # rubocop:enable AccessorMethodName
    end
  end
end
