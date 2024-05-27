# Replacing all instances of a string with another
    - `:%s/old_string/new_string/g`
    If you want to enforce the replaced string to be a stand-alone variable name and not a substring, 
    you can enforce word boundaries using `\b`
    - `:%s/\bold_string\b/new_string/g` 
# Opening a terminal within vim
    - `:term` turns the current window into a terminal. Leave by entering the `quit` command.
    
# Splitting windows
    - `<C-w>+s`              causes a window split vertically.
    - `<C-w>+c`              closes current window
    - `<C-w>+{hjkl}`         allows you to jump from the current window left, up, down and right, respectively.
    - `:res +/- n`           Resizes the current window integer `n` amount
