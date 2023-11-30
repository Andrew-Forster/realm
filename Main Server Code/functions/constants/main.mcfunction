#MAIN SERVER CORE
#-Protection


tag @a[tag=atspawn] add protectedarea
tag @a[tag=!atspawn] remove protectedarea
tag @a[tag=shop] add protectedarea
tag @a[tag=!shop] remove protectedarea
tag @a[tag=wz] add protectedarea
tag @a[tag=!wz] remove protectedarea

gamemode a @a[tag=!staff,tag=protectedarea]
effect @a[tag=!staff,tag=protectedarea] resistance 1 255 true
effect @a[tag=!staff,tag=protectedarea] weakness 1 255 true

effect @a[tag=!staff,tag=cmdprotect] weakness 1 255 true
effect @a[tag=!staff,tag=cmdprotect] mining_fatigue 1 255 true

tp @a[tag=cmd] 100000 98 100000
tag @a remove cmd








#-Special Items
#execute @e[name="§l§4Landmine\n §r§cDrop to use§r"] ~~~ scoreboard players add @s specialitem 1
#execute @e[name="§l§4Landmine\n §r§cDrop to use§r,scores={specialitem=4}"] ~~~ 
#execute @e[name="§l§4Landmine\n §r§cDrop to use§r,scores={specialitem=4}"] ~~~ playsound note.bit 1000 1 1000

#-GENERATORS

effect @e[type=rabbit,name="§l§bDiamond §dGen"] invisibility 255 255 true
effect @e[type=rabbit,name="§l§aEmerald §dGen"] invisibility 255 255 true
effect @e[type=rabbit,name="§l§gGold §dGen"] invisibility 255 255 true
effect @e[type=rabbit,name="§l§8Coal §dGen"] invisibility 255 255 true
effect @e[type=rabbit,name="§l§7Netherite §6Gen"] invisibility 255 255 true
effect @e[type=rabbit,name="§l§fIron §dGen"] invisibility 255 255 true
effect @e[type=rabbit,name="§l§cSPECIAL §6Gen"] invisibility 255 255 true

effect @e[type=rabbit,name="§l§bDiamond §dGen"] resistance 255 255 true
effect @e[type=rabbit,name="§l§aEmerald §dGen"] resistance 255 255 true
effect @e[type=rabbit,name="§l§gGold §dGen"] resistance 255 255 true
effect @e[type=rabbit,name="§l§8Coal §dGen"] resistance 255 255 true
effect @e[type=rabbit,name="§l§7Netherite §6Gen"] resistance 255 255 true
effect @e[type=rabbit,name="§l§fIron §dGen"] resistance 255 255 true
effect @e[type=rabbit,name="§l§cSPECIAL §6Gen"] resistance 255 255 true

execute @e[type=rabbit,name="§l§bDiamond §dGen"] ~~0.5~ particle minecraft:sculk_charge_particle
execute @e[type=rabbit,name="§l§aEmerald §dGen"] ~~0.5~ particle minecraft:villager_happy
execute @e[type=rabbit,name="§l§gGold §dGen"] ~-0.5~1~-0.5 particle minecraft:honey_drip_particle
execute @e[type=rabbit,name="§l§7Netherite §6Gen"] ~~0.5~ particle minecraft:falling_dust_gravel_particle
execute @e[type=rabbit,name="§l§fIron §dGen"] ~~0.5~ particle minecraft:endrod
execute @e[type=rabbit,name="§l§cSPECIAL §6Gen"] ~~0.5~ particle minecraft:dragon_breath_trail
#Other cool particles - sculk_sensor_redstone_particle
#soul_particle

#top left corner
execute @e[type=rabbit,name="§l§bDiamond §dGen"] ~0.5~1~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§aEmerald §dGen"] ~0.5~1~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§gGold §dGen"] ~0.5~1~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§8Coal §dGen"] ~0.5~1~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§7Netherite §6Gen"] ~0.5~1~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§fIron §dGen"] ~0.5~1~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§cSPECIAL §6Gen"] ~0.5~1~0.5 particle minecraft:balloon_gas_particle
#top right corner
execute @e[type=rabbit,name="§l§bDiamond §dGen"] ~-0.5~1~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§aEmerald §dGen"] ~-0.5~1~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§gGold §dGen"] ~-0.5~1~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§8Coal §dGen"] ~-0.5~1~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§7Netherite §6Gen"] ~-0.5~1~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§fIron §dGen"] ~-0.5~1~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§cSPECIAL §6Gen"] ~-0.5~1~0.5 particle minecraft:balloon_gas_particle

