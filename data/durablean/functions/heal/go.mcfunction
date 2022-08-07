# DURABLEAN heal
## if eligible


# clear item
clear @s netherite_nugget:netherite_nugget 1

# heal
item modify entity @s weapon.mainhand durablean:heal

# announce
tellraw @s {"text":"Your item has been healed!","color":"green"}
playsound block.anvil.use player @s