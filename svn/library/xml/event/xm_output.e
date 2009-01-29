indexing

	description:

		"Output facility switchable between in-memory string and standard output"

	library: "Gobo Eiffel XML Library"
	copyright: "Copyright (c) 2002, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2007-01-26 19:55:25 +0100 (ven., 26 janv. 2007) $"
	revision: "$Revision: 5877 $"

class XM_OUTPUT

inherit

	ANY

	KL_SHARED_STANDARD_FILES
		export {NONE} all end

	KL_IMPORTED_STRING_ROUTINES
		export {NONE} all end

feature -- Output

	set_output_to_string is
			-- Set output to new string.
		do
			create last_output.make_empty
			output_stream := Void
		ensure
			last_output_not_void: last_output /= Void
			last_output_empty: {o: like last_output} last_output and then o.count = 0
		end

	set_output_string (a_string: like last_output) is
			-- Initialize output to given string,
			-- the result must still be collected from
			-- last_output, which may be another string.
		require
			a_string_not_void: a_string /= Void
		do
			last_output := STRING_.cloned_string (a_string)
			output_stream := Void
		end

	set_output_stream (a_stream: like output_stream) is
			-- Set output to stream.
		require
			a_stream_not_void: a_stream /= Void
		do
			output_stream := a_stream
			last_output := Void
		end

	set_output_standard is
			-- Set output to standard output (Default).
		do
			output_stream := std.output
			last_output := Void
		end

	set_output_standard_error is
			-- Set output to standard error.
		do
			output_stream := std.error
			last_output := Void
		end

	last_output: ?STRING
			-- Last output;
			-- May be void if standard output or stream is used.

	flush is
			-- Flush `output_stream'.
		local
			s: like output_stream
		do
			s := output_stream
			if s /= Void and then s.is_open_write then
				s.flush
			end
		end

feature {NONE} -- Output stream

	output_stream: ?KI_CHARACTER_OUTPUT_STREAM

feature -- Output, interface to descendants

	output (a_string: STRING) is
			-- Output string.
			-- All output from descendants should go through this for
			-- convenient redefinition.
		require
			a_string_not_void: a_string /= Void
		local
			l_last_output: like last_output
			l_output_stream: like output_stream
		do
			l_last_output := last_output
			if l_last_output /= Void then
				last_output := STRING_.appended_string (l_last_output, a_string)
			else
				l_output_stream := output_stream
				if l_output_stream = Void then
					set_output_standard
					l_output_stream := output_stream
					check l_output_stream /= Void end -- implied by action of `set_output_standard'
				end
				l_output_stream.put_string (a_string)
			end
			check one_set: output_stream /= Void or last_output /= Void end
		end

end
