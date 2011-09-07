# Understand the CommonJS module system
# Have dependencies

COLOR_CODES = 
    black:     30
    red:       31
    green:     32
    yellow:    33
    blue:      34
    magenta:   35
    cyan:      36
    white:     37
    
generateColorFns = (obj) ->
    for fn, ascii_seq of COLOR_CODES
        code = colorCode[fn]
        do (code) ->
            obj[fn] = (str) -> "\033[" + code.toString() + "m"  + str + "\033[0m"
            
generateColorFns exports
