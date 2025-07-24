
Config = {}

Config.Key = 0xC7B5340A -- Enter

Config.DistanceForPrompt = 0.8

Config.Places = {
	-- Hobbit House, NE of Bacchus Station
	["BacchusHobbitHouse"] = {
		PromptLabel = "Hobbit House",
		UseBlip = false,
		BlipSprite = 1475879922,
		EnterPrompt = vector4(745.42, 1827.42, 238.47, 215.6),
		EnterSpawn = vector4(748.06, 1823.81, 239.26, 179.17),
		ExitPrompt = vector4(748.06, 1823.81, 239.26, 179.17),
		ExitSpawn = vector4(745.42, 1827.42, 238.47, 215.6),
	},
	["StDenisJewelryStore"] = {
		PromptLabel = "Beautician Shop",
		UseBlip = true,
		BlipSprite = 1475879922,
		EnterPrompt = vector4(2656.68, -1280.25, 52.14, 18.82),
		EnterSpawn = vector4(2657.238, -1280.97, 45.009, 201.57),
		ExitPrompt = vector4(2657.238, -1280.97, 45.009, 201.57),
		ExitSpawn = vector4(2656.68, -1280.25, 52.14, 18.82),
	},
	["StDenisIceCreamInteriorDoor1"] = {
		PromptLabel = "St. Denis Ice Cream Shop",
		UseBlip = false,
		BlipSprite = 1475879922,
		EnterPrompt = vector4(2697.31, -1377.69, 46.45, 310.16),
		EnterSpawn = vector4(2708.06, -1364.9, 52.34, 130.11),
		ExitPrompt = vector4(2708.39, -1364.47, 52.34, 261.71),
		ExitSpawn = vector4(2697.31, -1377.69, 46.46, 125.63),
	},
	["StDenisIceCreamInteriorDoor2"] = {
		PromptLabel = "St. Denis Ice Cream Shop",
		UseBlip = false,
		BlipSprite = 1475879922,
		EnterPrompt = vector4(2690.76, -1369.89, 46.7, 309.71),
		EnterSpawn = vector4(2707.98, -1372.84, 52.34, 58.25),
		ExitPrompt = vector4(2708.42, -1373.23, 52.34, 272.91),
		ExitSpawn = vector4(2690.76, -1369.89, 46.7, 130.04),
	},
	["ColterMine"] = {
		PromptLabel = "Colter Mine",
		UseBlip = true,
		BlipSprite = 1475879922,
		EnterPrompt = vector4(-1554.13, 2962.14, 470.56, 103.69),
		EnterSpawn = vector4(-1556.13, 2963.18, 471.42, 110.8),
		ExitPrompt = vector4(-1556.13, 2963.18, 471.42, 303.52),
		ExitSpawn = vector4(-1554.13, 2962.14, 470.56, 307.25),
	},
	["StDenisCuriosityShopSecretBookcase"] = {
		PromptLabel = "Secret Bookcase",
		UseBlip = false,
		BlipSprite = 1475879922,
		EnterPrompt = vector4(2860.26, -1195.4, 48.99, 95.28),
		EnterSpawn = vector4(2858.51, -1195.61, 48.99, 88.1),
		ExitPrompt = vector4(2858.35, -1195.72, 49.01, 292.2),
		ExitSpawn = vector4(2860.59, -1195.65, 48.99, 259.05),
	},
	["DoylesBalcony"] = {
		PromptLabel = "Doyle's Balcony",
		UseBlip = false,
		BlipSprite = 1475879922,
		EnterPrompt = vector4(2796.96, -1176.52, 47.79, 340.24),
		EnterSpawn = vector4(2796.96, -1176.52, 51.99, 195.49),
		ExitPrompt = vector4(2796.8, -1176.25, 51.99, 335.29),
		ExitSpawn = vector4(2796.61, -1176.96, 47.7, 149.42),
	},
	["DoylesCloset"] = {
		PromptLabel = "Doyle's Closet",
		UseBlip = false,
		BlipSprite = 1475879922,
		EnterPrompt = vector4(2801.1, -1168.03, 47.93, 149.39),
		EnterSpawn = vector4(2800.67, -1169.15, 47.93, 126.5),
		ExitPrompt = vector4(2800.5, -1169.09, 47.93, 336.07),
		ExitSpawn = vector4(2801.12, -1168.49, 47.93, 10.72),
	},
	["DoylesCellar"] = {
		PromptLabel = "Doyle's Cellar",
		UseBlip = false,
		BlipSprite = 1475879922,
		EnterPrompt = vector4(2813.88, -1165.47, 47.59, 114.92),
		EnterSpawn = vector4(2802.02, -1162.96, 34.03, 145.37),
		ExitPrompt = vector4(2802.42, -1162.38, 34.03, 330.76),
		ExitSpawn = vector4(2814.44, -1165.44, 47.59, 284.07),
	},
	["ValSouthwestMeatCellar"] = {
		PromptLabel = "Cellar Door",
		UseBlip = false,
		BlipSprite = 1475879922,
		EnterPrompt = vector4(-608.52, 520.78, 96.55, 36.2),
		EnterSpawn = vector4(-610.89, 523.63, 94.79, 34.9),
		ExitPrompt = vector4(-610.89, 523.63, 94.79, 34.9),
		ExitSpawn = vector4(-608.12, 520.38, 96.54, 217.27),
	},
	["RhodesGunsmithCellar"] = {
		PromptLabel = "Cellar Door",
		UseBlip = false,
		BlipSprite = 1475879922,
		EnterPrompt = vector4(1326.35, -1325.36, 77.92, 165.16),
		EnterSpawn = vector4(1323.99, -1325.04, 74.94, 52.1),
		ExitPrompt = vector4(1325.06, -1325.72, 75.57, 255.12),
		ExitSpawn = vector4(1327.89, -1325.93, 77.89, 246.58),
	},
	["GrizzliesLookOutCellar"] = {
		PromptLabel = "Cellar Door",
		UseBlip = false,
		BlipSprite = 1475879922,
		EnterPrompt = vector4(1934.42, 1939.52, 265.75, 13.18),
		EnterSpawn = vector4(1933.84, 1944.08, 262.98, 8.59),
		ExitPrompt = vector4(1933.94, 1943.42, 263.11, 192.96),
		ExitSpawn = vector4(1934.63, 1938.07, 265.52, 193.83),
	},
	
	

	["GuarmaTravel"] = {
		PromptLabel = "Guarma",
		UseBlip = true,
		BlipSprite = 1475879922,
		EnterPrompt = vector4(2851.56, -1426.2, 42.14, 230.27),
		EnterSpawn = vector4(1268.69, -6853.89, 43.27, 238.84),
		ExitPrompt = vector4(1268.69, -6853.89, 43.27, 251.38),
		ExitSpawn = vector4(2851.56, -1426.2, 42.14, 39.73),
	},

}

Config.Guarma = {
	Enabled = true,
}


