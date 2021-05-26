scoreboard objectives remove dspwn_beacn_tick
scoreboard objectives remove dspwn_beacn_beam
scoreboard objectives remove raider_wave_num
scoreboard objectives remove dspn_beacon_set
scoreboard objectives remove dspn_beacn_unset
scoreboard objectives remove d_beac_blckr_set
scoreboard objectives remove d_bc_blckr_unset
scoreboard objectives remove dspn_beac_detect
scoreboard objectives remove dspn_beac_gui

#It's best to manually kill these, but in case you missed some:
kill @e[tag=despawning_beacon]
kill @e[tag=despawning_beacon_blocker]
