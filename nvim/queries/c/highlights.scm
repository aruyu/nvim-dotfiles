;; Write your query here like `(node) @capture`,
;; put the cursor under the capture to highlight the matches.


;; FIRST

((identifier) @c_variable
    (#set! "priority" 95))
[
    (field_identifier)
    (statement_identifier)
] @c_variable




;; BlueGreen

name: (type_identifier) @c_keyword_value
declarator: (type_identifier) @c_keyword_value

[
    "__attribute__"
    "__cdecl"
    "__clrcall"
    "__stdcall"
    "__fastcall"
    "__thiscall"
    "__vectorcall"
    "_unaligned"
    "__unaligned"
    "__declspec"
    (attribute_declaration)
] @c_attribute




;; Blue

[
    (type_qualifier)
    (primitive_type)
    (sized_type_specifier)
    (storage_class_specifier)
] @c_type

[
    (null)
    (true)
    (false)
] @c_boolean

[
    "struct"
    "typedef"
    "union"
    "enum"
    "sizeof"
    "volatile"
    "extern"
] @c_keyword

((identifier) @c_constant
    (#lua-match? @c_constant "^[A-Z][A-Z0-9_]+$"))
((type_identifier) @c_constant
    (#lua-match? @c_constant "^[A-Z][A-Z0-9_]+$"))




;; Yellow

[
    (preproc_arg)
    (preproc_defined)
] @c_function_macro

(call_expression
    function: (identifier) @c_function_call)
(call_expression
    function: (field_expression
        field: (field_identifier) @c_function_call))
(function_declarator
    declarator: (identifier) @c_function)
(preproc_function_def
    name: (identifier) @c_function)




;; Pink

[
    "while"
    "for"
    "do"
    "continue"
    "break"
] @c_repeat

[
    "if"
    "else"
    "goto"
    "switch"
    "case"
    "default"
    "return"
] @c_conditional

[
    "#if"
    "#ifdef"
    "#ifndef"
    "#else"
    "#elif"
    "#endif"
    "#define"
    "#include"
  (preproc_directive)
] @c_preproc




;; Others

[
    "(" ")"

    "[" "]"

    "{" "}"
] @c_bracket

[
    "="

    "-"
    "*"
    "/"
    "+"
    "%"

    "~"
    "|"
    "&"
    "^"
    "<<"
    ">>"

    "->"
    "."

    "<"
    "<="
    ">="
    ">"
    "=="
    "!="

    "!"
    "&&"
    "||"

    "-="
    "+="
    "*="
    "/="
    "%="
    "|="
    "&="
    "^="
    ">>="
    "<<="
    "--"
    "++"
] @c_operator

[
    ";" ":"
    "," "..."
] @c_punctuation

(comma_expression
    [ "," ] @c_punctuation)
(conditional_expression
    [ "?" ":" ] @c_punctuation)




;; FINAL

[
    (string_literal)
    (system_lib_string)
] @c_string

(number_literal) @number
(char_literal) @character

(comment) @comment @spell
(ERROR) @error

