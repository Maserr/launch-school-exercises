# For a real challenge, try word wrapping very long messages so they appear on
# multiple wrapped_message, but still within a box.

def wrap_message(message, size)
  wrapped_message = Array.new(1, "")
  index = 0

  message.split.each do |word|
    if (wrapped_message[index] + word).length <= size - 4
      wrapped_message[index] += " " + word
    else
      index += 1
      wrapped_message[index] = " " + word
    end
  end

  wrapped_message.each { |line| line.strip! }
end

def print_in_box(message)
  output = wrap_message(message, 76)
  biggest_line = output.sort_by { |line| line.length }[-1].length

  border_line = "+#{"-" * (biggest_line + 2)}+"
  empty_line = "|#{" " * (biggest_line + 2)}|"
  #
  puts border_line
  puts empty_line
  output.each {|line| puts "| #{line + (" " * (biggest_line - line.length))} |"}
  puts empty_line
  puts border_line
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur metus felis, fringilla mollis sodales sed, varius et velit. Nam rhoncus eu lectus ut auctor. Phasellus tempor velit malesuada faucibus varius. Cras dapibus ligula ut arcu molestie, id tincidunt lacus sollicitudin. Suspendisse quis pharetra nisl. Maecenas pulvinar est sem. Mauris ultrices tortor arcu, non dictum quam tempus blandit. Curabitur nec egestas velit. Phasellus accumsan ornare sapien, ut fermentum dolor aliquam et. Cras tincidunt erat nec lacinia consequat. Donec ante nulla, pulvinar a tortor in, facilisis euismod nisl. Nunc a nulla vitae nisl porta posuere eu in nisl.')
print_in_box('')
