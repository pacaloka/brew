# frozen_string_literal: true

require "os/linux"

class Pathname
  prepend linux
end
