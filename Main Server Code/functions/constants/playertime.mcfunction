scoreboard players add @a sec 1
scoreboard players add @s min 0
scoreboard players add @s hour 0
scoreboard players add @s day 0
scoreboard players add @s month 0


scoreboard players add @a[scores={sec=60..}] min 1
scoreboard players set @a[scores={sec=60..}] sec 0

scoreboard players add @a[scores={min=60..}] hour 1
scoreboard players set @a[scores={min=60..}] min 0

scoreboard players add @a[scores={hour=24..}] day 1
scoreboard players set @a[scores={hour=24..}] hour 0

scoreboard players add @a[scores={day=30..}] month 1
scoreboard players set @a[scores={day=30..}] day 0