#bottom left corner
execute @e[type=rabbit,name="§l§bDiamond §dGen"] ~0.5~1~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§aEmerald §dGen"] ~0.5~1~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§gGold §dGen"] ~0.5~1~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§8Coal §dGen"] ~0.5~1~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§7Netherite §6Gen"] ~0.5~1~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§fIron §dGen"] ~0.5~1~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§cSPECIAL §6Gen"] ~0.5~1~-0.5 particle minecraft:balloon_gas_particle
#bottom right corner
execute @e[type=rabbit,name="§l§bDiamond §dGen"] ~-0.5~1~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§aEmerald §dGen"] ~-0.5~1~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§gGold §dGen"] ~-0.5~1~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§8Coal §dGen"] ~-0.5~1~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§7Netherite §6Gen"] ~-0.5~1~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§fIron §dGen"] ~-0.5~1~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§cSPECIAL §6Gen"] ~-0.5~1~-0.5 particle minecraft:balloon_gas_particle


#btop left corner
execute @e[type=rabbit,name="§l§bDiamond §dGen"] ~0.5~~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§aEmerald §dGen"] ~0.5~~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§gGold §dGen"] ~0.5~~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§8Coal §dGen"] ~0.5~~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§7Netherite §6Gen"] ~0.5~~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§fIron §dGen"] ~0.5~~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§cSPECIAL §6Gen"] ~0.5~~0.5 particle minecraft:balloon_gas_particle
#btop right corner
execute @e[type=rabbit,name="§l§bDiamond §dGen"] ~-0.5~~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§aEmerald §dGen"] ~-0.5~~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§gGold §dGen"] ~-0.5~~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§8Coal §dGen"] ~-0.5~~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§7Netherite §6Gen"] ~-0.5~~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§fIron §dGen"] ~-0.5~~0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§cSPECIAL §6Gen"] ~-0.5~~0.5 particle minecraft:balloon_gas_particle

#bbelow left corner
execute @e[type=rabbit,name="§l§bDiamond §dGen"] ~0.5~~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§aEmerald §dGen"] ~0.5~~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§gGold §dGen"] ~0.5~~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§8Coal §dGen"] ~0.5~~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§7Netherite §6Gen"] ~0.5~~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§fIron §dGen"] ~0.5~~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§cSPECIAL §6Gen"] ~0.5~~-0.5 particle minecraft:balloon_gas_particle
#bbottom right corner
execute @e[type=rabbit,name="§l§bDiamond §dGen"] ~-0.5~~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§aEmerald §dGen"] ~-0.5~~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§gGold §dGen"] ~-0.5~~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§8Coal §dGen"] ~-0.5~~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§7Netherite §6Gen"] ~-0.5~~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§fIron §dGen"] ~-0.5~~-0.5 particle minecraft:balloon_gas_particle
execute @e[type=rabbit,name="§l§cSPECIAL §6Gen"] ~-0.5~~-0.5 particle minecraft:balloon_gas_particle

#--Randomizer
execute @e[type=rabbit,name="§l§8Coal §dGen",scores={randomizer=1..2}] ~~~ setblock ~~1~ stone keep
execute @e[type=rabbit,name="§l§8Coal §dGen",scores={randomizer=3}] ~~~ setblock ~~1~ coal_ore keep
execute @e[type=rabbit,name="§l§8Coal §dGen",scores={randomizer=4}] ~~~ setblock ~~1~ stone keep
execute @e[type=rabbit,name="§l§8Coal §dGen",scores={randomizer=5}] ~~~ setblock ~~1~ coal_ore keep
execute @e[type=rabbit,name="§l§8Coal §dGen",scores={randomizer=6..9}] ~~~ setblock ~~1~ cobblestone keep
execute @e[type=rabbit,name="§l§8Coal §dGen",scores={randomizer=10}] ~~~ setblock ~~1~ coal_block keep
execute @e[type=rabbit,name="§l§8Coal §dGen",scores={randomizer=11..12}] ~~~ setblock ~~1~ coal_ore keep
execute @e[type=rabbit,name="§l§8Coal §dGen",scores={randomizer=13..14}] ~~~ setblock ~~1~ cobblestone keep
execute @e[type=rabbit,name="§l§8Coal §dGen",scores={randomizer=15}] ~~~ setblock ~~1~ coal_ore keep

