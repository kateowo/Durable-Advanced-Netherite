# DURABLEAN heal
## check if eligible


scoreboard players set @s has_netherite_nugget 0
scoreboard players set @s has_advanced_netherite 0

# has at least 1 netherite nugget?
execute if entity @s[nbt={Inventory:[{id:"netherite_nugget:netherite_nugget"}]}] run scoreboard players set @s has_netherite_nugget 1
## display error if else
execute unless score @s has_netherite_nugget matches 1.. run tellraw @s {"text":"A Netherite Nugget is required to heal your item.","color":"red"}

# is holding advanced netherite?
execute unless entity @s[nbt=!{SelectedItem:{id:"advancednetherite:netherite_iron_helmet"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_iron_chestplate"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_iron_leggings"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_iron_boots"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_iron_sword"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_iron_pickaxe"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_iron_axe"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_iron_hoe"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_iron_hoe"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_gold_helmet"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_gold_chestplate"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_gold_leggings"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_gold_boots"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_gold_sword"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_gold_pickaxe"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_gold_axe"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_gold_hoe"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_gold_hoe"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_emerald_helmet"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_emerald_chestplate"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_emerald_leggings"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_emerald_boots"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_emerald_sword"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_emerald_pickaxe"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_emerald_axe"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_emerald_hoe"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_emerald_hoe"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_diamond_helmet"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_diamond_chestplate"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_diamond_leggings"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_diamond_boots"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_diamond_sword"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_diamond_pickaxe"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_diamond_axe"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_diamond_hoe"}},nbt=!{SelectedItem:{id:"advancednetherite:netherite_diamond_hoe"}}] run scoreboard players set @s has_advanced_netherite 1
## display error if else
execute unless score @s has_advanced_netherite matches 1.. run tellraw @s {"text":"You must hold the Advanced Netherite armour piece or tool you want to heal.","color":"red"}


# if eligible
execute if score @s has_netherite_nugget matches 1.. if score @s has_advanced_netherite matches 1.. run function durablean:heal/go

scoreboard players reset @s heal_netherite