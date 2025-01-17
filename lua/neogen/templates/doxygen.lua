local i = require("neogen.types.template").item
return {
    { nil, "/**", { no_results = true, type = { "func", "file", "class" } } },
    { nil, " * @file", { no_results = true, type = { "file" } } },
    { nil, " * @brief $1", { no_results = true, type = { "func", "file", "class" } } },
    { nil, " */", { no_results = true, type = { "func", "file", "class" } } },
    { nil, "", { no_results = true, type = { "file" } } },

    { nil, "/**", { type = { "func", "class" } } },
    { i.ClassName, " * @class %s", { type = { "class" } } },
    { nil, " * @brief $1", { type = { "func", "class" } } },
    { nil, " *", { type = { "func", "class" } } },
    { i.Tparam, " * @tparam %s $1" },
    { i.Parameter, " * @param %s $1" },
    { i.Return, " * @return $1" },
    { nil, " */", { type = { "func", "class" } } },
}