execute @e[type=rabbit,name="§l§fIron §dGen",scores={randomizer=1..2}] ~~~ setblock ~~1~ stone keep
execute @e[type=rabbit,name="§l§fIron §dGen",scores={randomizer=3..4}] ~~~ setblock ~~1~ iron_ore keep
execute @e[type=rabbit,name="§l§fIron §dGen",scores={randomizer=6..8}] ~~~ setblock ~~1~ cobblestone keep
execute @e[type=rabbit,name="§l§fIron §dGen",scores={randomizer=9}] ~~~ setblock ~~1~ iron_ore keep
execute @e[type=rabbit,name="§l§fIron §dGen",scores={randomizer=10}] ~~~ setblock ~~1~ iron_ore keep
execute @e[type=rabbit,name="§l§fIron §dGen",scores={randomizer=11}] ~~~ setblock ~~1~ cobblestone keep
execute @e[type=rabbit,name="§l§fIron §dGen",scores={randomizer=12..13}] ~~~ setblock ~~1~ iron_ore keep
execute @e[type=rabbit,name="§l§fIron §dGen",scores={randomizer=14}] ~~~ setblock ~~1~ stone keep
execute @e[type=rabbit,name="§l§fIron §dGen",scores={randomizer=15}] ~~~ setblock ~~1~ iron_block keep


execute @e[type=rabbit,name="§l§gGold §dGen",scores={randomizer=1..2}] ~~~ setblock ~~1~ cobblestone keep
execute @e[type=rabbit,name="§l§gGold §dGen",scores={randomizer=3}] ~~~ setblock ~~1~ gold_ore keep
execute @e[type=rabbit,name="§l§gGold §dGen",scores={randomizer=4..5}] ~~~ setblock ~~1~ stone keep
execute @e[type=rabbit,name="§l§gGold §dGen",scores={randomizer=6..7}] ~~~ setblock ~~1~ gold_ore keep
execute @e[type=rabbit,name="§l§gGold §dGen",scores={randomizer=8}] ~~~ setblock ~~1~ gold_block keep
execute @e[type=rabbit,name="§l§gGold §dGen",scores={randomizer=9}] ~~~ setblock ~~1~ stone keep
execute @e[type=rabbit,name="§l§gGold §dGen",scores={randomizer=10}] ~~~ setblock ~~1~ cobblestone keep
execute @e[type=rabbit,name="§l§gGold §dGen",scores={randomizer=11..12}] ~~~ setblock ~~1~ stone keep
execute @e[type=rabbit,name="§l§gGold §dGen",scores={randomizer=13..15}] ~~~ setblock ~~1~ gold_ore keep


execute @e[type=rabbit,name="§l§bDiamond §dGen",scores={randomizer=1..2}] ~~~ setblock ~~1~ diamond_ore keep
execute @e[type=rabbit,name="§l§bDiamond §dGen",scores={randomizer=3..5}] ~~~ setblock ~~1~ stone keep
execute @e[type=rabbit,name="§l§bDiamond §dGen",scores={randomizer=6..7}] ~~~ setblock ~~1~ cobblestone keep
execute @e[type=rabbit,name="§l§bDiamond §dGen",scores={randomizer=8..9}] ~~~ setblock ~~1~ deepslate_diamond_ore keep
execute @e[type=rabbit,name="§l§bDiamond §dGen",scores={randomizer=10}] ~~~ setblock ~~1~ basalt keep
execute @e[type=rabbit,name="§l§bDiamond §dGen",scores={randomizer=11..12}] ~~~ setblock ~~1~ cobblestone keep
execute @e[type=rabbit,name="§l§bDiamond §dGen",scores={randomizer=13..14}] ~~~ setblock ~~1~ diamond_ore keep
execute @e[type=rabbit,name="§l§bDiamond §dGen",scores={randomizer=15}] ~~~ setblock ~~1~ deepslate_diamond_ore keep



