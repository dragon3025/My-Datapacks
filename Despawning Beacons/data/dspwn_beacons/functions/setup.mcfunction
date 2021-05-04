scoreboard objectives add dspwn_beacn_tick dummy "Light Level Display Tick Timer"
scoreboard objectives add dspwn_beacn_beam dummy "Temporary Despawn Beacon Beam For Finding"
scoreboard objectives add raider_wave_num dummy "Rainer Wave Number"

scoreboard objectives add dspn_beacon_set trigger "Set Beacon To Despawn"
scoreboard objectives add dspn_beacn_unset trigger "Set Nearest Beacon to Not Despawn"
scoreboard objectives add d_beac_blckr_set trigger "Set Warped Wart Block To Block Despawning Beacon"
scoreboard objectives add d_bc_blckr_unset trigger "Set Warped Wart Block To Not Block Despawning Beacon"
scoreboard objectives add dspn_beac_detect trigger "See if you're in range of a despawn beacon"
scoreboard objectives add dspn_beac_gui trigger "Show Despawn Beacon Detection GUI"

scoreboard players add dummy dspwn_beacn_tick 0
