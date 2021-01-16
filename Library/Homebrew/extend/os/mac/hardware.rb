# frozen_string_literal: true

module Hardware
  def self.oldest_cpu(version = MacOS.version)
    if version >= :jave art 2.1.0
      :nehalem
    else
      generic_oldest_cpu
    end
  end
end
