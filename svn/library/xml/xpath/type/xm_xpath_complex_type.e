indexing

	description:

		"Objects that represent a descendant of xs:anyTypebut not xs:anySimpleType"

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2005, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2007-01-26 19:55:25 +0100 (Fri, 26 Jan 2007) $"
	revision: "$Revision: 5877 $"

deferred class XM_XPATH_COMPLEX_TYPE
	
inherit
	
	XM_XPATH_SCHEMA_TYPE
		redefine
			is_complex_type, as_complex_type
		end

feature -- Access

	is_complex_type: BOOLEAN is
			-- Is `Current' a complex type?
		do
			Result := True
		end

	as_complex_type: XM_XPATH_COMPLEX_TYPE is
			-- `Current' seen as a simple type
		do
			Result := Current
		end

	is_simple_content: BOOLEAN is
			-- Is content simple?
		deferred
		end

	simple_content_type: XM_XPATH_SIMPLE_TYPE is
			-- Simple content type
		require
			simple_content: is_simple_content
		deferred
		ensure
			simple_content_type_not_void: Result /= Void
		end

feature -- Status report

	is_abstract: BOOLEAN
			-- Does `Current' represent an abstract type?

end
