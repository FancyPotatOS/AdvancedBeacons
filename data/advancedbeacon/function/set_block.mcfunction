

execute align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:["fancyui", "fancyui.container", "advancedbeacon.beacon", "advancedbeacon.temp"]}
scoreboard players operation @n[type=minecraft:marker,tag=advancedbeacon.temp] advancedbeacon.id = next_id advancedbeacon.id

summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:["advancedbeacon.display"],Passengers:[{id:"minecraft:block_display",Tags:["advancedbeacon.display"],block_state:{Name:"minecraft:beacon",Properties:{}},transformation:[1.0040f,0.0000f,0.0000f,-0.5020f,0.0000f,1.0040f,0.0000f,-0.5020f,0.0000f,0.0000f,1.0040f,-0.5020f,0.0000f,0.0000f,0.0000f,1.0000f],brightness:{sky:15,block:15}},{id:"minecraft:block_display",Tags:["advancedbeacon.display"],block_state:{Name:"minecraft:crying_obsidian",Properties:{}},transformation:[1.0020f,0.0000f,0.0000f,-0.5010f,0.0000f,1.0020f,0.0000f,-0.5010f,0.0000f,0.0000f,1.0020f,-0.5010f,0.0000f,0.0000f,0.0000f,1.0000f],brightness:{sky:15,block:15}}]}

execute as @e[type=minecraft:block_display] unless score @s advancedbeacon.id matches 1.. run scoreboard players operation @s advancedbeacon.id = @n[type=minecraft:marker,tag=advancedbeacon.temp] advancedbeacon.id

scoreboard players add next_id advancedbeacon.id 1

data modify entity @n[type=minecraft:marker,tag=advancedbeacon.temp] data set value \
{\
    beacon:{active:true,levels:{selected:{primary:"none",secondary:"none",primary_list:[],secondary_list:[]},level:0b,primary:[],secondary:[]}},\
    container:"minecraft:barrel",\
    container_data: {\
        CustomName: {text:"Advanced Beacon"}\
    },\
    on_break:"advancedbeacon:on_break",\
    slots: [\
        {\
            Slot:0b,\
            type:"background"\
        },\
        {\
            Slot:1b,\
            type:"background"\
        },\
        {\
            Slot:2b,\
            type:"background"\
        },\
        {\
            Slot:3b,\
            type:"background"\
        },\
        {\
            Slot:4b,\
            type:"background"\
        },\
        {\
            Slot:5b,\
            type:"background"\
        },\
        {\
            Slot:6b,\
            type:"background"\
        },\
        {\
            Slot:7b,\
            type:"background"\
        },\
        {\
            Slot:8b,\
            type:"background"\
        },\
        {\
            Slot:9b,\
            type:"background"\
        },\
        {\
            Slot:10b,\
            type:"button",\
            components:{\
                "minecraft:item_model":"advancedbeacon:buttons/base",\
                "minecraft:custom_model_data":{strings:["disabled","disabled"]},\
                "minecraft:custom_data":{\
                    beacon:{\
                        state:"disabled",\
                        effect:"disabled"\
                    }\
                }\
            },\
            "callback": {\
                "function": "advancedbeacon:events/click_primary_effect"\
            }\
        },\
        {\
            Slot:11b,\
            type:"background"\
        },\
        {\
            Slot:12b,\
            type:"button",\
            components:{\
                "minecraft:item_model":"advancedbeacon:buttons/base",\
                "minecraft:custom_model_data":{strings:["disabled","disabled"]},\
                "minecraft:custom_data":{\
                    beacon:{\
                        state:"disabled",\
                        effect:"disabled"\
                    }\
                }\
            },\
            "callback": {\
                "function": "advancedbeacon:events/click_secondary_effect"\
            }\
        },\
        {\
            Slot:13b,\
            type:"background"\
        },\
        {\
            Slot:14b,\
            type:"background"\
        },\
        {\
            Slot:15b,\
            type:"button",\
            components:{\
                "minecraft:item_model":"advancedbeacon:buttons/base",\
                "minecraft:custom_model_data":{strings:["disabled","confirm"]},\
                "minecraft:custom_data":{\
                    beacon:{\
                        state:"disabled"\
                    }\
                }\
            },\
            "callback": {\
                "function": "advancedbeacon:events/click_confirm"\
            }\
        },\
        {\
            Slot:16b,\
            type:"button",\
            components:{\
                "minecraft:item_model":"advancedbeacon:buttons/base",\
                "minecraft:custom_model_data":{strings:["disabled","cancel"]},\
                "minecraft:custom_data":{\
                    beacon:{\
                        state:"disabled"\
                    }\
                }\
            },\
            "callback": {\
                "function": "advancedbeacon:events/click_cancel"\
            }\
        },\
        {\
            Slot:17b,\
            type:"background"\
        },\
        {\
            Slot:18b,\
            type:"background"\
        },\
        {\
            Slot:19b,\
            type:"background"\
        },\
        {\
            Slot:20b,\
            type:"background"\
        },\
        {\
            Slot:21b,\
            type:"background"\
        },\
        {\
            Slot:22b,\
            type:"background"\
        },\
        {\
            Slot:23b,\
            type:"background"\
        },\
        {\
            Slot:24b,\
            type:"background"\
        },\
        {\
            Slot:25b,\
            type:"background"\
        },\
        {\
            Slot:26b,\
            type:"background"\
        },\
    ]\
}

function fancyui:ui/init/initialize_all

data modify entity @n[type=minecraft:marker,tag=advancedbeacon.temp] data.beacon.active.levels.selected.primary_item set from block ~ ~ ~ Items[{Slot:10b}]
data modify entity @n[type=minecraft:marker,tag=advancedbeacon.temp] data.beacon.active.levels.selected.secondary_item set from block ~ ~ ~ Items[{Slot:12b}]

execute as @n[type=minecraft:marker,tag=advancedbeacon.temp] at @s run function advancedbeacon:update

tag @n[type=minecraft:marker,tag=advancedbeacon.temp] remove advancedbeacon.temp
