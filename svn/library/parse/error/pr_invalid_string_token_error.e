indexing

	description:

		"Error: Literal string tokens must have a least two characters"

	library: "Gobo Eiffel Parse Library"
	copyright: "Copyright (c) 1999, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2008-10-06 09:53:14 +0200 (Mon, 06 Oct 2008) $"
	revision: "$Revision: 6531 $"

class PR_INVALID_STRING_TOKEN_ERROR

inherit

	UT_ERROR

create

	make

feature {NONE} -- Initialization

	make (filename: STRING; line: INTEGER; a_string: STRING) is
			-- Create a new error reporting that `a_string'
			-- must have at least two characters.
		require
			filename_not_void: filename /= Void
			a_string_not_void: a_string /= Void
		do
			create parameters.make (1, 3)
			parameters.put (filename, 1)
			parameters.put (line.out, 2)
			parameters.put (a_string, 3)
		end

feature -- Access

	default_template: STRING is "%"$1%", line $2: literal string tokens must have a least two characters ($3)"
			-- Default template used to built the error message

	code: STRING is "PR0020"
			-- Error code

invariant

--	dollar0: $0 = program name
--	dollar1: $1 = filename
--	dollar2: $2 = line number
--	dollar3: $3 = invalid string

end
