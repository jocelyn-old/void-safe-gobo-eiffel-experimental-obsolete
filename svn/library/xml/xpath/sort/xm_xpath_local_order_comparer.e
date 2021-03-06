indexing

	description:

		"Objects that compare two nodes in the same document"

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2007-01-26 19:55:25 +0100 (Fri, 26 Jan 2007) $"
	revision: "$Revision: 5877 $"

class XM_XPATH_LOCAL_ORDER_COMPARER

inherit

	XM_XPATH_NODE_ORDER_COMPARER

feature -- Comparison

		three_way_comparison (a_node, another_node: XM_XPATH_NODE): INTEGER is
			-- If nodes are then same, 0;
			-- if `a_node' smaller, -1; if greater, 1
		do
			Result := a_node.three_way_comparison (another_node)
		end
end
	
