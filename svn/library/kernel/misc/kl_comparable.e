indexing

	description:

		"Objects that may be compared according to a total order relation"

	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 2008, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2008-12-23 16:09:12 +0100 (Tue, 23 Dec 2008) $"
	revision: "$Revision: 6570 $"

deferred class KL_COMPARABLE

inherit

	COMPARABLE
		rename
			infix "<" as is_less alias "<",
			infix "<=" as is_less_equal alias "<=",
			infix ">" as is_greater alias ">",
			infix ">=" as is_greater_equal alias ">="
		end

end
