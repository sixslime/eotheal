#>eotheal:_/post_tick
#--------------------
# @POST_TICK
#--------------------

schedule function eotheal:_/post_tick 1t

execute if score *check_tick --eotheal matches 1 as @a[scores={_eotheal-healed=1}] at @s run function eotheal:_/do_heal

execute if score *check_tick --eotheal matches 1 run scoreboard players reset *check_tick -eotheal