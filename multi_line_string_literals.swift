// NEW in Swift 4
// See SE 168
let quotation = """

    This is a multi-
    line String. Note
    that indentation at the start each quoted line is removed,
    as long as it matches the indentation of the closing quote.

    Interesting, eh?
"""
// if the closing quote indentation > text indentation -> error
// if the closing quote indentation < text indentation -> each line in the string will receive additional leading spaces

let quot2 = """
A very big box
sailed up
then whizzed
quickly from Japan
"""

let quot3 = "A very big box\nsailed up\nthen whizzed\nquickly from Japan"

// note that the compiler adds a linebreak character to the end of each line in a multi-line string literal
// hence quot2 and quot3 above are equal
quot2 == quot3 // true
