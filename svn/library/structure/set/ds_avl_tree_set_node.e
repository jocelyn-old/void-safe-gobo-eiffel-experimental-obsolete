indexing

	description:

		"AVL tree nodes with a balance factor"

	library: "Gobo Eiffel Structure Library"
	copyright: "Copyright (c) 2008, Daniel Tuser and others"
	license: "MIT License"
	date: "$Date: 2008-07-20 21:27:20 +0200 (Sun, 20 Jul 2008) $"
	revision: "$Revision: 6454 $"

class DS_AVL_TREE_SET_NODE [G]

inherit

	DS_BINARY_SEARCH_TREE_SET_NODE [G]

	DS_AVL_TREE_CONTAINER_NODE [G, G]
		rename
			key as item,
			set_key as set_item
		end

create {DS_AVL_TREE_SET}

	make

end
