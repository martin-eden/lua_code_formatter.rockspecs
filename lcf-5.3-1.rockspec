package = 'lcf'
version = '5.3-1'

source = {
  url = 'git://github.com/martin-eden/lua_code_formatter.git',
  branch = '5.3',
}

description = {
  summary = 'Lua code formatter.',
  detailed = [[
Formats any valid lua 5.3 code.

Main advantage is that it wraps code lines to maintain readability.
Efforts are made to represent code in more easy to understand form,
not the shortest one.
]],
  license = 'GPL v3',
}

dependencies = {
  'lua ~> 5.3',
}

build = {
  type = 'builtin',
  install = {
    bin = {
      ['lua.reformat'] = 'lua_reformat.sh',
    },
  },
  modules = {
    ['lcf.lua_reformat'] = 'lua_reformat.lua',
    ['lcf.workshop.base'] = 'workshop/base.lua',
    ['lcf.workshop.file.as_string'] = 'workshop/file/as_string.lua',
    ['lcf.workshop.file.exists'] = 'workshop/file/exists.lua',
    ['lcf.workshop.file.get_size'] = 'workshop/file/get_size.lua',
    ['lcf.workshop.file.get_unique_name'] = 'workshop/file/get_unique_name.lua',
    ['lcf.workshop.file.safe_open'] = 'workshop/file/safe_open.lua',
    ['lcf.workshop.file.text_file_as_string'] = 'workshop/file/text_file_as_string.lua',
    ['lcf.workshop.formats.lua.compile.formatter'] = 'workshop/formats/lua/compile/formatter.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.expression'] = 'workshop/formats/lua/compile/formatter/handlers/expression.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.expressions.data_types.boolean'] = 'workshop/formats/lua/compile/formatter/handlers/expressions/data_types/boolean.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.expressions.data_types.nil'] = 'workshop/formats/lua/compile/formatter/handlers/expressions/data_types/nil.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.expressions.data_types.number'] = 'workshop/formats/lua/compile/formatter/handlers/expressions/data_types/number.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.expressions.data_types.string'] = 'workshop/formats/lua/compile/formatter/handlers/expressions/data_types/string.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.expressions.data_types.table'] = 'workshop/formats/lua/compile/formatter/handlers/expressions/data_types/table.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.expressions.data_types.type_function'] = 'workshop/formats/lua/compile/formatter/handlers/expressions/data_types/type_function.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.expressions.function_call'] = 'workshop/formats/lua/compile/formatter/handlers/expressions/function_call.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.expressions.name'] = 'workshop/formats/lua/compile/formatter/handlers/expressions/name.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.expressions.var_link'] = 'workshop/formats/lua/compile/formatter/handlers/expressions/var_link.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.expressions.vararg'] = 'workshop/formats/lua/compile/formatter/handlers/expressions/vararg.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.interface'] = 'workshop/formats/lua/compile/formatter/handlers/interface.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.statements'] = 'workshop/formats/lua/compile/formatter/handlers/statements.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.statements.assignment'] = 'workshop/formats/lua/compile/formatter/handlers/statements/assignment.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.statements.blocks.do_block'] = 'workshop/formats/lua/compile/formatter/handlers/statements/blocks/do_block.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.statements.blocks.generic_for_block'] = 'workshop/formats/lua/compile/formatter/handlers/statements/blocks/generic_for_block.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.statements.blocks.if_block'] = 'workshop/formats/lua/compile/formatter/handlers/statements/blocks/if_block.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.statements.blocks.local_named_function'] = 'workshop/formats/lua/compile/formatter/handlers/statements/blocks/local_named_function.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.statements.blocks.named_function'] = 'workshop/formats/lua/compile/formatter/handlers/statements/blocks/named_function.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.statements.blocks.numeric_for_block'] = 'workshop/formats/lua/compile/formatter/handlers/statements/blocks/numeric_for_block.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.statements.blocks.repeat_block'] = 'workshop/formats/lua/compile/formatter/handlers/statements/blocks/repeat_block.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.statements.blocks.while_block'] = 'workshop/formats/lua/compile/formatter/handlers/statements/blocks/while_block.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.statements.break_statement'] = 'workshop/formats/lua/compile/formatter/handlers/statements/break_statement.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.statements.goto_statement'] = 'workshop/formats/lua/compile/formatter/handlers/statements/goto_statement.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.statements.label_statement'] = 'workshop/formats/lua/compile/formatter/handlers/statements/label_statement.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.statements.local_assignment'] = 'workshop/formats/lua/compile/formatter/handlers/statements/local_assignment.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.statements.return_statement'] = 'workshop/formats/lua/compile/formatter/handlers/statements/return_statement.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.wrappers.bracket_expr'] = 'workshop/formats/lua/compile/formatter/handlers/wrappers/bracket_expr.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.wrappers.colon_name'] = 'workshop/formats/lua/compile/formatter/handlers/wrappers/colon_name.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.wrappers.dot_list'] = 'workshop/formats/lua/compile/formatter/handlers/wrappers/dot_list.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.wrappers.dot_name'] = 'workshop/formats/lua/compile/formatter/handlers/wrappers/dot_name.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.wrappers.expr_list'] = 'workshop/formats/lua/compile/formatter/handlers/wrappers/expr_list.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.wrappers.func_args'] = 'workshop/formats/lua/compile/formatter/handlers/wrappers/func_args.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.wrappers.function_params'] = 'workshop/formats/lua/compile/formatter/handlers/wrappers/function_params.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.wrappers.name_list'] = 'workshop/formats/lua/compile/formatter/handlers/wrappers/name_list.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.wrappers.name_parts'] = 'workshop/formats/lua/compile/formatter/handlers/wrappers/name_parts.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.wrappers.par_expr'] = 'workshop/formats/lua/compile/formatter/handlers/wrappers/par_expr.lua',
    ['lcf.workshop.formats.lua.compile.formatter.handlers.wrappers.ref_list'] = 'workshop/formats/lua/compile/formatter/handlers/wrappers/ref_list.lua',
    ['lcf.workshop.formats.lua.compile.formatter.init'] = 'workshop/formats/lua/compile/formatter/init.lua',
    ['lcf.workshop.formats.lua.compile.formatter.interface'] = 'workshop/formats/lua/compile/formatter/interface.lua',
    ['lcf.workshop.formats.lua.compile.formatter.process_block'] = 'workshop/formats/lua/compile/formatter/process_block.lua',
    ['lcf.workshop.formats.lua.compile.formatter.process_block_multiline'] = 'workshop/formats/lua/compile/formatter/process_block_multiline.lua',
    ['lcf.workshop.formats.lua.compile.formatter.process_block_oneline'] = 'workshop/formats/lua/compile/formatter/process_block_oneline.lua',
    ['lcf.workshop.formats.lua.compile.formatter.process_list'] = 'workshop/formats/lua/compile/formatter/process_list.lua',
    ['lcf.workshop.formats.lua.compile.formatter.process_list_variative'] = 'workshop/formats/lua/compile/formatter/process_list_variative.lua',
    ['lcf.workshop.formats.lua.compile.formatter.process_node'] = 'workshop/formats/lua/compile/formatter/process_node.lua',
    ['lcf.workshop.formats.lua.compile.formatter.represent'] = 'workshop/formats/lua/compile/formatter/represent.lua',
    ['lcf.workshop.formats.lua.compile.formatter.representation_is_allowed'] = 'workshop/formats/lua/compile/formatter/representation_is_allowed.lua',
    ['lcf.workshop.formats.lua.compile.formatter.state_keeper.enter_level'] = 'workshop/formats/lua/compile/formatter/state_keeper/enter_level.lua',
    ['lcf.workshop.formats.lua.compile.formatter.state_keeper.get_child_state'] = 'workshop/formats/lua/compile/formatter/state_keeper/get_child_state.lua',
    ['lcf.workshop.formats.lua.compile.formatter.state_keeper.get_state'] = 'workshop/formats/lua/compile/formatter/state_keeper/get_state.lua',
    ['lcf.workshop.formats.lua.compile.formatter.state_keeper.init'] = 'workshop/formats/lua/compile/formatter/state_keeper/init.lua',
    ['lcf.workshop.formats.lua.compile.formatter.state_keeper.interface'] = 'workshop/formats/lua/compile/formatter/state_keeper/interface.lua',
    ['lcf.workshop.formats.lua.compile.formatter.state_keeper.leave_level'] = 'workshop/formats/lua/compile/formatter/state_keeper/leave_level.lua',
    ['lcf.workshop.formats.lua.compile.formatter.state_keeper.set_child_state'] = 'workshop/formats/lua/compile/formatter/state_keeper/set_child_state.lua',
    ['lcf.workshop.formats.lua.compile.formatter.state_keeper.set_state'] = 'workshop/formats/lua/compile/formatter/state_keeper/set_state.lua',
    ['lcf.workshop.formats.lua.compile.formatter.variate'] = 'workshop/formats/lua/compile/formatter/variate.lua',
    ['lcf.workshop.formats.lua.is_identifier'] = 'workshop/formats/lua/is_identifier.lua',
    ['lcf.workshop.formats.lua.keywords'] = 'workshop/formats/lua/keywords.lua',
    ['lcf.workshop.formats.lua.load'] = 'workshop/formats/lua/load.lua',
    ['lcf.workshop.formats.lua.long_quote_pattern'] = 'workshop/formats/lua/long_quote_pattern.lua',
    ['lcf.workshop.formats.lua.save'] = 'workshop/formats/lua/save.lua',
    ['lcf.workshop.formats.lua.syntax'] = 'workshop/formats/lua/syntax.lua',
    ['lcf.workshop.formats.lua.syntax.expressions.bracket_expr'] = 'workshop/formats/lua/syntax/expressions/bracket_expr.lua',
    ['lcf.workshop.formats.lua.syntax.expressions.expr_list'] = 'workshop/formats/lua/syntax/expressions/expr_list.lua',
    ['lcf.workshop.formats.lua.syntax.expressions.expression'] = 'workshop/formats/lua/syntax/expressions/expression.lua',
    ['lcf.workshop.formats.lua.syntax.expressions.var_link'] = 'workshop/formats/lua/syntax/expressions/var_link.lua',
    ['lcf.workshop.formats.lua.syntax.expressions.vararg'] = 'workshop/formats/lua/syntax/expressions/vararg.lua',
    ['lcf.workshop.formats.lua.syntax.statements.break_statement'] = 'workshop/formats/lua/syntax/statements/break_statement.lua',
    ['lcf.workshop.formats.lua.syntax.statements.call_assign'] = 'workshop/formats/lua/syntax/statements/call_assign.lua',
    ['lcf.workshop.formats.lua.syntax.statements.do_block'] = 'workshop/formats/lua/syntax/statements/do_block.lua',
    ['lcf.workshop.formats.lua.syntax.statements.empty_statement'] = 'workshop/formats/lua/syntax/statements/empty_statement.lua',
    ['lcf.workshop.formats.lua.syntax.statements.function_body'] = 'workshop/formats/lua/syntax/statements/function_body.lua',
    ['lcf.workshop.formats.lua.syntax.statements.generic_for_block'] = 'workshop/formats/lua/syntax/statements/generic_for_block.lua',
    ['lcf.workshop.formats.lua.syntax.statements.goto_statement'] = 'workshop/formats/lua/syntax/statements/goto_statement.lua',
    ['lcf.workshop.formats.lua.syntax.statements.if_block'] = 'workshop/formats/lua/syntax/statements/if_block.lua',
    ['lcf.workshop.formats.lua.syntax.statements.label_statement'] = 'workshop/formats/lua/syntax/statements/label_statement.lua',
    ['lcf.workshop.formats.lua.syntax.statements.local_statement'] = 'workshop/formats/lua/syntax/statements/local_statement.lua',
    ['lcf.workshop.formats.lua.syntax.statements.named_function'] = 'workshop/formats/lua/syntax/statements/named_function.lua',
    ['lcf.workshop.formats.lua.syntax.statements.numeric_for_block'] = 'workshop/formats/lua/syntax/statements/numeric_for_block.lua',
    ['lcf.workshop.formats.lua.syntax.statements.repeat_block'] = 'workshop/formats/lua/syntax/statements/repeat_block.lua',
    ['lcf.workshop.formats.lua.syntax.statements.return_statement'] = 'workshop/formats/lua/syntax/statements/return_statement.lua',
    ['lcf.workshop.formats.lua.syntax.statements.statement'] = 'workshop/formats/lua/syntax/statements/statement.lua',
    ['lcf.workshop.formats.lua.syntax.statements.statements'] = 'workshop/formats/lua/syntax/statements/statements.lua',
    ['lcf.workshop.formats.lua.syntax.statements.while_block'] = 'workshop/formats/lua/syntax/statements/while_block.lua',
    ['lcf.workshop.formats.lua.syntax.type_boolean'] = 'workshop/formats/lua/syntax/type_boolean.lua',
    ['lcf.workshop.formats.lua.syntax.type_function'] = 'workshop/formats/lua/syntax/type_function.lua',
    ['lcf.workshop.formats.lua.syntax.type_nil'] = 'workshop/formats/lua/syntax/type_nil.lua',
    ['lcf.workshop.formats.lua.syntax.type_number'] = 'workshop/formats/lua/syntax/type_number.lua',
    ['lcf.workshop.formats.lua.syntax.type_string'] = 'workshop/formats/lua/syntax/type_string.lua',
    ['lcf.workshop.formats.lua.syntax.type_table'] = 'workshop/formats/lua/syntax/type_table.lua',
    ['lcf.workshop.formats.lua.syntax.words.comment'] = 'workshop/formats/lua/syntax/words/comment.lua',
    ['lcf.workshop.formats.lua.syntax.words.name'] = 'workshop/formats/lua/syntax/words/name.lua',
    ['lcf.workshop.formats.lua.syntax.words.name_list'] = 'workshop/formats/lua/syntax/words/name_list.lua',
    ['lcf.workshop.formats.lua.syntax.words.opt_spc'] = 'workshop/formats/lua/syntax/words/opt_spc.lua',
    ['lcf.workshop.formats.lua.syntax.words.particles.long_bracket'] = 'workshop/formats/lua/syntax/words/particles/long_bracket.lua',
    ['lcf.workshop.formats.lua.syntax.words.word'] = 'workshop/formats/lua/syntax/words/word.lua',
    ['lcf.workshop.formats.lua.transform.formatter'] = 'workshop/formats/lua/transform/formatter.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.expression'] = 'workshop/formats/lua/transform/formatter/handlers/expression.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.expressions.bin_op'] = 'workshop/formats/lua/transform/formatter/handlers/expressions/bin_op.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.expressions.boolean'] = 'workshop/formats/lua/transform/formatter/handlers/expressions/boolean.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.expressions.bracket_expr'] = 'workshop/formats/lua/transform/formatter/handlers/expressions/bracket_expr.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.expressions.colon_name'] = 'workshop/formats/lua/transform/formatter/handlers/expressions/colon_name.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.expressions.dot_name'] = 'workshop/formats/lua/transform/formatter/handlers/expressions/dot_name.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.expressions.expr_list'] = 'workshop/formats/lua/transform/formatter/handlers/expressions/expr_list.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.expressions.func_args'] = 'workshop/formats/lua/transform/formatter/handlers/expressions/func_args.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.expressions.function_params'] = 'workshop/formats/lua/transform/formatter/handlers/expressions/function_params.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.expressions.key_val'] = 'workshop/formats/lua/transform/formatter/handlers/expressions/key_val.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.expressions.name'] = 'workshop/formats/lua/transform/formatter/handlers/expressions/name.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.expressions.name_list'] = 'workshop/formats/lua/transform/formatter/handlers/expressions/name_list.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.expressions.nil'] = 'workshop/formats/lua/transform/formatter/handlers/expressions/nil.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.expressions.number'] = 'workshop/formats/lua/transform/formatter/handlers/expressions/number.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.expressions.par_expr'] = 'workshop/formats/lua/transform/formatter/handlers/expressions/par_expr.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.expressions.string'] = 'workshop/formats/lua/transform/formatter/handlers/expressions/string.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.expressions.table'] = 'workshop/formats/lua/transform/formatter/handlers/expressions/table.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.expressions.type_function'] = 'workshop/formats/lua/transform/formatter/handlers/expressions/type_function.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.expressions.un_op'] = 'workshop/formats/lua/transform/formatter/handlers/expressions/un_op.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.expressions.var_link'] = 'workshop/formats/lua/transform/formatter/handlers/expressions/var_link.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.expressions.vararg'] = 'workshop/formats/lua/transform/formatter/handlers/expressions/vararg.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.statements'] = 'workshop/formats/lua/transform/formatter/handlers/statements.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.statements.break_statement'] = 'workshop/formats/lua/transform/formatter/handlers/statements/break_statement.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.statements.call_assign'] = 'workshop/formats/lua/transform/formatter/handlers/statements/call_assign.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.statements.do_block'] = 'workshop/formats/lua/transform/formatter/handlers/statements/do_block.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.statements.else_part'] = 'workshop/formats/lua/transform/formatter/handlers/statements/else_part.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.statements.elseif_part'] = 'workshop/formats/lua/transform/formatter/handlers/statements/elseif_part.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.statements.generic_for_block'] = 'workshop/formats/lua/transform/formatter/handlers/statements/generic_for_block.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.statements.goto_statement'] = 'workshop/formats/lua/transform/formatter/handlers/statements/goto_statement.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.statements.if_block'] = 'workshop/formats/lua/transform/formatter/handlers/statements/if_block.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.statements.if_part'] = 'workshop/formats/lua/transform/formatter/handlers/statements/if_part.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.statements.label_statement'] = 'workshop/formats/lua/transform/formatter/handlers/statements/label_statement.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.statements.local_assignment'] = 'workshop/formats/lua/transform/formatter/handlers/statements/local_assignment.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.statements.local_statement'] = 'workshop/formats/lua/transform/formatter/handlers/statements/local_statement.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.statements.named_function'] = 'workshop/formats/lua/transform/formatter/handlers/statements/named_function.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.statements.numeric_for_block'] = 'workshop/formats/lua/transform/formatter/handlers/statements/numeric_for_block.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.statements.repeat_block'] = 'workshop/formats/lua/transform/formatter/handlers/statements/repeat_block.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.statements.return_statement'] = 'workshop/formats/lua/transform/formatter/handlers/statements/return_statement.lua',
    ['lcf.workshop.formats.lua.transform.formatter.handlers.statements.while_block'] = 'workshop/formats/lua/transform/formatter/handlers/statements/while_block.lua',
    ['lcf.workshop.formats.lua.transform.formatter.init'] = 'workshop/formats/lua/transform/formatter/init.lua',
    ['lcf.workshop.formats.lua.transform.formatter.process_list'] = 'workshop/formats/lua/transform/formatter/process_list.lua',
    ['lcf.workshop.formats.lua.transform.formatter.process_node'] = 'workshop/formats/lua/transform/formatter/process_node.lua',
    ['lcf.workshop.formats.lua.transform.quote_string'] = 'workshop/formats/lua/transform/quote_string.lua',
    ['lcf.workshop.formats.lua.transform.quote_string.custom_quotes'] = 'workshop/formats/lua/transform/quote_string/custom_quotes.lua',
    ['lcf.workshop.formats.lua.transform.quote_string.intact'] = 'workshop/formats/lua/transform/quote_string/intact.lua',
    ['lcf.workshop.formats.lua.transform.quote_string.linear'] = 'workshop/formats/lua/transform/quote_string/linear.lua',
    ['lcf.workshop.formats.lua.transform.quote_string.quote_char'] = 'workshop/formats/lua/transform/quote_string/quote_char.lua',
    ['lcf.workshop.formats.lua.transform.unquote_string'] = 'workshop/formats/lua/transform/unquote_string.lua',
    ['lcf.workshop.formats.lua.transform.unquote_string.linear'] = 'workshop/formats/lua/transform/unquote_string/linear.lua',
    ['lcf.workshop.formats.lua_table.compile.get_result'] = 'workshop/formats/lua_table/compile/get_result.lua',
    ['lcf.workshop.formats.lua_table.compile.init'] = 'workshop/formats/lua_table/compile/init.lua',
    ['lcf.workshop.formats.lua_table.compile.interface'] = 'workshop/formats/lua_table/compile/interface.lua',
    ['lcf.workshop.formats.lua_table.compile.serialize'] = 'workshop/formats/lua_table/compile/serialize.lua',
    ['lcf.workshop.formats.lua_table.compile.serialize_key'] = 'workshop/formats/lua_table/compile/serialize_key.lua',
    ['lcf.workshop.formats.lua_table.compile.serialize_key_value'] = 'workshop/formats/lua_table/compile/serialize_key_value.lua',
    ['lcf.workshop.formats.lua_table.compile.serializers.boolean'] = 'workshop/formats/lua_table/compile/serializers/boolean.lua',
    ['lcf.workshop.formats.lua_table.compile.serializers.function'] = 'workshop/formats/lua_table/compile/serializers/function.lua',
    ['lcf.workshop.formats.lua_table.compile.serializers.nil'] = 'workshop/formats/lua_table/compile/serializers/nil.lua',
    ['lcf.workshop.formats.lua_table.compile.serializers.number'] = 'workshop/formats/lua_table/compile/serializers/number.lua',
    ['lcf.workshop.formats.lua_table.compile.serializers.string'] = 'workshop/formats/lua_table/compile/serializers/string.lua',
    ['lcf.workshop.formats.lua_table.compile.serializers.table'] = 'workshop/formats/lua_table/compile/serializers/table.lua',
    ['lcf.workshop.formats.lua_table.compile.serializers.thread'] = 'workshop/formats/lua_table/compile/serializers/thread.lua',
    ['lcf.workshop.formats.lua_table.compile.serializers.userdata'] = 'workshop/formats/lua_table/compile/serializers/userdata.lua',
    ['lcf.workshop.formats.lua_table.compile.token_givers.any'] = 'workshop/formats/lua_table/compile/token_givers/any.lua',
    ['lcf.workshop.formats.lua_table.compile.token_givers.readable'] = 'workshop/formats/lua_table/compile/token_givers/readable.lua',
    ['lcf.workshop.formats.lua_table_code.compile.get_result'] = 'workshop/formats/lua_table_code/compile/get_result.lua',
    ['lcf.workshop.formats.lua_table_code.compile.init'] = 'workshop/formats/lua_table_code/compile/init.lua',
    ['lcf.workshop.formats.lua_table_code.compile.interface'] = 'workshop/formats/lua_table_code/compile/interface.lua',
    ['lcf.workshop.formats.lua_table_code.compile.put_qualified_key'] = 'workshop/formats/lua_table_code/compile/put_qualified_key.lua',
    ['lcf.workshop.formats.lua_table_code.compile.serialize'] = 'workshop/formats/lua_table_code/compile/serialize.lua',
    ['lcf.workshop.formats.lua_table_code.compile.serialize_subtable'] = 'workshop/formats/lua_table_code/compile/serialize_subtable.lua',
    ['lcf.workshop.formats.lua_table_code.load'] = 'workshop/formats/lua_table_code/load.lua',
    ['lcf.workshop.formats.lua_table_code.save'] = 'workshop/formats/lua_table_code/save.lua',
    ['lcf.workshop.mechs.generic_file_converter.compile'] = 'workshop/mechs/generic_file_converter/compile.lua',
    ['lcf.workshop.mechs.generic_file_converter.finish'] = 'workshop/mechs/generic_file_converter/finish.lua',
    ['lcf.workshop.mechs.generic_file_converter.init'] = 'workshop/mechs/generic_file_converter/init.lua',
    ['lcf.workshop.mechs.generic_file_converter.interface'] = 'workshop/mechs/generic_file_converter/interface.lua',
    ['lcf.workshop.mechs.generic_file_converter.load'] = 'workshop/mechs/generic_file_converter/load.lua',
    ['lcf.workshop.mechs.generic_file_converter.load_func'] = 'workshop/mechs/generic_file_converter/load_func.lua',
    ['lcf.workshop.mechs.generic_file_converter.parse'] = 'workshop/mechs/generic_file_converter/parse.lua',
    ['lcf.workshop.mechs.generic_file_converter.run'] = 'workshop/mechs/generic_file_converter/run.lua',
    ['lcf.workshop.mechs.generic_file_converter.save'] = 'workshop/mechs/generic_file_converter/save.lua',
    ['lcf.workshop.mechs.generic_file_converter.save_func'] = 'workshop/mechs/generic_file_converter/save_func.lua',
    ['lcf.workshop.mechs.generic_file_converter.say'] = 'workshop/mechs/generic_file_converter/say.lua',
    ['lcf.workshop.mechs.generic_loader'] = 'workshop/mechs/generic_loader.lua',
    ['lcf.workshop.mechs.geometry.1d.segments.is_inside'] = 'workshop/mechs/geometry/1d/segments/is_inside.lua',
    ['lcf.workshop.mechs.graph.assembly_order'] = 'workshop/mechs/graph/assembly_order.lua',
    ['lcf.workshop.mechs.graph.dfs'] = 'workshop/mechs/graph/dfs.lua',
    ['lcf.workshop.mechs.graph.dfs.dfs'] = 'workshop/mechs/graph/dfs/dfs.lua',
    ['lcf.workshop.mechs.graph.dfs.interface'] = 'workshop/mechs/graph/dfs/interface.lua',
    ['lcf.workshop.mechs.indents_table'] = 'workshop/mechs/indents_table.lua',
    ['lcf.workshop.mechs.name_giver'] = 'workshop/mechs/name_giver.lua',
    ['lcf.workshop.mechs.parser'] = 'workshop/mechs/parser.lua',
    ['lcf.workshop.mechs.parser.folder.fold'] = 'workshop/mechs/parser/folder/fold.lua',
    ['lcf.workshop.mechs.parser.folder.get_struc'] = 'workshop/mechs/parser/folder/get_struc.lua',
    ['lcf.workshop.mechs.parser.folder.init'] = 'workshop/mechs/parser/folder/init.lua',
    ['lcf.workshop.mechs.parser.folder.interface'] = 'workshop/mechs/parser/folder/interface.lua',
    ['lcf.workshop.mechs.parser.handy'] = 'workshop/mechs/parser/handy.lua',
    ['lcf.workshop.mechs.parser.link'] = 'workshop/mechs/parser/link.lua',
    ['lcf.workshop.mechs.parser.marker.get_struc'] = 'workshop/mechs/parser/marker/get_struc.lua',
    ['lcf.workshop.mechs.parser.marker.init'] = 'workshop/mechs/parser/marker/init.lua',
    ['lcf.workshop.mechs.parser.marker.interface'] = 'workshop/mechs/parser/marker/interface.lua',
    ['lcf.workshop.mechs.parser.marker.on_match'] = 'workshop/mechs/parser/marker/on_match.lua',
    ['lcf.workshop.mechs.parser.matcher.handlers.choice_first'] = 'workshop/mechs/parser/matcher/handlers/choice_first.lua',
    ['lcf.workshop.mechs.parser.matcher.handlers.interface'] = 'workshop/mechs/parser/matcher/handlers/interface.lua',
    ['lcf.workshop.mechs.parser.matcher.handlers.seq'] = 'workshop/mechs/parser/matcher/handlers/seq.lua',
    ['lcf.workshop.mechs.parser.matcher.init'] = 'workshop/mechs/parser/matcher/init.lua',
    ['lcf.workshop.mechs.parser.matcher.interface'] = 'workshop/mechs/parser/matcher/interface.lua',
    ['lcf.workshop.mechs.parser.matcher.match'] = 'workshop/mechs/parser/matcher/match.lua',
    ['lcf.workshop.mechs.parser.matcher.on_match'] = 'workshop/mechs/parser/matcher/on_match.lua',
    ['lcf.workshop.mechs.parser.optimize'] = 'workshop/mechs/parser/optimize.lua',
    ['lcf.workshop.mechs.parser.parse'] = 'workshop/mechs/parser/parse.lua',
    ['lcf.workshop.mechs.streams.readable.block_read'] = 'workshop/mechs/streams/readable/block_read.lua',
    ['lcf.workshop.mechs.streams.readable.get_position'] = 'workshop/mechs/streams/readable/get_position.lua',
    ['lcf.workshop.mechs.streams.readable.get_segment'] = 'workshop/mechs/streams/readable/get_segment.lua',
    ['lcf.workshop.mechs.streams.readable.init'] = 'workshop/mechs/streams/readable/init.lua',
    ['lcf.workshop.mechs.streams.readable.interface'] = 'workshop/mechs/streams/readable/interface.lua',
    ['lcf.workshop.mechs.streams.readable.match'] = 'workshop/mechs/streams/readable/match.lua',
    ['lcf.workshop.mechs.streams.readable.match_regexp'] = 'workshop/mechs/streams/readable/match_regexp.lua',
    ['lcf.workshop.mechs.streams.readable.raw_get_position'] = 'workshop/mechs/streams/readable/raw_get_position.lua',
    ['lcf.workshop.mechs.streams.readable.raw_read'] = 'workshop/mechs/streams/readable/raw_read.lua',
    ['lcf.workshop.mechs.streams.readable.raw_set_position'] = 'workshop/mechs/streams/readable/raw_set_position.lua',
    ['lcf.workshop.mechs.streams.readable.read'] = 'workshop/mechs/streams/readable/read.lua',
    ['lcf.workshop.mechs.streams.readable.see_next_chunk'] = 'workshop/mechs/streams/readable/see_next_chunk.lua',
    ['lcf.workshop.mechs.streams.readable.set_next_position'] = 'workshop/mechs/streams/readable/set_next_position.lua',
    ['lcf.workshop.mechs.streams.readable.set_position'] = 'workshop/mechs/streams/readable/set_position.lua',
    ['lcf.workshop.mechs.streams.readable.set_relative_position'] = 'workshop/mechs/streams/readable/set_relative_position.lua',
    ['lcf.workshop.mechs.streams.readable_string.init'] = 'workshop/mechs/streams/readable_string/init.lua',
    ['lcf.workshop.mechs.streams.readable_string.interface'] = 'workshop/mechs/streams/readable_string/interface.lua',
    ['lcf.workshop.mechs.streams.readable_string.match'] = 'workshop/mechs/streams/readable_string/match.lua',
    ['lcf.workshop.mechs.streams.readable_string.match_regexp'] = 'workshop/mechs/streams/readable_string/match_regexp.lua',
    ['lcf.workshop.mechs.streams.readable_string.raw_get_position'] = 'workshop/mechs/streams/readable_string/raw_get_position.lua',
    ['lcf.workshop.mechs.streams.readable_string.raw_read'] = 'workshop/mechs/streams/readable_string/raw_read.lua',
    ['lcf.workshop.mechs.streams.readable_string.raw_set_position'] = 'workshop/mechs/streams/readable_string/raw_set_position.lua',
    ['lcf.workshop.mechs.streams.readable_string.read'] = 'workshop/mechs/streams/readable_string/read.lua',
    ['lcf.workshop.mechs.string_adders.any'] = 'workshop/mechs/string_adders/any.lua',
    ['lcf.workshop.mechs.string_adders.file'] = 'workshop/mechs/string_adders/file.lua',
    ['lcf.workshop.mechs.text_block.dec_indent'] = 'workshop/mechs/text_block/dec_indent.lua',
    ['lcf.workshop.mechs.text_block.inc_indent'] = 'workshop/mechs/text_block/inc_indent.lua',
    ['lcf.workshop.mechs.text_block.init'] = 'workshop/mechs/text_block/init.lua',
    ['lcf.workshop.mechs.text_block.interface'] = 'workshop/mechs/text_block/interface.lua',
    ['lcf.workshop.mechs.text_block.line.add'] = 'workshop/mechs/text_block/line/add.lua',
    ['lcf.workshop.mechs.text_block.line.get_line'] = 'workshop/mechs/text_block/line/get_line.lua',
    ['lcf.workshop.mechs.text_block.line.get_line_length'] = 'workshop/mechs/text_block/line/get_line_length.lua',
    ['lcf.workshop.mechs.text_block.line.get_text_length'] = 'workshop/mechs/text_block/line/get_text_length.lua',
    ['lcf.workshop.mechs.text_block.line.init'] = 'workshop/mechs/text_block/line/init.lua',
    ['lcf.workshop.mechs.text_block.line.interface'] = 'workshop/mechs/text_block/line/interface.lua',
    ['lcf.workshop.mechs.text_block.text.add_curline'] = 'workshop/mechs/text_block/text/add_curline.lua',
    ['lcf.workshop.mechs.text_block.text.add_textline'] = 'workshop/mechs/text_block/text/add_textline.lua',
    ['lcf.workshop.mechs.text_block.text.get_block_width'] = 'workshop/mechs/text_block/text/get_block_width.lua',
    ['lcf.workshop.mechs.text_block.text.get_text'] = 'workshop/mechs/text_block/text/get_text.lua',
    ['lcf.workshop.mechs.text_block.text.get_text_width'] = 'workshop/mechs/text_block/text/get_text_width.lua',
    ['lcf.workshop.mechs.text_block.text.include'] = 'workshop/mechs/text_block/text/include.lua',
    ['lcf.workshop.mechs.text_block.text.new_line'] = 'workshop/mechs/text_block/text/new_line.lua',
    ['lcf.workshop.mechs.text_block.text.on_clean_line'] = 'workshop/mechs/text_block/text/on_clean_line.lua',
    ['lcf.workshop.mechs.text_block.text.request_clean_line'] = 'workshop/mechs/text_block/text/request_clean_line.lua',
    ['lcf.workshop.mechs.text_block.text.request_empty_line'] = 'workshop/mechs/text_block/text/request_empty_line.lua',
    ['lcf.workshop.mechs.text_block.text.store_textline'] = 'workshop/mechs/text_block/text/store_textline.lua',
    ['lcf.workshop.number.represent_size'] = 'workshop/number/represent_size.lua',
    ['lcf.workshop.number.represent_time'] = 'workshop/number/represent_time.lua',
    ['lcf.workshop.number.representer.interface'] = 'workshop/number/representer/interface.lua',
    ['lcf.workshop.number.representer.represent'] = 'workshop/number/representer/represent.lua',
    ['lcf.workshop.number.representer.units.binary_bytes'] = 'workshop/number/representer/units/binary_bytes.lua',
    ['lcf.workshop.number.representer.units.binary_units'] = 'workshop/number/representer/units/binary_units.lua',
    ['lcf.workshop.number.representer.units.general_number'] = 'workshop/number/representer/units/general_number.lua',
    ['lcf.workshop.number.representer.units.general_time'] = 'workshop/number/representer/units/general_time.lua',
    ['lcf.workshop.number.representer.units.interface'] = 'workshop/number/representer/units/interface.lua',
    ['lcf.workshop.string.content_attributes'] = 'workshop/string/content_attributes.lua',
    ['lcf.workshop.string.split'] = 'workshop/string/split.lua',
    ['lcf.workshop.string.trim_head_spaces'] = 'workshop/string/trim_head_spaces.lua',
    ['lcf.workshop.string.trim_tail_spaces'] = 'workshop/string/trim_tail_spaces.lua',
    ['lcf.workshop.system.get_loaded_module_files'] = 'workshop/system/get_loaded_module_files.lua',
    ['lcf.workshop.system.msg_with_time'] = 'workshop/system/msg_with_time.lua',
    ['lcf.workshop.table.clone'] = 'workshop/table/clone.lua',
    ['lcf.workshop.table.extract_keys'] = 'workshop/table/extract_keys.lua',
    ['lcf.workshop.table.map_values'] = 'workshop/table/map_values.lua',
    ['lcf.workshop.table.merge'] = 'workshop/table/merge.lua',
    ['lcf.workshop.table.new'] = 'workshop/table/new.lua',
    ['lcf.workshop.table.ordered_pass'] = 'workshop/table/ordered_pass.lua',
    ['lcf.workshop.table.ordered_pass.default_comparator'] = 'workshop/table/ordered_pass/default_comparator.lua',
    ['lcf.workshop.table.patch'] = 'workshop/table/patch.lua',
    ['lcf.workshop.table.to_key_val'] = 'workshop/table/to_key_val.lua',
  },
}
