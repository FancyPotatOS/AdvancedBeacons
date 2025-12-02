
execute unless score version.advancedbeacon fpconflict.conflict_map matches 1 run tellraw @a ["",{"text":"[Conflict]","color":"red"}," - ",{"text":"Advanced Beacon Datapack ","color":"blue"},"(",{"text":"Overlapping versions.","italic":true,"color":"dark_aqua"},")"]

execute unless score version.fancyui fpconflict.conflict_map matches 1 run tellraw @a ["",{"text":"[Conflict]","color":"red"}," - ",{"text":"Advanced Beacon Datapack ","color":"blue"},"(",{"text":"Missing datapack - FancyUI","underlined":true,"color":"dark_aqua","click_event":{"action":"open_url","url":"https://github.com/FancyPotatOS/FancyUI"},"hover_event":{"action":"show_text","value":[{"text":"Click to open GitHub link","italic":true,"color":"gray"}]}},")"]
