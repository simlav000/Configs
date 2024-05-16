with open("wizard.png", "r") as ascii_image:
    # rstrip() removes any trailing ' ' and '\n'
    array = [line.rstrip() for line in ascii_image]

    # find how many spaces to add for all lines to have the same length
    largest_line_length = max(len(line) for line in array)

    multiple = 4 # how many copies
    # ljust(size, char) pads the string out with char until it reaches size
    array = [line.ljust(largest_line_length, ' ') * multiple for line in array]
    for line in array:
        print(line)
