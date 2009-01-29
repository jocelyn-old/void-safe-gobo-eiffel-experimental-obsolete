indexing

	description:

		"Objects that can be returned from {XM_XSLT_MODE}.rule"

	library: "Gobo Eiffel XSLT Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2007-05-14 04:13:22 +0200 (lun., 14 mai 2007) $"
	revision: "$Revision: 5970 $"

class	XM_XSLT_RULE_VALUE

create

	make, make_boolean

feature {NONE} -- Initialization

	make (a_template: XM_XSLT_COMPILED_TEMPLATE) is
			-- Create a template rule.
		require
			template_not_void: a_template /= Void
		do
			is_template := True
			template_value := a_template
		ensure
			template_set: is_template and then template_value = a_template
		end

	make_boolean (a_boolean: BOOLEAN) is
			-- Create a boolean rule
		do
			is_boolean := True
			boolean_value := a_boolean
		ensure
			boolean_set: is_boolean and then boolean_value = a_boolean
		end

feature -- Access

	as_boolean: BOOLEAN is
			-- Value as a `BOOLEAN'
		require
			is_boolean: is_boolean
		do
			Result := boolean_value
		end

	as_template: XM_XSLT_COMPILED_TEMPLATE is
			-- Value as an `XM_XSLT_COMPILED_TEMPLATE'
		require
			is_template: is_template
		local
			r: like template_value
		do
			r := template_value
			check r /= Void end -- implied by `is_template'
			Result := r
		end

feature -- Status report

	is_boolean: BOOLEAN
			-- Is `Current' a `BOOLEAN'?

	is_template: BOOLEAN
			-- Is `Current' an `XM_XSLT_COMPILED_TEMPLATE'?

feature {XM_XSLT_MODE} -- Debugging and implementation

	template_value: ?XM_XSLT_COMPILED_TEMPLATE
			-- Template value

feature {NONE} -- Implementation

	boolean_value: BOOLEAN
			-- Boolean value

invariant

	boolean_or_template: is_boolean xor is_template
	template: is_template implies template_value /= Void

end

