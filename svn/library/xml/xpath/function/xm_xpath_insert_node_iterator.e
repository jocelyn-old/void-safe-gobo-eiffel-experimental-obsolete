indexing

	description:

		"Objects that insert a subsequence of nodes"

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2007, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2007-12-24 19:02:51 +0100 (Mon, 24 Dec 2007) $"
	revision: "$Revision: 6224 $"

class XM_XPATH_INSERT_NODE_ITERATOR

inherit

	XM_XPATH_SEQUENCE_ITERATOR [XM_XPATH_NODE]

create

	make

feature {NONE} -- Initialization

	make (a_base_iterator, an_insertion_iterator: XM_XPATH_SEQUENCE_ITERATOR [XM_XPATH_NODE]; an_insert_position: INTEGER) is
			-- Establish invariant.
		require
			base_iterator_before: a_base_iterator /= Void and then not a_base_iterator.is_error and then a_base_iterator.before
			insertion_iterator_before: an_insertion_iterator /= Void and then not an_insertion_iterator.is_error and then an_insertion_iterator.before
			strictly_positive_insert_position: an_insert_position > 0
		do
			base_iterator := a_base_iterator
			insertion_iterator := an_insertion_iterator
			insert_position := an_insert_position
			is_inserting := insert_position = 1
		ensure
			base_iterator_set: base_iterator = a_base_iterator
			insertion_iterator_set: insertion_iterator = an_insertion_iterator
			insert_position_set: insert_position = an_insert_position
		end
	
feature -- Access

	item: XM_XPATH_NODE
			-- Node at the current position

feature -- Status report

	after: BOOLEAN is
			-- Are there any more items in the sequence?
		do
			Result := item = Void
		end

feature -- Cursor movement

	forth is
			-- Move to next position
		do
			index := index + 1
			if not insertion_iterator.before and then insertion_iterator.after then
				is_inserting := False
			end
			if is_inserting then
				if insertion_iterator.before then
					insertion_iterator.start
				else
					insertion_iterator.forth
				end
				if insertion_iterator.is_error then
					set_last_error (insertion_iterator.error_value)
					item := Void
				elseif not insertion_iterator.before and then insertion_iterator.after then
					is_inserting := False
					if not base_iterator.before and then base_iterator.after then
						item := Void
					else
						base_iterator.start
						if base_iterator.is_error then
							set_last_error (base_iterator.error_value)
							item := Void
						elseif base_iterator.after then
							item := Void
						else
							item := base_iterator.item
						end
					end
				else
					item := insertion_iterator.item
				end
			else
				if index = insert_position then
					if insertion_iterator.before then
						insertion_iterator.start
					else
						insertion_iterator.forth
					end
					if insertion_iterator.is_error then
						set_last_error (insertion_iterator.error_value)
						item := Void
					elseif not insertion_iterator.before and then insertion_iterator.after then
						if base_iterator.before then
							base_iterator.start
						else
							base_iterator.forth
						end
						if base_iterator.is_error then
							set_last_error (base_iterator.error_value)
							item := Void
						elseif base_iterator.after then
							item := Void
						else
							item := base_iterator.item
						end
					else
						item := insertion_iterator.item
					end
				else
					if base_iterator.before then
						base_iterator.start
					else
						base_iterator.forth
					end
					if base_iterator.is_error then
						set_last_error (base_iterator.error_value)
						item := Void
					elseif base_iterator.after then
						item := Void
						if index < insert_position then
							is_inserting := True
							if insertion_iterator.before then
								insertion_iterator.start
							else
								insertion_iterator.forth
							end
							if insertion_iterator.is_error then
								set_last_error (insertion_iterator.error_value)
								item := Void
							elseif not insertion_iterator.before and then insertion_iterator.after then
								item := Void
							else
								item := insertion_iterator.item
							end
						end
					else
						item := base_iterator.item
					end
				end
			end
		end

feature -- Duplication

	another: like Current is
			-- Another iterator that iterates over the same items as the original
		do
			create Result.make (base_iterator.another, insertion_iterator.another, insert_position)
		end
	
feature {NONE} -- Implementation

	base_iterator: XM_XPATH_SEQUENCE_ITERATOR [XM_XPATH_NODE]
			-- Target sequence

	insertion_iterator: XM_XPATH_SEQUENCE_ITERATOR [XM_XPATH_NODE]
			-- Sequence to insert into target

	insert_position: INTEGER
			-- Position before which insertion is made

	is_inserting: BOOLEAN
			-- Are we inserting?

invariant

	base_iterator_not_void: base_iterator /= Void
	insertion_iterator_not_void: insertion_iterator /= Void
	strictly_positive_insert_position: insert_position > 0

end
	
