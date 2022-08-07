# DURABLEAN heal
## check if eligible


# has item?
execute if entity @s[nbt={Inventory:[{id:"minecraft:gold_nugget"}]}] run function durablean:heal/go

scoreboard players reset @s heal_netherite