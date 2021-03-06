indexing

	description:

		"Lace parsers"
  
	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 1999-2007, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2008-04-28 23:01:13 +0200 (Mon, 28 Apr 2008) $"
	revision: "$Revision: 6384 $"

class ET_LACE_PARSER

inherit

	ET_LACE_PARSER_SKELETON

	ET_LACE_SCANNER
		rename
			make as make_lace_scanner
		end

create

	make, make_standard, make_with_factory


feature {NONE} -- Implementation

	yy_build_parser_tables is
			-- Build parser tables.
		do
			yytranslate := yytranslate_template
			yyr1 := yyr1_template
			yytypes1 := yytypes1_template
			yytypes2 := yytypes2_template
			yydefact := yydefact_template
			yydefgoto := yydefgoto_template
			yypact := yypact_template
			yypgoto := yypgoto_template
			yytable := yytable_template
			yycheck := yycheck_template
		end

	yy_create_value_stacks is
			-- Create value stacks.
		do
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
			debug ("GEYACC")
				std.error.put_line ("Create yyvs2")
			end
			create yyspecial_routines2
			yyvsc2 := yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.make (yyvsc2)
			debug ("GEYACC")
				std.error.put_line ("Create yyvs3")
			end
			create yyspecial_routines3
			yyvsc3 := yyInitial_yyvs_size
			yyvs3 := yyspecial_routines3.make (yyvsc3)
			debug ("GEYACC")
				std.error.put_line ("Create yyvs4")
			end
			create yyspecial_routines4
			yyvsc4 := yyInitial_yyvs_size
			yyvs4 := yyspecial_routines4.make (yyvsc4)
			debug ("GEYACC")
				std.error.put_line ("Create yyvs5")
			end
			create yyspecial_routines5
			yyvsc5 := yyInitial_yyvs_size
			yyvs5 := yyspecial_routines5.make (yyvsc5)
			debug ("GEYACC")
				std.error.put_line ("Create yyvs6")
			end
			create yyspecial_routines6
			yyvsc6 := yyInitial_yyvs_size
			yyvs6 := yyspecial_routines6.make (yyvsc6)
			debug ("GEYACC")
				std.error.put_line ("Create yyvs7")
			end
			create yyspecial_routines7
			yyvsc7 := yyInitial_yyvs_size
			yyvs7 := yyspecial_routines7.make (yyvsc7)
		end

	yy_init_value_stacks is
			-- Initialize value stacks.
		do
			yyvsp1 := -1
			yyvsp2 := -1
			yyvsp3 := -1
			yyvsp4 := -1
			yyvsp5 := -1
			yyvsp6 := -1
			yyvsp7 := -1
		end

	yy_clear_value_stacks is
			-- Clear objects in semantic value stacks so that
			-- they can be collected by the garbage collector.
		local
			l_yyvs1_default_item: ?ANY
			l_yyvs2_default_item: ?ET_IDENTIFIER
			l_yyvs3_default_item: ?ET_LACE_CLUSTER
			l_yyvs4_default_item: ?ET_LACE_CLUSTERS
			l_yyvs5_default_item: ?ET_LACE_EXCLUDE
			l_yyvs6_default_item: ?ET_LACE_DOTNET_ASSEMBLY
			l_yyvs7_default_item: ?ET_ADAPTED_DOTNET_ASSEMBLIES
		do
			yyvs1.fill_with (l_yyvs1_default_item, 0, yyvs1.upper)
			yyvs2.fill_with (l_yyvs2_default_item, 0, yyvs2.upper)
			yyvs3.fill_with (l_yyvs3_default_item, 0, yyvs3.upper)
			yyvs4.fill_with (l_yyvs4_default_item, 0, yyvs4.upper)
			yyvs5.fill_with (l_yyvs5_default_item, 0, yyvs5.upper)
			yyvs6.fill_with (l_yyvs6_default_item, 0, yyvs6.upper)
			yyvs7.fill_with (l_yyvs7_default_item, 0, yyvs7.upper)
		end

	yy_push_last_value (yychar1: INTEGER) is
			-- Push semantic value associated with token `last_token'
			-- (with internal id `yychar1') on top of corresponding
			-- value stack.
		do
			inspect yytypes2.item (yychar1)
			when 1 then
				yyvsp1 := yyvsp1 + 1
				if yyvsp1 >= yyvsc1 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs1")
					end
					yyvsc1 := yyvsc1 + yyInitial_yyvs_size
					yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
				end
				yyvs1.force (last_any_value, yyvsp1)
			when 2 then
				yyvsp2 := yyvsp2 + 1
				if yyvsp2 >= yyvsc2 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs2")
					end
					yyvsc2 := yyvsc2 + yyInitial_yyvs_size
					yyvs2 := yyspecial_routines2.resize (yyvs2, yyvsc2)
				end
				yyvs2.force (last_et_identifier_value, yyvsp2)
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: not a token type: ")
					std.error.put_integer (yytypes2.item (yychar1))
					std.error.put_new_line
				end
				abort
			end
		end

	yy_push_error_value is
			-- Push semantic value associated with token 'error'
			-- on top of corresponding value stack.
		local
			yyval1: ?ANY
		do
			yyvsp1 := yyvsp1 + 1
			if yyvsp1 >= yyvsc1 then
				debug ("GEYACC")
					std.error.put_line ("Resize yyvs1")
				end
				yyvsc1 := yyvsc1 + yyInitial_yyvs_size
				yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
			end
			yyvs1.force (yyval1, yyvsp1)
		end

	yy_pop_last_value (yystate: INTEGER) is
			-- Pop semantic value from stack when in state `yystate'.
		local
			yy_type_id: INTEGER
		do
			yy_type_id := yytypes1.item (yystate)
			inspect yy_type_id
			when 1 then
				yyvsp1 := yyvsp1 - 1
			when 2 then
				yyvsp2 := yyvsp2 - 1
			when 3 then
				yyvsp3 := yyvsp3 - 1
			when 4 then
				yyvsp4 := yyvsp4 - 1
			when 5 then
				yyvsp5 := yyvsp5 - 1
			when 6 then
				yyvsp6 := yyvsp6 - 1
			when 7 then
				yyvsp7 := yyvsp7 - 1
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: unknown type id: ")
					std.error.put_integer (yy_type_id)
					std.error.put_new_line
				end
				abort
			end
		end

feature {NONE} -- Semantic actions

	yy_do_action (yy_act: INTEGER) is
			-- Execute semantic action.
		local
			yyval1: ?ANY
			yyval2: ?ET_IDENTIFIER
			yyval4: ?ET_LACE_CLUSTERS
			yyval3: ?ET_LACE_CLUSTER
			yyval5: ?ET_LACE_EXCLUDE
			yyval7: ?ET_ADAPTED_DOTNET_ASSEMBLIES
			yyval6: ?ET_LACE_DOTNET_ASSEMBLY
		do
			inspect yy_act
when 1 then
--|#line 50 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 50")
end

			set_system (last_system)
			if yyvs4.item (yyvsp4) /= Void then
				last_system.set_clusters (yyvs4.item (yyvsp4))
			end
			if yyvs7.item (yyvsp7) /= Void then
				last_system.set_dotnet_assemblies (yyvs7.item (yyvsp7))
			end
			last_system.set_system_name (yyvs2.item (yyvsp2 - 3).name)
			last_system.set_root_class (yyvs2.item (yyvsp2 - 2))
			last_system.set_root_creation (yyvs2.item (yyvsp2))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 12
	yyvsp1 := yyvsp1 -5
	yyvsp2 := yyvsp2 -4
	yyvsp4 := yyvsp4 -1
	yyvsp7 := yyvsp7 -1
	yyvs1.force (yyval1, yyvsp1)
end
when 2 then
--|#line 66 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 66")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp2 := yyvsp2 + 1
	if yyvsp2 >= yyvsc2 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs2")
		end
		yyvsc2 := yyvsc2 + yyInitial_yyvs_size
		yyvs2 := yyspecial_routines2.resize (yyvs2, yyvsc2)
	end
	yyvs2.force (yyval2, yyvsp2)
end
when 3 then
--|#line 68 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 68")
end

yyval2 := yyvs2.item (yyvsp2) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyvs2.force (yyval2, yyvsp2)
end
when 4 then
--|#line 72 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 72")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp2 := yyvsp2 + 1
	if yyvsp2 >= yyvsc2 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs2")
		end
		yyvsc2 := yyvsc2 + yyInitial_yyvs_size
		yyvs2 := yyspecial_routines2.resize (yyvs2, yyvsc2)
	end
	yyvs2.force (yyval2, yyvsp2)
end
when 5 then
--|#line 74 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 74")
end

yyval2 := yyvs2.item (yyvsp2) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyvs2.force (yyval2, yyvsp2)
end
when 6 then
--|#line 78 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 78")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs1.force (yyval1, yyvsp1)
end
when 7 then
--|#line 79 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 79")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyvs1.force (yyval1, yyvsp1)
end
when 8 then
--|#line 82 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 82")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
	end
	yyvs1.force (yyval1, yyvsp1)
end
when 9 then
--|#line 83 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 83")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs1.force (yyval1, yyvsp1)
end
when 10 then
--|#line 86 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 86")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyvs1.force (yyval1, yyvsp1)
end
when 11 then
--|#line 87 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 87")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyvs1.force (yyval1, yyvsp1)
end
when 12 then
--|#line 90 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 90")
end

yyval1 := new_default_value (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp1 := yyvsp1 -1
	yyvsp2 := yyvsp2 -2
	yyvs1.force (yyval1, yyvsp1)
end
when 13 then
--|#line 92 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 92")
end

yyval1 := new_default_value (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp1 := yyvsp1 -1
	yyvsp2 := yyvsp2 -2
	yyvs1.force (yyval1, yyvsp1)
end
when 14 then
--|#line 96 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 96")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
	end
	yyvs1.force (yyval1, yyvsp1)
end
when 15 then
--|#line 97 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 97")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs1.force (yyval1, yyvsp1)
end
when 16 then
--|#line 100 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 100")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
	end
	yyvs1.force (yyval1, yyvsp1)
end
when 17 then
--|#line 101 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 101")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs1.force (yyval1, yyvsp1)
end
when 18 then
--|#line 104 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 104")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp4 := yyvsp4 + 1
	if yyvsp4 >= yyvsc4 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs4")
		end
		yyvsc4 := yyvsc4 + yyInitial_yyvs_size
		yyvs4 := yyspecial_routines4.resize (yyvs4, yyvsc4)
	end
	yyvs4.force (yyval4, yyvsp4)
end
when 19 then
--|#line 106 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 106")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp4 := yyvsp4 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp4 >= yyvsc4 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs4")
		end
		yyvsc4 := yyvsc4 + yyInitial_yyvs_size
		yyvs4 := yyspecial_routines4.resize (yyvs4, yyvsc4)
	end
	yyvs4.force (yyval4, yyvsp4)
end
when 20 then
--|#line 108 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 108")
end

yyval4 := yyvs4.item (yyvsp4) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyvs4.force (yyval4, yyvsp4)
end
when 21 then
--|#line 112 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 112")
end

yyval4 := new_clusters (yyvs3.item (yyvsp3)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp4 := yyvsp4 + 1
	yyvsp3 := yyvsp3 -1
	if yyvsp4 >= yyvsc4 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs4")
		end
		yyvsc4 := yyvsc4 + yyInitial_yyvs_size
		yyvs4 := yyspecial_routines4.resize (yyvs4, yyvsc4)
	end
	yyvs4.force (yyval4, yyvsp4)
end
when 22 then
--|#line 114 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 114")
end

-- TODO: syntax error: the cluster list cannot contain just
-- one subcluster that is qualified because it needs an unqualified
-- parent cluster.
			yyval4 := new_clusters (yyvs3.item (yyvsp3))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp4 := yyvsp4 + 1
	yyvsp3 := yyvsp3 -1
	if yyvsp4 >= yyvsc4 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs4")
		end
		yyvsc4 := yyvsc4 + yyInitial_yyvs_size
		yyvs4 := yyspecial_routines4.resize (yyvs4, yyvsc4)
	end
	yyvs4.force (yyval4, yyvsp4)
end
when 23 then
--|#line 121 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 121")
end

yyval4 := yyvs4.item (yyvsp4); yyval4.put_last (yyvs3.item (yyvsp3)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp3 := yyvsp3 -1
	yyvs4.force (yyval4, yyvsp4)
end
when 24 then
--|#line 123 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 123")
end

				-- Note: the subcluster has already been inserted
				-- in the list of subclusters of its parent. So
				-- no need to add it to the top-level list of clusters.
			yyval4 := yyvs4.item (yyvsp4)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp3 := yyvsp3 -1
	yyvs4.force (yyval4, yyvsp4)
end
when 25 then
--|#line 132 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 132")
end

yyval3 := yyvs3.item (yyvsp3); yyval3.set_abstract (True) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyvs3.force (yyval3, yyvsp3)
end
when 26 then
--|#line 134 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 134")
end

yyval3 := yyvs3.item (yyvsp3); yyval3.set_recursive (True) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyvs3.force (yyval3, yyvsp3)
end
when 27 then
--|#line 136 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 136")
end

			yyval3 := yyvs3.item (yyvsp3);
			yyval3.set_recursive (True)
			yyval3.set_read_only (True)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyvs3.force (yyval3, yyvsp3)
end
when 28 then
--|#line 142 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 142")
end

yyval3 := yyvs3.item (yyvsp3) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs3.force (yyval3, yyvsp3)
end
when 29 then
--|#line 146 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 146")
end

			yyval3 := new_qualified_subcluster (yyvs2.item (yyvsp2 - 2), yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), yyvs5.item (yyvsp5))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp3 := yyvsp3 + 1
	yyvsp2 := yyvsp2 -3
	yyvsp1 := yyvsp1 -3
	yyvsp5 := yyvsp5 -1
	if yyvsp3 >= yyvsc3 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs3")
		end
		yyvsc3 := yyvsc3 + yyInitial_yyvs_size
		yyvs3 := yyspecial_routines3.resize (yyvs3, yyvsc3)
	end
	yyvs3.force (yyval3, yyvsp3)
end
when 30 then
--|#line 150 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 150")
end

			yyval3 := new_qualified_subcluster (yyvs2.item (yyvsp2 - 2), yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), yyvs5.item (yyvsp5))
			yyval3.set_recursive (True)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp3 := yyvsp3 + 1
	yyvsp2 := yyvsp2 -4
	yyvsp1 := yyvsp1 -3
	yyvsp5 := yyvsp5 -1
	if yyvsp3 >= yyvsc3 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs3")
		end
		yyvsc3 := yyvsc3 + yyInitial_yyvs_size
		yyvs3 := yyspecial_routines3.resize (yyvs3, yyvsc3)
	end
	yyvs3.force (yyval3, yyvsp3)
end
when 31 then
--|#line 155 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 155")
end

			yyval3 := new_qualified_subcluster (yyvs2.item (yyvsp2 - 2), yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), yyvs5.item (yyvsp5))
			yyval3.set_recursive (True)
			yyval3.set_read_only (True)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp3 := yyvsp3 + 1
	yyvsp1 := yyvsp1 -4
	yyvsp2 := yyvsp2 -3
	yyvsp5 := yyvsp5 -1
	if yyvsp3 >= yyvsc3 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs3")
		end
		yyvsc3 := yyvsc3 + yyInitial_yyvs_size
		yyvs3 := yyspecial_routines3.resize (yyvs3, yyvsc3)
	end
	yyvs3.force (yyval3, yyvsp3)
end
when 32 then
--|#line 163 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 163")
end

			yyval3 := new_cluster (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2))
			yyval3.set_exclude (yyvs5.item (yyvsp5))
			yyval3.set_subclusters (yyvs4.item (yyvsp4))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp3 := yyvsp3 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp1 := yyvsp1 -1
	yyvsp5 := yyvsp5 -1
	yyvsp4 := yyvsp4 -1
	if yyvsp3 >= yyvsc3 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs3")
		end
		yyvsc3 := yyvsc3 + yyInitial_yyvs_size
		yyvs3 := yyspecial_routines3.resize (yyvs3, yyvsc3)
	end
	yyvs3.force (yyval3, yyvsp3)
end
when 33 then
--|#line 169 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 169")
end

			yyval3 := new_cluster (yyvs2.item (yyvsp2), Void)
			yyval3.set_exclude (yyvs5.item (yyvsp5))
			yyval3.set_subclusters (yyvs4.item (yyvsp4))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp3 := yyvsp3 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp5 := yyvsp5 -1
	yyvsp4 := yyvsp4 -1
	if yyvsp3 >= yyvsc3 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs3")
		end
		yyvsc3 := yyvsc3 + yyInitial_yyvs_size
		yyvs3 := yyspecial_routines3.resize (yyvs3, yyvsc3)
	end
	yyvs3.force (yyval3, yyvsp3)
end
when 34 then
--|#line 177 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 177")
end

			yyval3 := new_cluster (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2))
			yyval3.set_exclude (yyvs5.item (yyvsp5))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp3 := yyvsp3 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp1 := yyvsp1 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp3 >= yyvsc3 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs3")
		end
		yyvsc3 := yyvsc3 + yyInitial_yyvs_size
		yyvs3 := yyspecial_routines3.resize (yyvs3, yyvsc3)
	end
	yyvs3.force (yyval3, yyvsp3)
end
when 35 then
--|#line 184 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 184")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
	end
	yyvs1.force (yyval1, yyvsp1)
end
when 36 then
--|#line 185 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 185")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs1.force (yyval1, yyvsp1)
end
when 37 then
--|#line 188 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 188")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
	end
	yyvs1.force (yyval1, yyvsp1)
end
when 38 then
--|#line 189 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 189")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs1.force (yyval1, yyvsp1)
end
when 39 then
--|#line 192 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 192")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp4 := yyvsp4 + 1
	if yyvsp4 >= yyvsc4 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs4")
		end
		yyvsc4 := yyvsc4 + yyInitial_yyvs_size
		yyvs4 := yyspecial_routines4.resize (yyvs4, yyvsc4)
	end
	yyvs4.force (yyval4, yyvsp4)
end
when 40 then
--|#line 194 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 194")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp4 := yyvsp4 + 1
	yyvsp1 := yyvsp1 -2
	if yyvsp4 >= yyvsc4 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs4")
		end
		yyvsc4 := yyvsc4 + yyInitial_yyvs_size
		yyvs4 := yyspecial_routines4.resize (yyvs4, yyvsc4)
	end
	yyvs4.force (yyval4, yyvsp4)
end
when 41 then
--|#line 196 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 196")
end

yyval4 := yyvs4.item (yyvsp4) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp1 := yyvsp1 -3
	yyvs4.force (yyval4, yyvsp4)
end
when 42 then
--|#line 200 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 200")
end

yyval4 := new_clusters (yyvs3.item (yyvsp3)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp4 := yyvsp4 + 1
	yyvsp3 := yyvsp3 -1
	if yyvsp4 >= yyvsc4 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs4")
		end
		yyvsc4 := yyvsc4 + yyInitial_yyvs_size
		yyvs4 := yyspecial_routines4.resize (yyvs4, yyvsc4)
	end
	yyvs4.force (yyval4, yyvsp4)
end
when 43 then
--|#line 202 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 202")
end

yyval4 := yyvs4.item (yyvsp4); yyval4.put_last (yyvs3.item (yyvsp3)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp3 := yyvsp3 -1
	yyvs4.force (yyval4, yyvsp4)
end
when 44 then
--|#line 206 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 206")
end

yyval3 := yyvs3.item (yyvsp3); yyval3.set_abstract (True) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyvs3.force (yyval3, yyvsp3)
end
when 45 then
--|#line 208 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 208")
end

yyval3 := yyvs3.item (yyvsp3) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs3.force (yyval3, yyvsp3)
end
when 46 then
--|#line 212 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 212")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp5 := yyvsp5 + 1
	if yyvsp5 >= yyvsc5 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs5")
		end
		yyvsc5 := yyvsc5 + yyInitial_yyvs_size
		yyvs5 := yyspecial_routines5.resize (yyvs5, yyvsc5)
	end
	yyvs5.force (yyval5, yyvsp5)
end
when 47 then
--|#line 214 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 214")
end

yyval5 := yyvs5.item (yyvsp5) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp1 := yyvsp1 -4
	yyvs5.force (yyval5, yyvsp5)
end
when 48 then
--|#line 216 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 216")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp5 := yyvsp5 + 1
	yyvsp1 := yyvsp1 -4
	if yyvsp5 >= yyvsc5 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs5")
		end
		yyvsc5 := yyvsc5 + yyInitial_yyvs_size
		yyvs5 := yyspecial_routines5.resize (yyvs5, yyvsc5)
	end
	yyvs5.force (yyval5, yyvsp5)
end
when 49 then
--|#line 218 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 218")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp5 := yyvsp5 + 1
	yyvsp1 := yyvsp1 -3
	if yyvsp5 >= yyvsc5 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs5")
		end
		yyvsc5 := yyvsc5 + yyInitial_yyvs_size
		yyvs5 := yyspecial_routines5.resize (yyvs5, yyvsc5)
	end
	yyvs5.force (yyval5, yyvsp5)
end
when 50 then
--|#line 220 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 220")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp5 := yyvsp5 + 1
	yyvsp1 := yyvsp1 -2
	if yyvsp5 >= yyvsc5 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs5")
		end
		yyvsc5 := yyvsc5 + yyInitial_yyvs_size
		yyvs5 := yyspecial_routines5.resize (yyvs5, yyvsc5)
	end
	yyvs5.force (yyval5, yyvsp5)
end
when 51 then
--|#line 224 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 224")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp5 := yyvsp5 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp5 >= yyvsc5 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs5")
		end
		yyvsc5 := yyvsc5 + yyInitial_yyvs_size
		yyvs5 := yyspecial_routines5.resize (yyvs5, yyvsc5)
	end
	yyvs5.force (yyval5, yyvsp5)
end
when 52 then
--|#line 225 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 225")
end

yyval5 := yyvs5.item (yyvsp5) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyvs5.force (yyval5, yyvsp5)
end
when 53 then
--|#line 227 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 227")
end

yyval5 := yyvs5.item (yyvsp5) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyvs5.force (yyval5, yyvsp5)
end
when 54 then
--|#line 231 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 231")
end

create yyval5.make yyval5.put_last (yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp5 := yyvsp5 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp5 >= yyvsc5 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs5")
		end
		yyvsc5 := yyvsc5 + yyInitial_yyvs_size
		yyvs5 := yyspecial_routines5.resize (yyvs5, yyvsc5)
	end
	yyvs5.force (yyval5, yyvsp5)
end
when 55 then
--|#line 233 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 233")
end

yyval5 := yyvs5.item (yyvsp5); yyval5.put_last (yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp2 := yyvsp2 -1
	yyvs5.force (yyval5, yyvsp5)
end
when 56 then
--|#line 237 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 237")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs1.force (yyval1, yyvsp1)
end
when 57 then
--|#line 238 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 238")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyvs1.force (yyval1, yyvsp1)
end
when 58 then
--|#line 241 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 241")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
	end
	yyvs1.force (yyval1, yyvsp1)
end
when 59 then
--|#line 242 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 242")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs1.force (yyval1, yyvsp1)
end
when 60 then
--|#line 245 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 245")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyvs1.force (yyval1, yyvsp1)
end
when 61 then
--|#line 246 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 246")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyvs1.force (yyval1, yyvsp1)
end
when 62 then
--|#line 249 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 249")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp1 := yyvsp1 -3
	yyvsp2 := yyvsp2 -2
	yyvs1.force (yyval1, yyvsp1)
end
when 63 then
--|#line 250 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 250")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp1 := yyvsp1 -3
	yyvsp2 := yyvsp2 -2
	yyvs1.force (yyval1, yyvsp1)
end
when 64 then
--|#line 254 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 254")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
	end
	yyvs1.force (yyval1, yyvsp1)
end
when 65 then
--|#line 255 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 255")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp2 := yyvsp2 -1
	yyvs1.force (yyval1, yyvsp1)
end
when 66 then
--|#line 258 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 258")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
	end
	yyvs1.force (yyval1, yyvsp1)
end
when 67 then
--|#line 259 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 259")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs1.force (yyval1, yyvsp1)
end
when 68 then
--|#line 262 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 262")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
	end
	yyvs1.force (yyval1, yyvsp1)
end
when 69 then
--|#line 263 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 263")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs1.force (yyval1, yyvsp1)
end
when 70 then
--|#line 266 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 266")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs1.force (yyval1, yyvsp1)
end
when 71 then
--|#line 267 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 267")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyvs1.force (yyval1, yyvsp1)
end
when 72 then
--|#line 270 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 270")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
	end
	yyvs1.force (yyval1, yyvsp1)
end
when 73 then
--|#line 271 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 271")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs1.force (yyval1, yyvsp1)
end
when 74 then
--|#line 274 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 274")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyvs1.force (yyval1, yyvsp1)
end
when 75 then
--|#line 275 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 275")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyvs1.force (yyval1, yyvsp1)
end
when 76 then
--|#line 276 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 276")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyvs1.force (yyval1, yyvsp1)
end
when 77 then
--|#line 279 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 279")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
	end
	yyvs1.force (yyval1, yyvsp1)
end
when 78 then
--|#line 280 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 280")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyvs1.force (yyval1, yyvsp1)
end
when 79 then
--|#line 283 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 283")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
	end
	yyvs1.force (yyval1, yyvsp1)
end
when 80 then
--|#line 284 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 284")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs1.force (yyval1, yyvsp1)
end
when 81 then
--|#line 287 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 287")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp7 := yyvsp7 + 1
	if yyvsp7 >= yyvsc7 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs7")
		end
		yyvsc7 := yyvsc7 + yyInitial_yyvs_size
		yyvs7 := yyspecial_routines7.resize (yyvs7, yyvsc7)
	end
	yyvs7.force (yyval7, yyvsp7)
end
when 82 then
--|#line 289 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 289")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp7 := yyvsp7 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp7 >= yyvsc7 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs7")
		end
		yyvsc7 := yyvsc7 + yyInitial_yyvs_size
		yyvs7 := yyspecial_routines7.resize (yyvs7, yyvsc7)
	end
	yyvs7.force (yyval7, yyvsp7)
end
when 83 then
--|#line 291 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 291")
end

yyval7 := yyvs7.item (yyvsp7) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyvs7.force (yyval7, yyvsp7)
end
when 84 then
--|#line 295 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 295")
end

yyval7 := new_assemblies (yyvs6.item (yyvsp6)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp7 := yyvsp7 + 1
	yyvsp6 := yyvsp6 -1
	if yyvsp7 >= yyvsc7 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs7")
		end
		yyvsc7 := yyvsc7 + yyInitial_yyvs_size
		yyvs7 := yyspecial_routines7.resize (yyvs7, yyvsc7)
	end
	yyvs7.force (yyval7, yyvsp7)
end
when 85 then
--|#line 297 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 297")
end

			yyval7 := yyvs7.item (yyvsp7)
			yyvs7.item (yyvsp7).put_last (yyvs6.item (yyvsp6))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp6 := yyvsp6 -1
	yyvs7.force (yyval7, yyvsp7)
end
when 86 then
--|#line 304 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 304")
end

			yyval6 := new_assembly (yyvs2.item (yyvsp2 - 2), yyvs2.item (yyvsp2 - 1))
			yyval6.set_classname_prefix_id (yyvs2.item (yyvsp2))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp6 := yyvsp6 + 1
	yyvsp2 := yyvsp2 -3
	yyvsp1 := yyvsp1 -1
	if yyvsp6 >= yyvsc6 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs6")
		end
		yyvsc6 := yyvsc6 + yyInitial_yyvs_size
		yyvs6 := yyspecial_routines6.resize (yyvs6, yyvsc6)
	end
	yyvs6.force (yyval6, yyvsp6)
end
when 87 then
--|#line 309 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 309")
end

			yyval6 := new_gac_assembly (yyvs2.item (yyvsp2 - 5), yyvs2.item (yyvsp2 - 4), yyvs2.item (yyvsp2 - 3), yyvs2.item (yyvsp2 - 2), yyvs2.item (yyvsp2 - 1))
			yyval6.set_classname_prefix_id (yyvs2.item (yyvsp2))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 10
	yyvsp6 := yyvsp6 + 1
	yyvsp2 := yyvsp2 -6
	yyvsp1 := yyvsp1 -4
	if yyvsp6 >= yyvsc6 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs6")
		end
		yyvsc6 := yyvsc6 + yyInitial_yyvs_size
		yyvs6 := yyspecial_routines6.resize (yyvs6, yyvsc6)
	end
	yyvs6.force (yyval6, yyvsp6)
end
when 88 then
--|#line 316 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 316")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp2 := yyvsp2 + 1
	if yyvsp2 >= yyvsc2 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs2")
		end
		yyvsc2 := yyvsc2 + yyInitial_yyvs_size
		yyvs2 := yyspecial_routines2.resize (yyvs2, yyvsc2)
	end
	yyvs2.force (yyval2, yyvsp2)
end
when 89 then
--|#line 318 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 318")
end

yyval2 := yyvs2.item (yyvsp2) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyvs2.force (yyval2, yyvsp2)
end
when 90 then
--|#line 322 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 322")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
	end
	yyvs1.force (yyval1, yyvsp1)
end
when 91 then
--|#line 323 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 323")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs1.force (yyval1, yyvsp1)
end
when 92 then
--|#line 326 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 326")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
	end
	yyvs1.force (yyval1, yyvsp1)
end
when 93 then
--|#line 327 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 327")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs1.force (yyval1, yyvsp1)
end
when 94 then
--|#line 330 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 330")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
	end
	yyvs1.force (yyval1, yyvsp1)
end
when 95 then
--|#line 331 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 331")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs1.force (yyval1, yyvsp1)
end
when 96 then
--|#line 332 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 332")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyvs1.force (yyval1, yyvsp1)
end
when 97 then
--|#line 335 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 335")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyvs1.force (yyval1, yyvsp1)
end
when 98 then
--|#line 336 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 336")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyvs1.force (yyval1, yyvsp1)
end
when 99 then
--|#line 339 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 339")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
	end
	yyvs1.force (yyval1, yyvsp1)
end
when 100 then
--|#line 340 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 340")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp1 := yyvsp1 -1
	yyvsp2 := yyvsp2 -2
	yyvs1.force (yyval1, yyvsp1)
end
when 101 then
--|#line 341 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 341")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp1 := yyvsp1 -1
	yyvsp2 := yyvsp2 -2
	yyvs1.force (yyval1, yyvsp1)
end
when 102 then
--|#line 344 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 344")
end

			add_external_value (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2))
			yyval2 := yyvs2.item (yyvsp2 - 1)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -1
	yyvs2.force (yyval2, yyvsp2)
end
when 103 then
--|#line 349 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 349")
end

			add_external_value (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2))
			yyval2 := yyvs2.item (yyvsp2 - 1)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -1
	yyvs2.force (yyval2, yyvsp2)
end
when 104 then
--|#line 356 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 356")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
	end
	yyvs1.force (yyval1, yyvsp1)
end
when 105 then
--|#line 357 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 357")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs1.force (yyval1, yyvsp1)
end
when 106 then
--|#line 360 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 360")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
	end
	yyvs1.force (yyval1, yyvsp1)
end
when 107 then
--|#line 361 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 361")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs1.force (yyval1, yyvsp1)
end
when 108 then
--|#line 364 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 364")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
	end
	yyvs1.force (yyval1, yyvsp1)
end
when 109 then
--|#line 365 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 365")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs1.force (yyval1, yyvsp1)
end
when 110 then
--|#line 366 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 366")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyvs1.force (yyval1, yyvsp1)
end
when 111 then
--|#line 369 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 369")
end

yyval2 := yyvs2.item (yyvsp2) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs2.force (yyval2, yyvsp2)
end
when 112 then
--|#line 371 "et_lace_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_lace_parser.y' at line 371")
end

yyval2 := yyvs2.item (yyvsp2) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvs2.force (yyval2, yyvsp2)
end
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: unknown rule id: ")
					std.error.put_integer (yy_act)
					std.error.put_new_line
				end
				abort
			end
		end

	yy_do_error_action (yy_act: INTEGER) is
			-- Execute error action.
		do
			inspect yy_act
			when 182 then
					-- End-of-file expected action.
				report_eof_expected_error
			else
					-- Default action.
				report_error ("parse error")
			end
		end

feature {NONE} -- Table templates

	yytranslate_template: SPECIAL [INTEGER] is
			-- Template for `yytranslate'
		once
			Result := yyfixed_array (<<
			    0,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			   21,   22,    2,    2,   25,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,   23,   24,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,

			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,

			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    1,    2,    3,    4,
			    5,    6,    7,    8,    9,   10,   11,   12,   13,   14,
			   15,   16,   17,   18,   19,   20, yyDummy>>)
		end

	yyr1_template: SPECIAL [INTEGER] is
			-- Template for `yyr1'
		once
			Result := yyfixed_array (<<
			    0,   46,   39,   39,   40,   40,   50,   50,   47,   47,
			   51,   51,   52,   52,   53,   53,   54,   54,   32,   32,
			   32,   31,   31,   31,   31,   26,   26,   26,   26,   30,
			   30,   30,   27,   27,   28,   55,   55,   56,   56,   33,
			   33,   33,   34,   34,   29,   29,   37,   37,   37,   37,
			   37,   35,   35,   35,   36,   36,   59,   59,   57,   57,
			   61,   61,   62,   62,   65,   65,   63,   63,   64,   64,
			   60,   60,   58,   58,   66,   66,   66,   67,   67,   68,
			   68,   45,   45,   45,   44,   44,   43,   43,   41,   41,
			   69,   69,   70,   70,   48,   48,   48,   71,   71,   72,

			   72,   72,   42,   42,   73,   73,   74,   74,   49,   49,
			   49,   38,   38, yyDummy>>)
		end

	yytypes1_template: SPECIAL [INTEGER] is
			-- Template for `yytypes1'
		once
			Result := yyfixed_array (<<
			    1,    1,    2,    2,    2,    1,    2,    1,    2,    2,
			    1,    2,    1,    2,    1,    1,    1,    2,    1,    1,
			    1,    4,    1,    1,    1,    1,    1,    1,    2,    3,
			    3,    3,    4,    2,    1,    7,    2,    2,    1,    3,
			    2,    3,    2,    3,    2,    1,    1,    1,    1,    1,
			    1,    1,    1,    5,    5,    1,    1,    1,    2,    6,
			    7,    1,    1,    1,    1,    1,    1,    1,    3,    3,
			    2,    2,    2,    1,    1,    5,    2,    2,    1,    1,
			    1,    1,    4,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    2,    2,    1,    1,    1,    1,    2,    2,

			    2,    5,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    3,    3,    4,    1,    1,    2,
			    6,    1,    1,    1,    1,    1,    1,    1,    1,    5,
			    1,    1,    4,    1,    1,    2,    2,    2,    1,    1,
			    3,    1,    1,    1,    1,    1,    2,    2,    2,    2,
			    2,    1,    1,    1,    2,    1,    1,    1,    1,    3,
			    2,    2,    1,    1,    2,    2,    5,    1,    1,    1,
			    1,    5,    5,    2,    1,    1,    2,    1,    1,    2,
			    2,    2,    1,    1,    1, yyDummy>>)
		end

	yytypes2_template: SPECIAL [INTEGER] is
			-- Template for `yytypes2'
		once
			Result := yyfixed_array (<<
			    1,    1,    1,    2,    2,    2,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1, yyDummy>>)
		end

	yydefact_template: SPECIAL [INTEGER] is
			-- Template for `yydefact'
		once
			Result := yyfixed_array (<<
			    0,    0,  112,  111,    0,    0,    2,    0,    4,    0,
			    0,    8,    3,    5,    6,   18,    9,    0,    7,   16,
			   19,   81,    0,   17,   10,    0,    0,    0,    0,   21,
			   28,   22,   37,   46,   82,   94,    0,    0,   11,   27,
			    0,   25,   46,   26,    0,   38,   20,    0,    0,    0,
			   70,   51,   56,    8,   39,   58,   72,    0,    0,   84,
			   92,   95,  108,   13,   12,    0,    0,    0,   23,   24,
			   46,    0,   77,   71,   79,   52,   54,    0,   57,   68,
			   58,    0,   33,   72,   59,    0,   73,   50,    0,   93,
			   83,    0,    0,   99,   96,  106,  109,    0,   46,    0,

			    0,   39,    0,   78,   80,    0,   53,    0,   69,   60,
			    0,   72,    0,   40,   45,   42,   37,    0,   49,   88,
			   85,    0,    0,    0,  107,   97,    0,  110,    1,   34,
			    0,    0,   32,    0,   76,   55,    0,    0,   61,    0,
			   44,    0,    0,   48,    0,    0,   86,  102,    0,    0,
			  103,   98,    0,    0,   46,    0,    0,   47,   41,   43,
			    0,    0,  101,  100,   46,   46,   29,    0,    0,    0,
			   89,   31,   30,   64,   63,   62,    0,    0,    0,   65,
			   88,   87,    0,    0,    0, yyDummy>>)
		end

	yydefgoto_template: SPECIAL [INTEGER] is
			-- Template for `yydefgoto'
		once
			Result := yyfixed_array (<<
			   29,   30,   39,  115,   31,   32,   21,   82,  116,   53,
			   75,   54,   42,    8,   11,  146,   93,   59,   60,   35,
			  182,   15,   62,   97,   55,   18,   19,   24,   25,   46,
			   47,   83,   85,   56,   57,   78,   79,  109,  110,  174,
			   73,   74,  105,   90,   91,   94,   95,  125,  126, yyDummy>>)
		end

	yypact_template: SPECIAL [INTEGER] is
			-- Template for `yypact'
		once
			Result := yyfixed_array (<<
			  191,   39, -32768, -32768,  189,   39,  182,   39,  178,  177,
			   39,  179, -32768, -32768,   39,  186, -32768,  172, -32768,   59,
			   75,  176,  157,  129, -32768,   39,   39,   39,   39, -32768,
			 -32768, -32768,    4,  113,   39,  181,  169,  168, -32768, -32768,
			  125, -32768,   46, -32768,  110,   85, -32768,   75,   39,   39,
			   39,   39,   39,  179,  163,  167,  148,  174,  165, -32768,
			   29,   39,  175, -32768, -32768,   39,   39,   39, -32768, -32768,
			  140,  164,  173, -32768,  160,  159, -32768,  158, -32768,   28,
			  167,  104, -32768,  148, -32768,  170, -32768, -32768,   39,  102,
			 -32768,   39,   94,  150, -32768,    2,   39,  166,  140,  151,

			  149,  163,  142,  162,  161,   39,   39,  154,   15, -32768,
			   39,  148,   39, -32768, -32768, -32768,   10,  155, -32768,   57,
			 -32768,   39,   95,   39,   73, -32768,   39, -32768, -32768, -32768,
			  131,  112, -32768,   39, -32768, -32768,  127,  117, -32768,  122,
			 -32768,  116,   70, -32768,   39,   39, -32768, -32768,  105,   97,
			 -32768, -32768,   39,   39,  140,   88,   31, -32768, -32768, -32768,
			   69,   80, -32768, -32768,  140,  140, -32768,   39,   39,   39,
			 -32768, -32768, -32768, -32768,   38,   38,   33,   39,   39, -32768,
			   13, -32768,   20,   17, -32768, yyDummy>>)
		end

	yypgoto_template: SPECIAL [INTEGER] is
			-- Template for `yypgoto'
		once
			Result := yyfixed_array (<<
			  180,  -26,  184,   71,  171, -32768, -32768,  109, -32768, -32768,
			 -32768,  -63,   -1, -32768, -32768,   27, -32768,  118, -32768, -32768,
			 -32768,  132, -32768, -32768,   -8,  183, -32768, -32768, -32768,   90,
			   89,  124,  -72,  -50,  -54,   92, -32768, -32768, -32768,   32,
			   93, -32768, -32768, -32768, -32768,  -88, -32768, -32768, -32768, yyDummy>>)
		end

	yytable_template: SPECIAL [INTEGER] is
			-- Template for `yytable'
		once
			Result := yyfixed_array (<<
			    4,   41,   86,   16,    6,   84,    9,  101,  127,   13,
			 -104,  117,  -35,   17, -104,  -35,  -35,  184,  -35,   33,
			  183,   37,  -35,  -67,   17,   40,  124,   44,   45,   86,
			   84,  -67,  145,   58,   45,  129,  -66,  -90,  151,  139,
			  -90,  -90,    3,    2,  -66,   16,   33,   70,   71,   72,
			   76,   77,  108,   89,  168,  114,   14,   86,  178,   52,
			   92,   51,   50,  177,   98,   99,  100,  -14,  -14,   48,
			  -14,  -14,  -14,    3,    2,  -14,  145,  -14,    3,    2,
			   28, -105,  144,   23,  112, -105,  140,  119,  170,   27,
			   58,  166,   26,  -36,  169,   92,  -36,  -36,    3,    2,

			  148,  171,  172,  -36,   72,  135,  137,    3,    2,   77,
			  -91,  167,  113,  -91,  -91,  122,  114,  121,  112,  163,
			  147,  149,  150,   14,  158,   92,   52,  162,   51,   50,
			  157,   67,  154,   65,   49,  153,   48,  -15,  -15,  156,
			  -15,  -15,  -15,  160,  161,  -15,   66,  -15,   65,  155,
			   14,  164,  165,   52,  152,   51,   50,    3,    2,  136,
			    3,    2,   36,  143,   50,  133,  173,  173,  176,  -75,
			  -74,  131,   81,  130,  128,  123,  179,  180,  118,  107,
			   52,  103,   87,  106,  104,   80,  102,   96,   88,   14,
			   64,   63,   61,   22,   34,   20,    5,    1,  134,   12,

			  175,   10,  138,    7,  111,  142,  141,  181,   38,  120,
			  132,    0,   43,  159,    0,    0,    0,    0,   69,    0,
			    0,    0,    0,    0,    0,    0,    0,   68, yyDummy>>)
		end

	yycheck_template: SPECIAL [INTEGER] is
			-- Template for `yycheck'
		once
			Result := yyfixed_array (<<
			    1,   27,   56,   11,    5,   55,    7,   70,   96,   10,
			    8,   83,    8,   14,   12,   11,   12,    0,    8,   20,
			    0,   22,   18,    8,   25,   26,   24,   28,   24,   83,
			   80,   16,   19,   34,   24,   98,    8,    8,  126,  111,
			   11,   12,    3,    4,   16,   53,   47,   48,   49,   50,
			   51,   52,   24,   24,   23,   81,   10,  111,   25,   13,
			   61,   15,   16,   25,   65,   66,   67,    8,    9,   23,
			   11,   12,   13,    3,    4,   16,   19,   18,    3,    4,
			    5,    8,   25,   24,   14,   12,  112,   88,    8,   14,
			   91,  154,   17,    8,   25,   96,   11,   12,    3,    4,

			    5,  164,  165,   18,  105,  106,  107,    3,    4,  110,
			    8,   23,    8,   11,   12,   21,  142,   23,   14,   22,
			  121,  122,  123,   10,    8,  126,   13,   22,   15,   16,
			    8,   21,  133,   23,   21,   23,   23,    8,    9,   22,
			   11,   12,   13,  144,  145,   16,   21,   18,   23,   22,
			   10,  152,  153,   13,   23,   15,   16,    3,    4,    5,
			    3,    4,    5,    8,   16,   23,  167,  168,  169,    8,
			    8,   22,    9,   22,    8,   25,  177,  178,    8,   21,
			   13,    8,    8,   24,   24,   53,   22,   12,   23,   10,
			   22,   22,   11,   21,   18,    9,    7,    6,  105,   22,

			  168,   23,  110,   21,   80,  116,  116,  180,   25,   91,
			  101,   -1,   28,  142,   -1,   -1,   -1,   -1,   47,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   47, yyDummy>>)
		end

feature {NONE} -- Semantic value stacks

	yyvs1: SPECIAL [?ANY]
			-- Stack for semantic values of type ANY

	yyvsc1: INTEGER
			-- Capacity of semantic value stack `yyvs1'

	yyvsp1: INTEGER
			-- Top of semantic value stack `yyvs1'

	yyspecial_routines1: KL_SPECIAL_ROUTINES [?ANY]
			-- Routines that ought to be in SPECIAL [ANY]

	yyvs2: SPECIAL [?ET_IDENTIFIER]
			-- Stack for semantic values of type ET_IDENTIFIER

	yyvsc2: INTEGER
			-- Capacity of semantic value stack `yyvs2'

	yyvsp2: INTEGER
			-- Top of semantic value stack `yyvs2'

	yyspecial_routines2: KL_SPECIAL_ROUTINES [?ET_IDENTIFIER]
			-- Routines that ought to be in SPECIAL [ET_IDENTIFIER]

	yyvs3: SPECIAL [?ET_LACE_CLUSTER]
			-- Stack for semantic values of type ET_LACE_CLUSTER

	yyvsc3: INTEGER
			-- Capacity of semantic value stack `yyvs3'

	yyvsp3: INTEGER
			-- Top of semantic value stack `yyvs3'

	yyspecial_routines3: KL_SPECIAL_ROUTINES [?ET_LACE_CLUSTER]
			-- Routines that ought to be in SPECIAL [ET_LACE_CLUSTER]

	yyvs4: SPECIAL [?ET_LACE_CLUSTERS]
			-- Stack for semantic values of type ET_LACE_CLUSTERS

	yyvsc4: INTEGER
			-- Capacity of semantic value stack `yyvs4'

	yyvsp4: INTEGER
			-- Top of semantic value stack `yyvs4'

	yyspecial_routines4: KL_SPECIAL_ROUTINES [?ET_LACE_CLUSTERS]
			-- Routines that ought to be in SPECIAL [ET_LACE_CLUSTERS]

	yyvs5: SPECIAL [?ET_LACE_EXCLUDE]
			-- Stack for semantic values of type ET_LACE_EXCLUDE

	yyvsc5: INTEGER
			-- Capacity of semantic value stack `yyvs5'

	yyvsp5: INTEGER
			-- Top of semantic value stack `yyvs5'

	yyspecial_routines5: KL_SPECIAL_ROUTINES [?ET_LACE_EXCLUDE]
			-- Routines that ought to be in SPECIAL [ET_LACE_EXCLUDE]

	yyvs6: SPECIAL [?ET_LACE_DOTNET_ASSEMBLY]
			-- Stack for semantic values of type ET_LACE_DOTNET_ASSEMBLY

	yyvsc6: INTEGER
			-- Capacity of semantic value stack `yyvs6'

	yyvsp6: INTEGER
			-- Top of semantic value stack `yyvs6'

	yyspecial_routines6: KL_SPECIAL_ROUTINES [?ET_LACE_DOTNET_ASSEMBLY]
			-- Routines that ought to be in SPECIAL [ET_LACE_DOTNET_ASSEMBLY]

	yyvs7: SPECIAL [?ET_ADAPTED_DOTNET_ASSEMBLIES]
			-- Stack for semantic values of type ET_ADAPTED_DOTNET_ASSEMBLIES

	yyvsc7: INTEGER
			-- Capacity of semantic value stack `yyvs7'

	yyvsp7: INTEGER
			-- Top of semantic value stack `yyvs7'

	yyspecial_routines7: KL_SPECIAL_ROUTINES [?ET_ADAPTED_DOTNET_ASSEMBLIES]
			-- Routines that ought to be in SPECIAL [ET_ADAPTED_DOTNET_ASSEMBLIES]

feature {NONE} -- Constants

	yyFinal: INTEGER is 184
			-- Termination state id

	yyFlag: INTEGER is -32768
			-- Most negative INTEGER

	yyNtbase: INTEGER is 26
			-- Number of tokens

	yyLast: INTEGER is 227
			-- Upper bound of `yytable' and `yycheck'

	yyMax_token: INTEGER is 275
			-- Maximum token id
			-- (upper bound of `yytranslate'.)

	yyNsyms: INTEGER is 75
			-- Number of symbols
			-- (terminal and nonterminal)

feature -- User-defined features



end
