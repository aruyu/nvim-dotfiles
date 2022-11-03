;; Write your query here like `(node) @capture`,
;; put the cursor under the capture to highlight the matches.


;; FIRST

(simple_identifier) @v_variable




;; BlueGreen

(module_header
    (simple_identifier) @v_module_value)
(module_instantiation
    (simple_identifier) @v_module_value)
(interface_instantiation 
   (interface_identifier 
      (simple_identifier) @v_module_value))




;; Blue

[
    (port_direction)
    (net_type)
    (integer_vector_type)
    (integer_atom_type)
    (non_integer_type)
] @v_type

[
    "genvar"
    "signed"
    "unsigned"
] @v_type




;; Yellow

[
    (module_keyword)
    "endmodule"
] @v_module

(function_identifier 
   (function_identifier 
      (simple_identifier) @v_function))

(function_subroutine_call 
   (subroutine_call
      (tf_call
         (simple_identifier) @v_function)))

(function_subroutine_call 
   (subroutine_call
      (system_tf_call
         (system_tf_identifier) @v_function)))

(task_identifier
   (task_identifier
      (simple_identifier) @v_task))




;; Pink

[
    ; block delimeters
    "begin"
    "end"
    "program"
    "endprogram"
    "class"
    "endclass"
    "interface"
    "endinterface"
    "package"
    "endpackage"
    "checker"
    "endchecker"
    "config"
    "endconfig"
    "function"
    "endfunction"
    "task"
    "endtask"
    
    "enum"
    "pure"
    "virtual"
    "extends"
    "implements"
    "super"
    (class_item_qualifier)
  
    "parameter"
    "localparam"
    "defparam"
    "assign"
    "typedef"
    "modport"
    "fork"
    "join"
    "join_none"
    "join_any"
    "default"
    "break"
    "assert"
    (unique_priority)
    "tagged"
    "extern"
    "return"
] @v_keyword

[
    (always_keyword)
    (edge_identifier)
    "generate"
    "endgenerate"
    "for"
    "foreach"
    "repeat"
    "forever"
    "initial"
    "while"
] @v_repeat

[
    "if"
    "else"
    "or"
    "and"
    (case_keyword)
    "endcase"
] @v_conditional

[
    (include_compiler_directive)
    (default_nettype_compiler_directive)
    (timescale_compiler_directive)
] @v_preproc 




;; Others

[
    "(" ")"

    "[" "]"

    "{" "}"
] @v_bracket

[
    "="
    "-"
    "+"
    "/"
    "*"
    "^"
    "&"
    "|"
    "&&"
    "||"
    ":"
    (unary_operator)
  
    "'{"
    "<="
    "@"
    "=="
    "!="
    "==="
    "!=="
    "-:"
    "<"
    ">"
    ">="
    "%"
    ">>"
    "<<"
    "|="
    (inc_or_dec_operator)
] @v_operator

(cast
    [ "'" "(" ")" ] @v_operator)

[
    ";" "::"
    "," "."
] @v_punctuation

(event_control
    [ "*" ] @v_repeat)




;; FINAL

[
    (double_quoted_string)
    (string_literal)
] @v_string @spell

[
    (time_literal)
    (primary_literal)
] @number

(comment) @comment @spell
(ERROR) @error