execute @e[type=rabbit,name="§l§aEmerald §dGen",scores={randomizer=1..2}] ~~~ setblock ~~1~ emerald_ore keep
execute @e[type=rabbit,name="§l§aEmerald §dGen",scores={randomizer=3..4}] ~~~ setblock ~~1~ stone keep
execute @e[type=rabbit,name="§l§aEmerald §dGen",scores={randomizer=5}] ~~~ setblock ~~1~ deepslate keep
execute @e[type=rabbit,name="§l§aEmerald §dGen",scores={randomizer=6..7}] ~~~ setblock ~~1~ emerald_ore keep
execute @e[type=rabbit,name="§l§aEmerald §dGen",scores={randomizer=8..9}] ~~~ setblock ~~1~ stone keep
execute @e[type=rabbit,name="§l§aEmerald §dGen",scores={randomizer=10}] ~~~ setblock ~~1~ emerald_ore keep
execute @e[type=rabbit,name="§l§aEmerald §dGen",scores={randomizer=11..12}] ~~~ setblock ~~1~ deepslate keep
execute @e[type=rabbit,name="§l§aEmerald §dGen",scores={randomizer=13..14}] ~~~ setblock ~~1~ deepslate_emerald_ore keep
execute @e[type=rabbit,name="§l§aEmerald §dGen",scores={randomizer=15}] ~~~ setblock ~~1~ stone keep


execute @e[type=rabbit,name="§l§7Netherite §6Gen",scores={randomizer=1..2}] ~~~ setblock ~~1~ netherrack keep
execute @e[type=rabbit,name="§l§7Netherite §6Gen",scores={randomizer=3..4}] ~~~ setblock ~~1~ quartz_ore keep
execute @e[type=rabbit,name="§l§7Netherite §6Gen",scores={randomizer=5}] ~~~ setblock ~~1~ ancient_debris keep
execute @e[type=rabbit,name="§l§7Netherite §6Gen",scores={randomizer=6..7}] ~~~ setblock ~~1~ nether_gold_ore keep
execute @e[type=rabbit,name="§l§7Netherite §6Gen",scores={randomizer=8..9}] ~~~ setblock ~~1~ netherrack keep
execute @e[type=rabbit,name="§l§7Netherite §6Gen",scores={randomizer=10}] ~~~ setblock ~~1~ ancient_debris keep
execute @e[type=rabbit,name="§l§7Netherite §6Gen",scores={randomizer=11..12}] ~~~ setblock ~~1~ nether_gold_ore keep
execute @e[type=rabbit,name="§l§7Netherite §6Gen",scores={randomizer=13}] ~~~ setblock ~~1~ quartz_ore keep
execute @e[type=rabbit,name="§l§7Netherite §6Gen",scores={randomizer=14..15}] ~~~ setblock ~~1~ ancient_debris keep


execute @e[type=rabbit,name="§l§cSPECIAL §6Gen",scores={randomizer=1..2}] ~~~ setblock ~~1~ diamond_block keep
execute @e[type=rabbit,name="§l§cSPECIAL §6Gen",scores={randomizer=3..4}] ~~~ setblock ~~1~ ancient_debris keep
execute @e[type=rabbit,name="§l§cSPECIAL §6Gen",scores={randomizer=5}] ~~~ setblock ~~1~ emerald_block keep
execute @e[type=rabbit,name="§l§cSPECIAL §6Gen",scores={randomizer=6}] ~~~ setblock ~~1~ amethyst_block keep
execute @e[type=rabbit,name="§l§cSPECIAL §6Gen",scores={randomizer=7..8}] ~~~ setblock ~~1~ ancient_debris keep
execute @e[type=rabbit,name="§l§cSPECIAL §6Gen",scores={randomizer=9}] ~~~ setblock ~~1~ emerald_block keep
execute @e[type=rabbit,name="§l§cSPECIAL §6Gen",scores={randomizer=10..11}] ~~~ setblock ~~1~ waxed_copper keep
execute @e[type=rabbit,name="§l§cSPECIAL §6Gen",scores={randomizer=12}] ~~~ setblock ~~1~ amethyst_block keep
execute @e[type=rabbit,name="§l§cSPECIAL §6Gen",scores={randomizer=13}] ~~~ setblock ~~1~ diamond_block keep
execute @e[type=rabbit,name="§l§cSPECIAL §6Gen",scores={randomizer=14}] ~~~ setblock ~~1~ amethyst_block keep
execute @e[type=rabbit,name="§l§cSPECIAL §6Gen",scores={randomizer=15}] ~~~ setblock ~~1~ waxed_copper keep










