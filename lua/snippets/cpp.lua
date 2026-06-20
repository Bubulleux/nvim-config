local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local f = ls.function_node
local fmt = require("luasnip.extras.fmt").fmt

-- Fonction qui retourne le nom du fichier courant sans l'extension
local filename = function ()
	return { vim.fn.expand('%:t:r') }
end

-- Retourne le nom du fichier en majuscules suivi de _HPP
local header_guard = function ()
	local name = vim.fn.expand('%:t:r')
	return { string.upper(name) .. "_HPP" }
end

return {
	-- Snippet pour le Header (hclass)
	s(
		"hclass",
		fmt([[
#ifndef {}
#define {}

class {}
{{
	public:
		{}();
		{}(const {} &other);
		{} &operator=(const {} &other);
		~{}();

	private:
		{}
}};

#endif // {}
]], {
			f(header_guard),
			f(header_guard),      -- Pour #ifndef et #define
			f(filename),          -- Pour class Name
			f(filename),          -- Constructeur par défaut
			f(filename),
			f(filename),          -- Constructeur par copie
			f(filename),
			f(filename),          -- Opérateur d'affectation
			f(filename),          -- Destructeur
			i(1, "// attributs"), -- Curseur
			f(header_guard)       -- Pour #endif
		})
	),

	-- Snippet pour l'implémentation (cclass)
	s(
		"cclass",
		fmt([[
#include "inc/{}.hpp"
#include <iostream>

{}::{}()
{{
    std::cout << "{} constructor" << std::endl;
}}

{}::~{}() {{ std::cout << "{} destructor" << std::endl; }}

{}::{}(const {} &other) : {}
{{
    std::cout << "{} copy constructor" << std::endl;
}}

{} &{}::operator=(const {} &other)
{{
    std::cout << "{} copy assignement operator" << std::endl;
    if (this != &other)
    {{
        {}
    }}
    return *this;
}}

]], {
			f(filename),
			f(filename),
			f(filename),
			f(filename),
			f(filename),
			f(filename),
			f(filename),
			f(filename),
			f(filename),
			f(filename),
			i(1, "// Cope des attributs"),
			f(filename),
			f(filename),
			f(filename),
			f(filename),
			f(filename),
			i(2, "// Copie des attributs")
		})
	)
}
