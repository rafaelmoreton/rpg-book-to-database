file = open("cap-5-itens.txt", "r")
contents = file.read
excerpt_start = contents.index("ARMADURAS LEVES")
excerpt_end = contents.index("[[armor-end]]")
excerpt = contents[excerpt_start...excerpt_end]
puts excerpt