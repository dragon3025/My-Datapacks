gamerule spawn_mobs false
gamerule spawn_monsters false
gamemode creative @a

tellraw @a [\
{color: "red", text: "WARNING: \"No Spoiler Preview\" is installed. This allows you to view the world without seeing valuable blocks or structures, (they wont generate). It's meant to be used to find the "},\
{color: "green", text: "seed", click_event: {action: "run_command", command: "/seed"}, hover_event: {action: "show_text", value: "Click to get seed."}},\
{color: "red", text: " you want in a world that you'll discard; it's not meant to be used in a world that you'll keep."}\
]
