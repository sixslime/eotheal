#>eotheal:_/load
#--------------------
# @LOAD
#--------------------

# load
scoreboard players set *eotheal load-status 1

#declare storage eotheal:var
#declare storage eotheal:in
#declare storage eotheal:out

# scoreboards
scoreboard objectives add -eotheal dummy
scoreboard objectives add --eotheal dummy
scoreboard objectives add _eotheal-healed dummy
scoreboard objectives add _eotheal-heal_value dummy
#scoreboard objectives add eotheal-scoreboard dummy
