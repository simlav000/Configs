finalString = ""
Lines = []
DuplicatedLines = []

with open("wizard.png", "r") as ascii_image:
  for line in ascii_image:
    lineWithoutNewLine = ""
    for character in line:
      if character != '\n':
        lineWithoutNewLine += character

    Lines.append(lineWithoutNewLine)
    max_line_length = max(len(line) for line in Lines)

for i, line in enumerate(Lines):
  while len(line) < max_line_length:
      line += " "
  Lines[i] = line

for line in Lines:
  # duplicate each line 4 times
  duplicatedLine = ""
  duplicatedLine += 4*line
  #duplicatedLine += duplicatedLine
  duplicatedLine += "\n"
  DuplicatedLines.append(duplicatedLine)

for line in DuplicatedLines:
  print(line, end="")





    






        
        

