require "pry"

# Modify this class so new will optionally let you specify a fixed banner width
# at the time the Banner object is created. The message in the banner should be
# centered within the banner of that width. Decide for yourself how you want to
# handle widths that are either too narrow or too wide.
#
# class Banner
#   def initialize(message)
#     @message = message
#   end
#
#   def to_s
#     [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
#   end
#
#   private
#
#   def horizontal_rule
#     "+-#{'-' * @message.size}-+"
#   end
#
#   def empty_line
#     "| #{' ' * @message.size} |"
#   end
#
#   def message_line
#     "| #{@message} |"
#   end
# end

class Banner
  def initialize(message, banner_size = 80)
    @message = message
    @banner_size = banner_size
    @content_size = @banner_size - 4 # 4 characters for borders and padding
  end

  def to_s
    [horizontal_rule, empty_line, message_lines, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    "+-#{'-' * @content_size}-+"
  end

  def empty_line
    "| #{' ' * @content_size} |"
  end

  def message_lines
    message = Array.new(1, [])
    line = 0

    @message.split.each do |word|
      if (message[line].join(' ') + word).size >= @content_size
        line += 1
        message[line] = []
      end
      message[line] << word
    end

    message.map { |line| "| #{line.join(' ').center(@content_size)} |" }
  end
end

banner = Banner.new('Hello world!', 40)
puts banner
# +--------------------------------------+
# |                                      |
# |             Hello world!             |
# |                                      |
# +--------------------------------------+

banner = Banner.new('To boldly go where no one has gone before.', 20)
puts banner
# +------------------+
# |                  |
# |   To boldly go   |
# | where no one has |
# |   gone before.   |
# |                  |
# +------------------+

banner = Banner.new('')
puts banner
# +------------------------------------------------------------------------------+
# |                                                                              |
# |                                                                              |
# |                                                                              |
# +------------------------------------------------------------------------------+
