#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.9
# from Racc grammer file "".
#

require 'racc/parser.rb'
module EdifactParser
  class Parser < Racc::Parser


  require_relative 'handler'

  attr_reader :handler

  def initialize(tokenizer, handler = Handler.new)
    @tokenizer = tokenizer
    @handler   = handler
    super()
  end

  def next_token
    @tokenizer.next_token
  end

  def parse
    do_parse
    handler
  end
##### State transition tables begin ###

racc_action_table = [
    24,    23,    24,    23,    25,    28,    25,     7,    24,    23,
     4,    14,    15,     7,    14,     7,     8,    25,     7 ]

racc_action_check = [
    17,    17,    13,    13,    17,    17,    13,     0,    20,    20,
     0,     5,     8,     3,    11,     2,     1,    19,    10 ]

racc_action_pointer = [
     5,    16,    13,    11,   nil,     5,   nil,   nil,    12,   nil,
    16,     8,   nil,    -1,   nil,   nil,   nil,    -3,   nil,    10,
     5,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil ]

racc_action_default = [
   -27,   -27,    -1,   -27,    -3,   -27,    -6,   -17,   -27,    -5,
    -2,    -4,    -8,   -11,   -22,    31,    -7,    -9,   -13,   -16,
   -27,   -18,   -19,   -20,   -21,   -23,   -10,   -12,   -26,   -14,
   -15 ]

racc_goto_table = [
     9,    12,    18,     1,    11,    17,    27,    16,     9,     2,
    26,     3,    10,    30,    29 ]

racc_goto_check = [
     4,     7,    11,     1,     6,     9,    11,     7,     4,     2,
    10,     3,     2,    12,    13 ]

racc_goto_pointer = [
   nil,     3,     9,    11,    -2,   nil,    -1,    -4,   nil,    -8,
    -7,   -11,    -7,    -5,   nil,   nil,   nil ]

racc_goto_default = [
   nil,   nil,   nil,   nil,     6,     5,   nil,   nil,    13,   nil,
   nil,   nil,    19,    20,    21,    22,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 10, :_reduce_none,
  2, 10, :_reduce_none,
  1, 12, :_reduce_none,
  2, 13, :_reduce_none,
  2, 11, :_reduce_none,
  1, 11, :_reduce_none,
  2, 15, :_reduce_none,
  1, 15, :_reduce_none,
  2, 16, :_reduce_none,
  3, 16, :_reduce_none,
  1, 16, :_reduce_none,
  2, 18, :_reduce_none,
  1, 18, :_reduce_none,
  2, 20, :_reduce_none,
  2, 20, :_reduce_none,
  1, 20, :_reduce_none,
  1, 14, :_reduce_17,
  1, 21, :_reduce_none,
  1, 21, :_reduce_none,
  1, 24, :_reduce_20,
  1, 23, :_reduce_21,
  1, 17, :_reduce_22,
  1, 22, :_reduce_none,
  1, 25, :_reduce_none,
  1, 25, :_reduce_none,
  1, 19, :_reduce_26 ]

racc_reduce_n = 27

racc_shift_n = 31

racc_token_table = {
  false => 0,
  :error => 1,
  :QUALIFIER => 2,
  :STRING => 3,
  :NUMBER => 4,
  :OPTIONAL_BEGIN => 5,
  "+" => 6,
  ":" => 7,
  "'" => 8 }

racc_nt_base = 9

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "QUALIFIER",
  "STRING",
  "NUMBER",
  "OPTIONAL_BEGIN",
  "\"+\"",
  "\":\"",
  "\"'\"",
  "$start",
  "document",
  "segments",
  "beginning",
  "segment",
  "qual",
  "elements",
  "element",
  "plus",
  "components",
  "segment_end",
  "component",
  "scalar",
  "colon",
  "string",
  "number",
  "starter" ]

Racc_debug_parser = true

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

# reduce 2 omitted

# reduce 3 omitted

# reduce 4 omitted

# reduce 5 omitted

# reduce 6 omitted

# reduce 7 omitted

# reduce 8 omitted

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

# reduce 14 omitted

# reduce 15 omitted

# reduce 16 omitted

def _reduce_17(val, _values, result)
 @handler.start_segment; @handler.qualifier val[0] 
    result
end

# reduce 18 omitted

# reduce 19 omitted

def _reduce_20(val, _values, result)
 @handler.scalar val[0] 
    result
end

def _reduce_21(val, _values, result)
 @handler.scalar val[0] 
    result
end

def _reduce_22(val, _values, result)
 @handler.end_element; @handler.start_element 
    result
end

# reduce 23 omitted

# reduce 24 omitted

# reduce 25 omitted

def _reduce_26(val, _values, result)
 @handler.end_element; @handler.end_segment 
    result
end

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class Parser
  end   # module EdifactParser
