// Force API

/**
Creates an empty force object. Forces act as objects which can point to groups of players. To add a player to a force, see `ForceAddPlayer`. 
*/
native CreateForce              takes nothing returns force

native DestroyForce             takes force whichForce returns nothing

native ForceAddPlayer           takes force whichForce, player whichPlayer returns nothing

native ForceRemovePlayer        takes force whichForce, player whichPlayer returns nothing

/**
@patch 1.31
*/
native BlzForceHasPlayer        takes force whichForce, player whichPlayer returns boolean

native ForceClear               takes force whichForce returns nothing

native ForceEnumPlayers         takes force whichForce, boolexpr filter returns nothing

/**
@note *Probably* countLimit doesn't work similar to `GroupEnumUnitsInRangeCounted`. Instead see `ForceEnumPlayers`
*/
native ForceEnumPlayersCounted  takes force whichForce, boolexpr filter, integer countLimit returns nothing

native ForceEnumAllies          takes force whichForce, player whichPlayer, boolexpr filter returns nothing

native ForceEnumEnemies         takes force whichForce, player whichPlayer, boolexpr filter returns nothing

native ForForce                 takes force whichForce, code callback returns nothing
