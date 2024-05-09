execute if block ~ ~ ~ #dragon_immune run setblock ~ ~4 ~ black_wool
execute if block ~ ~ ~ air run setblock ~ ~4 ~ blue_wool
execute unless block ~ ~ ~ #dragon_immune unless block ~ ~ ~ air run setblock ~ ~4 ~ red_stained_glass
execute unless block ~ ~ ~ #dragon_immune unless block ~ ~ ~ air run setblock ~ ~3 ~ beacon
execute unless block ~ ~ ~ #dragon_immune unless block ~ ~ ~ air run fill ~-1 ~2 ~-1 ~1 ~2 ~1 iron_block
