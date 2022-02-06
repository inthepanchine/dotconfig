--
-- Grammar guard config.
--

local utils = require("utils")
local opt = require("options")
local M = {}
local dictionaries = {
	["en-US"] = {
		vim.fn.getenv("CONFIG").."/nvim/spell/dictionary.txt",
		vim.fn.getenv("CONFIG").."/nvim/spell/dictionary-en.txt",
	},
	["it"] = {
		vim.fn.getenv("CONFIG").."/nvim/spell/dictionary.txt",
		vim.fn.getenv("CONFIG").."/nvim/spell/dictionary-it.txt",
	}
}

M.settings = {
	ltex = {
		language = opt.language,
		additionalRules = {
			enablePickyRules = true,
			motherTongue= "pt-BR",
		};
		dictionary = {
			["en-US"] = utils.readFiles(dictionaries["en-US"] or {}),
			["it"] = utils.readFiles(dictionaries["it"] or {}),
		};
	},
};

return M
