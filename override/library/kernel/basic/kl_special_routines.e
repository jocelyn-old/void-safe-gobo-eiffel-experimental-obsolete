indexing

	description:

		"Routines that ought to be in class SPECIAL. %
		%A special object is a zero-based indexed sequence of values, %
		%equipped with features `put', `item' and `count'."

	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 2003-2008, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2009-06-04 19:36:11 +0200 (Thu, 04 Jun 2009) $"
	revision: "$Revision: 79088 $"

class KL_SPECIAL_ROUTINES [G]

feature -- Initialization

	make_filled (a_default: G; n: INTEGER): SPECIAL [G] is
			-- Create a new special object being able to contain `n' items.
		require
			non_negative_n: n >= 0
		do
			create Result.make_filled (a_default, n)
		ensure
			special_not_void: Result /= Void
			count_set: Result.count = n
		end

	make (n: INTEGER): SPECIAL [G] is
			-- Create a new special object being able to contain `n' items.
		require
			non_negative_n: n >= 0
		do
			create Result.make_empty (n)
		ensure
			special_not_void: Result /= Void
			count_set: Result.count = n
		end

	make_from_array (an_array: ARRAY [G]): SPECIAL [G] is
			-- Create a new special object with items from `an_array'.
		require
			an_array_not_void: an_array /= Void
		local
			array_routines: KL_ARRAY_ROUTINES [G]
		do
			create array_routines
			Result := array_routines.make_from_array (an_array, 0).area
		ensure
			special_not_void: Result /= Void
			count_set: Result.count = an_array.count
--			same_items: forall i in 0 .. (Result.count - 1), Result.item (i) = an_array.item (an_array.lower + i)
		end

feature -- Conversion

	to_special (an_array: ARRAY [G]): SPECIAL [G] is
			-- Fixed array filled with items from `an_array'.
			-- The fixed array and `an_array' may share
			-- internal data and/or `an_array' may be altered.
			-- Use `make_from_array' if this is a concern.
		require
			an_array_not_void: an_array /= Void
		do
			Result := an_array.area
		ensure
			special_not_void: Result /= Void
			count_set: Result.count >= an_array.count
--			same_items: forall i in 0.. (an_array.count - 1), Result.item (i) = an_array.item (an_array.lower + i)
		end

feature -- Status report

	has (an_array: SPECIAL [G]; v: G): BOOLEAN is
			-- Does `v' appear in `an_array'?
		require
			an_array_not_void: an_array /= Void
		local
			i: INTEGER
		do
			from
				i := an_array.count - 1
			until
				Result or i < 0
			loop
				Result := an_array.item (i) = v
				i := i - 1
			end
		end

feature -- Resizing

	resize (an_array: SPECIAL [G]; n: INTEGER): SPECIAL [G] is
			-- Resize `an_array' so that it contains `n' items.
			-- Do not lose any previously entered items.
			-- Note: the returned special object might be `an_array'
			-- or a newly created special object where items from
			-- `an_array' have been copied to.
		require
			an_array_not_void: an_array /= Void
			n_large_enough: n >= an_array.count
		local
--			l_default: G
		do
			if n > an_array.count then
				Result := an_array.aliased_resized_area (n) --aliased_resized_area_with_default (l_default, n)
			else
				Result := an_array
			end
		ensure
			special_not_void: Result /= Void
			count_set: Result.count = n
		end

	resize_with_default (a_default: G; an_array: SPECIAL [G]; n: INTEGER): SPECIAL [G] is
			-- Resize `an_array' so that it contains `n' items.
			-- Do not lose any previously entered items.
			-- Note: the returned special object might be `an_array'
			-- or a newly created special object where items from
			-- `an_array' have been copied to.
		require
			an_array_not_void: an_array /= Void
			n_large_enough: n >= an_array.count
		do
			if n > an_array.count then
				Result := an_array.aliased_resized_area_with_default (a_default, n)
			else
				Result := an_array
			end
		ensure
			special_not_void: Result /= Void
			count_set: Result.count = n
		end


end
