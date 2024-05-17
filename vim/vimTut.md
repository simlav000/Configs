## Command Mode (:)
# Replacing all instances of a string with another
    - `:%s/old_string/new_string/g`
    If you want to enforce the replaced string to be a stand-alone variable name and not a substring, 
    you can enforce word boundaries using `\b`
    - `:%s/\bold_string\b/new_string/g` 
    
