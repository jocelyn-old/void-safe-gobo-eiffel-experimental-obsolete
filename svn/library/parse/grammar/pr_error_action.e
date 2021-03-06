indexing

	description:

		"Actions to be executed when a syntax error occurs"

	library: "Gobo Eiffel Parse Library"
	copyright: "Copyright (c) 2003, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2007-01-26 19:55:25 +0100 (Fri, 26 Jan 2007) $"
	revision: "$Revision: 5877 $"

class PR_ERROR_ACTION

inherit

	ANY
		redefine
			is_equal
		end

	KL_IMPORTED_ANY_ROUTINES
		undefine
			is_equal
		end

create

	make

feature {NONE} -- Initialization

	make (an_action: like action; a_line: INTEGER) is
			-- Create a new error action.
		require
			an_action_not_void: an_action /= Void
		do
			action := an_action
			line_nb := a_line
		ensure
			action_set: action = an_action
			line_nb_set: line_nb = a_line
		end

feature -- Access

	action: DP_COMMAND
			-- Action to be executed

	line_nb: INTEGER
			-- Line where the action has been specified in input file

feature -- Comparison

	is_equal (other: like Current): BOOLEAN is
			-- Are `Current' and `other' considered equal?
		do
			if ANY_.same_types (Current, other) then
				Result := action.is_equal (other.action)
			end
		end

invariant

	action_not_void: action /= Void

end
