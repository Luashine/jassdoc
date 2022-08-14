// Map Setup API

//

// These are native functions for describing the map configuration

// these funcs should only be used in the "config" function of

// a map script. The functions should also be called in this order

// ( i.e. call SetPlayers before SetPlayerColor...

//



native SetMapName takes string name returns nothing

native SetMapDescription takes string description returns nothing



native SetTeams takes integer teamcount returns nothing

native SetPlayers takes integer playercount returns nothing


/**
Defines a player's start location at the specified coordinates. The start
location determines where the camera is initially positioned. For melee maps,
it will also determine where the player's first town hall structure will be placed.

@note It is only recommended to use this in the `config` function in the war3map.j.
Using it elsewhere will affect the returned values of `GetStartLocationX` and
`GetStartLocationY`, but will have no effect on the camera's initial position and
the melee starting positions.

@param whichStartLoc The ID of the player for the starting location. See `GetPlayerStartLocation`.

@param x The x-coordinate of the start location.

@param y The y-coordinate of the start location.
*/
native DefineStartLocation takes integer whichStartLoc, real x, real y returns nothing

/**
Defines a player's start location at the specified location. The start
location determines where the camera is initially positioned. For melee maps,
it will also determine where the player's first town hall structure will be placed.

@note It is only recommended to use this in the `config` function in the war3map.j.
Using it elsewhere will affect the returned values of `GetStartLocationX` and
`GetStartLocationY`, but will have no effect on the camera's initial position and
the melee starting positions.

@param whichStartLoc The ID of the player for the starting location. See `GetPlayerStartLocation`.

@param whichLocation The location of the start location.
*/
native DefineStartLocationLoc takes integer whichStartLoc, location whichLocation returns nothing

native SetStartLocPrioCount takes integer whichStartLoc, integer prioSlotCount returns nothing

native SetStartLocPrio takes integer whichStartLoc, integer prioSlotIndex, integer otherStartLocIndex, startlocprio priority returns nothing

native GetStartLocPrioSlot takes integer whichStartLoc, integer prioSlotIndex returns integer

native GetStartLocPrio takes integer whichStartLoc, integer prioSlotIndex returns startlocprio

/**
@patch 1.32
*/
native SetEnemyStartLocPrioCount    takes integer whichStartLoc, integer prioSlotCount returns nothing

/**
@patch 1.32
*/
native SetEnemyStartLocPrio         takes integer whichStartLoc, integer prioSlotIndex, integer otherStartLocIndex, startlocprio priority returns nothing




native SetGameTypeSupported takes gametype whichGameType, boolean value returns nothing

native SetMapFlag takes mapflag whichMapFlag, boolean value returns nothing

native SetGamePlacement takes placement whichPlacementType returns nothing

/**
Sets a new gamespeed to run the map at.

@param whichspeed The gamespeed constant to be set as new speed.
The only allowed values are: `MAP_SPEED_SLOWEST`, `MAP_SPEED_SLOW` and `MAP_SPEED_NORMAL`, because `MAP_SPEED_FAST` and `MAP_SPEED_FASTEST` are automatically reverted to normal speed.

@note See: `SetGameSpeed`, and for values and mechanics: `gamespeed`.
*/
native SetGameSpeed takes gamespeed whichspeed returns nothing

native SetGameDifficulty takes gamedifficulty whichdifficulty returns nothing

native SetResourceDensity takes mapdensity whichdensity returns nothing

native SetCreatureDensity takes mapdensity whichdensity returns nothing



native GetTeams takes nothing returns integer

native GetPlayers takes nothing returns integer



native IsGameTypeSupported takes gametype whichGameType returns boolean

native GetGameTypeSelected takes nothing returns gametype

native IsMapFlagSet takes mapflag whichMapFlag returns boolean



constant native GetGamePlacement takes nothing returns placement

/**
Returns the currently set gamespeed.

@note See: `SetGameSpeed` and for values and mechanics `gamespeed`.
*/
constant native GetGameSpeed takes nothing returns gamespeed

constant native GetGameDifficulty takes nothing returns gamedifficulty

constant native GetResourceDensity takes nothing returns mapdensity

constant native GetCreatureDensity takes nothing returns mapdensity

constant native GetStartLocationX takes integer whichStartLocation returns real

constant native GetStartLocationY takes integer whichStartLocation returns real

constant native GetStartLocationLoc takes integer whichStartLocation returns location





native SetPlayerTeam takes player whichPlayer, integer whichTeam returns nothing

native SetPlayerStartLocation takes player whichPlayer, integer startLocIndex returns nothing

/**
Forces player to have the specified start loc and marks the start loc as occupied
which removes it from consideration for subsequently placed players
( i.e. you can use this to put people in a fixed loc and then
use random placement for any unplaced players etc. ).
*/
native ForcePlayerStartLocation takes player whichPlayer, integer startLocIndex returns nothing 

native SetPlayerColor takes player whichPlayer, playercolor color returns nothing

native SetPlayerAlliance takes player sourcePlayer, player otherPlayer, alliancetype whichAllianceSetting, boolean value returns nothing

native SetPlayerTaxRate takes player sourcePlayer, player otherPlayer, playerstate whichResource, integer rate returns nothing

native SetPlayerRacePreference takes player whichPlayer, racepreference whichRacePreference returns nothing

native SetPlayerRaceSelectable takes player whichPlayer, boolean value returns nothing

native SetPlayerController takes player whichPlayer, mapcontrol controlType returns nothing

native SetPlayerName takes player whichPlayer, string name returns nothing



native SetPlayerOnScoreScreen takes player whichPlayer, boolean flag returns nothing



native GetPlayerTeam takes player whichPlayer returns integer

/**
Returns an integer representation of a player's start location. If the playe
has a start location on the map (regardless of whether that player slot is filled),
it will return the player's ID (e.g. Player 1 (red) will return 0, Player 2 (blue)
will return 1, and so forth). If the player does not have a start location
on the map, it will return -1.

@param whichPlayer The player of which to return the starting location.
*/
native GetPlayerStartLocation takes player whichPlayer returns integer

native GetPlayerColor takes player whichPlayer returns playercolor

native GetPlayerSelectable takes player whichPlayer returns boolean

native GetPlayerController takes player whichPlayer returns mapcontrol

native GetPlayerSlotState takes player whichPlayer returns playerslotstate

native GetPlayerTaxRate takes player sourcePlayer, player otherPlayer, playerstate whichResource returns integer

native IsPlayerRacePrefSet takes player whichPlayer, racepreference pref returns boolean

native GetPlayerName takes player whichPlayer returns string
