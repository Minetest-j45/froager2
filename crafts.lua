minetest.register_craft({
	output = "froager2:supremium_ingot",
	recipe = {
	{"default:glass", "default:glass", "default:glass"},
	{"default:glass", "default:mese", "default:glass"},
	{"default:glass", "default:glass", "default:glass"},
	}
})

local function craft_energized_supremium_ingot(color)
  local m = "froager2:energy_"..color
  minetest.register_craft({
    	output = "froager2:energized_supremium_ingot_"..color,
    	recipe = {
		{m,m,m},
		{m,"froager2:supremium_ingot",m},
		{m,m,m},
		}
	})
end

craft_energized_supremium_ingot("red")
craft_energized_supremium_ingot("blue")
craft_energized_supremium_ingot("green")

local function craft_energized_supremium_pick(color)
	local material = "froager2:energized_supremium_ingot_"..color
	minetest.register_craft({
		output = "froager2:pick_energized_supremium_"..color,
		recipe = {
		{material, material, material},
		{"", "default:stick", ""},
		{"", "default:stick", ""},
		}
	})
end

craft_energized_supremium_pick("red")
craft_energized_supremium_pick("blue")
craft_energized_supremium_pick("green")
craft_energized_supremium_pick("purple")

minetest.register_craft({
	output = "froager2:supremium_singularity",
	recipe = {
		{"", "froager2:energized_supremium_ingot_red", ""},
		{"froager2:energized_supremium_ingot_green", "froager2:fusionator", "froager2:energized_supremium_ingot_blue"},
		{"", "froager2:energized_supremium_ingot_purple", ""},
	},
})

minetest.register_craft({
	output = "froager2:fusionator",
	recipe = {
		{"", "froager2:steel_bar", ""},
		{"froager2:steel_bar", "froager2:fusioncore", "froager2:steel_bar"},
		{"", "froager2:steel_bar", ""},
	}
})
minetest.register_craft({
	output = "froager2:fusioncore",
	recipe = {
		{"", "froager2:kinetic_energy_red", ""},
		{"froager2:kinetic_energy_green", "froager2:steel_bar", "froager2:kinetic_energy_blue"},
		{"", "froager2:kinetic_energy_purple", ""},
	}
})
minetest.register_craft({
	output = "froager2:steel_bar",
	recipe = {
		{"", "", "default:steel_ingot"},
		{"", "default:steel_ingot", ""},
		{"default:steel_ingot", "", ""},
	},
})