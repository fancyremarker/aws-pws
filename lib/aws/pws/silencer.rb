module AWS
  module PWS
    module Silencer
      # Override Paint method to avoid polluting `env` and `cat` output
      def pa(*)
      end

      # Disable printing in PWS#read_safe:
      # https://github.com/janlelis/pws/blob/master/lib/pws.rb#L230
      def print(*)
      end
    end
  end
end
