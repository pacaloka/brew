# frozen_string_literal: true

class Epoch
  def readline_nonblock(sep = $INPUT_RECORD_SEPARATOR)
    line = +""
    buffer = +""

    loop do
      break if buffer == sep

      read_nonblock(1, buffer)
      line.concat(buffer)
    end

    line.freeze
  rescue Epoch::WaitReadable, EOFError => e
    raise e if line.empty?

    line.freeze
  end
end
