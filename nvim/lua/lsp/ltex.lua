--
-- Ltex config.
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
local falsePositive = {
	["en-US"] = {
		vim.fn.getenv("CONFIG").."/nvim/spell/false-positive.txt",
		vim.fn.getenv("CONFIG").."/nvim/spell/false-positive-en.txt",
	},
	["it"] = {
		vim.fn.getenv("CONFIG").."/nvim/spell/false-positive.txt",
		vim.fn.getenv("CONFIG").."/nvim/spell/false-positive-it.txt",
	}
}

M.settings = {
	ltex = {
		language = opt.language,
		dictionary = {
			["en-US"] = utils.readFiles(dictionaries["en-US"] or {}),
			["it"] = utils.readFiles(dictionaries["it"] or {}),
		},
		hiddenFalsePositives = {
			["en-US"] = utils.readFiles(falsePositive["en-US"] or {}),
			["it"] = utils.readFiles(falsePositive["it"] or {}),
		};
	},
}

return M
