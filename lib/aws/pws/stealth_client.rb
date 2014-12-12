require_relative 'client'

module AWS
  module PWS
    class StealthClient < Client
      def initialize
        ::PWS.include(AWS::PWS::Silencer)

        STDERR.print 'Enter PWS password: '
        system 'stty -echo'
        @cli = ::PWS.new(password: gets.chomp)
        system 'stty echo'
        STDERR.puts

        super
      end
    end
  end
end
