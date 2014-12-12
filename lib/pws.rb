require 'pws'

class PWS
  # Override Paint method to avoid polluting `env` and `cat` output
  def pa(*)
  end
end
