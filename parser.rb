file = open("cap-5-itens.txt", "r")
contents = file.readlines
excerpt_start = contents.index { |line| line.include?("ARMADURAS LEVES") }
excerpt_end = contents.index { |line| line.include?("[[armor-end]]") }
excerpt = contents[excerpt_start...excerpt_end]

# Remove meaningless line breaks
test = []
excerpt.each do |line|
  if line.length > 40 &&
     line.chomp[-1] != "."
    test << line.delete("\n")
  else
    test << line
  end
end

# Find which paragraphs contain items
items = []
test.join.split("\n").each do |paragraph|
  if paragraph[0...23].include?(".")
    items << paragraph + "\n\n"
  end
end

puts items

# puts test.join
# parsed_file = open("parsed-file.txt", "w")
# parsed_file.puts test.join
# parsed_file.close