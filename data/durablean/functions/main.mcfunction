# DURABLEAN main loop


# heal item trigger
## /trigger heal_netherite
execute as @a at @s if score @s heal_netherite matches 1.. run function durablean:heal/check