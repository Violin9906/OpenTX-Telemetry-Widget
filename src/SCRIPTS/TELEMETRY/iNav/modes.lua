local HORUS = ...

-- Modes: t=text / f=flags for text / w=wave file
local modes = {
	{ t = "! TELE !", f = 3 },							-- 1
	{ t = " STABLE ",   f = 0, w = "anglmd" },			-- 2
	{ t = "OFFBOARD",   f = 0, w = "offbrd" },			-- 3
	{ t = "  ACRO  ",   f = 0, w = "acromd" },			-- 4
	{ t = " NOT OK ",  f = 3 },							-- 5
	{ t = "  READY ",   f = 0, w = "ready" },			-- 6
	{ t = "POSITION",  f = 0, w = "poshld" },			-- 7
	{ t = " MISSION",   f = 0, w = "mismod" },			-- 8
	{ t = " MANUAL ",   f = 0, w = "manmd" },			-- 9
	{ t = " RETURN ", f = 3, w = "rtl" },				-- 10
	{ t = "! FAIL !",  f = 3, w = "err" },				-- 11
	{ t = "! THROT !", f = 3 },							-- 12
	{ t = "  AUTO  ",   f = 0, w = "auto" },			-- 13
	{ t = "ALTITUDE",  f = 0, w = "althld" },			-- 14
	{ t = " UNKNOWN",   f = 0, w = "uknmod" },			-- 15
	{ t = "!FAILURE!",  f = 3, w = "fson" },			-- 16
	{ t = "TERMINATE",  f = 3, w = "term" },			-- 17
}

local units = { [0] = "", "V", "A", "mA", "kts", "m/s", "f/s", "kmh", "MPH", "m", HORUS and "ft" or "'" }

local labels = { "Fuel", "Battery", "Current", "Altitude", "Distance" }

local dir = { [0] = "N", "NE", "E", "SE", "S", "SW", "W", "NW" }

return modes, units, labels, dir