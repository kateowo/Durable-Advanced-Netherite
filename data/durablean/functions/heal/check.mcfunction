# DURABLEAN heal
## check if eligible


# has item?
execute if entity @s[nbt={Inventory:[{id:"netherite_nugget:netherite_nugget"}]}] run function durablean:heal/go

scoreboard players reset @s heal_netherite