execute as @s[nbt={SaddleItem:{id: "minecraft:saddle"}}] run summon minecraft:zombie_horse ~ ~ ~ {Tame: true, SaddleItem: {id: "minecraft:saddle", Count: 1b}}
execute as @s[nbt=!{SaddleItem:{id: "minecraft:saddle"}}] run summon minecraft:zombie_horse ~ ~ ~ {Tame: true}

clear @p minecraft:rotten_flesh 64
tp @s ~ -128 ~
