import sys

def main():

    if len(sys.argv) <= 2:
        print("Usage: 'python ascii_duplication_glitch.py <image> <n>' where n is the number of times to duplicate")
        return 1
    
    with open(sys.argv[1], "r") as ascii_image:
        # rstrip() removes any trailing ' ' and '\n'
        array = [line.rstrip() for line in ascii_image]
    
        # find how many spaces to add for all lines to have the same length
        largest_line_length = max(len(line) for line in array)
    
        try:
            multiple = int(sys.argv[2]) # how many copies
        except TypeError:
            print(f"{sys.argv[2]} must be an integer")
            return 1
        # ljust(size, char) pads the string out with char until it reaches size
        array = [line.ljust(largest_line_length, ' ') * multiple for line in array]
        for line in array:
            print(line)

if __name__ == fr"__main__":
    main()
