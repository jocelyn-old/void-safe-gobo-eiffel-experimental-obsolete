note

	description:
		"Infinite containers."
	legal: "See notice at end of class."

	status: "See notice at end of class."
	names: infinite, storage ;
	date: "$Date: 2009-01-12 17:05:16 +0100 (Mon, 12 Jan 2009) $"
	revision: "$Revision: 6572 $"

deferred class INFINITE [G] inherit

	BOX [G]
		redefine
			is_empty
		end

feature -- Status report

	is_empty: BOOLEAN = False
			-- Is structure empty? (Answer: no.)

	full: BOOLEAN = True
			-- The structure is complete

invariant

	never_empty: not is_empty
	always_full: full

note
	library:	"EiffelBase: Library of reusable components for Eiffel."
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"







end -- class INFINITE



