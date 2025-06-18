schedule function weather_detector:tick 1t

execute if predicate {condition: "weather_check", raining: false, thundering: false} unless score #admin watd_weather matches 0 run return run function weather_detector:weather/clear
execute if predicate {condition: "weather_check", raining: true, thundering: false} unless score #admin watd_weather matches 1 run return run function weather_detector:weather/raining
execute if predicate {condition: "weather_check", raining: true, thundering: true} unless score #admin watd_weather matches 2 run return run function weather_detector:weather/thundering
