#player data to always track

execute as @a[nbt={Dimension:"minecraft:overworld"}] run function cf:game/storexyz
execute as @a[nbt={Dimension:"minecraft:the_nether"}] run function cf:game/storenxyz

scoreboard players set @a currentDeaths 0
execute at @a run scoreboard players operation @p currentDeaths += @p totalDeaths
execute at @a run scoreboard players operation @p currentDeaths -= @p initDeaths