indexing

	description:

		"Objects that compare two nodes to determine document order"

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2007-12-28 23:18:20 +0100 (Fri, 28 Dec 2007) $"
	revision: "$Revision: 6242 $"

deferred class	XM_XPATH_NODE_ORDER_COMPARER

inherit

	KL_PART_COMPARATOR [XM_XPATH_NODE]

feature -- Comparison

	three_way_comparison (a_node, another_node: XM_XPATH_NODE): INTEGER is
			-- If nodes are then same, 0;
			-- if `a_node' smaller, -1; if greater, 1
		require
			first_node_not_void: a_node /= Void
			second_node_not_void: another_node /= Void
		deferred
		ensure
			valid_result: -1 <= Result and then Result <= 1
		end

	less_than (u, v: XM_XPATH_NODE): BOOLEAN is
        -- Is u considered less than v?
		do
			Result := three_way_comparison (u, v) = -1
		end

end
	
