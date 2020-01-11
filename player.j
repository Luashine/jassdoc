// Player API

/**
@bug Crashes the game if used with wrong values, that is values greather than 15
or values lower than 0.
*/
constant native Player takes integer number returns player

/**
@async
*/
constant native GetLocalPlayer takes nothing returns player

constant native IsPlayerAlly takes player whichPlayer, player otherPlayer returns boolean

constant native IsPlayerEnemy takes player whichPlayer, player otherPlayer returns boolean

constant native IsPlayerInForce takes player whichPlayer, force whichForce returns boolean

constant native IsPlayerObserver takes player whichPlayer returns boolean

constant native IsVisibleToPlayer takes real x, real y, player whichPlayer returns boolean

constant native IsLocationVisibleToPlayer takes location whichLocation, player whichPlayer returns boolean

constant native IsFoggedToPlayer takes real x, real y, player whichPlayer returns boolean

constant native IsLocationFoggedToPlayer takes location whichLocation, player whichPlayer returns boolean

constant native IsMaskedToPlayer takes real x, real y, player whichPlayer returns boolean

constant native IsLocationMaskedToPlayer takes location whichLocation, player whichPlayer returns boolean



constant native GetPlayerRace takes player whichPlayer returns race

constant native GetPlayerId takes player whichPlayer returns integer

constant native GetPlayerUnitCount takes player whichPlayer, boolean includeIncomplete returns integer

constant native GetPlayerTypedUnitCount takes player whichPlayer, string unitName, boolean includeIncomplete, boolean includeUpgrades returns integer

constant native GetPlayerStructureCount takes player whichPlayer, boolean includeIncomplete returns integer

constant native GetPlayerState takes player whichPlayer, playerstate whichPlayerState returns integer

constant native GetPlayerScore takes player whichPlayer, playerscore whichPlayerScore returns integer

constant native GetPlayerAlliance takes player sourcePlayer, player otherPlayer, alliancetype whichAllianceSetting returns boolean



constant native GetPlayerHandicap takes player whichPlayer returns real

constant native GetPlayerHandicapXP takes player whichPlayer returns real

constant native SetPlayerHandicap takes player whichPlayer, real handicap returns nothing

constant native SetPlayerHandicapXP takes player whichPlayer, real handicap returns nothing



constant native SetPlayerTechMaxAllowed takes player whichPlayer, integer techid, integer maximum returns nothing

constant native GetPlayerTechMaxAllowed takes player whichPlayer, integer techid returns integer

/**
In upgrades that have multiple levels, it will research the upgrade by the
number of levels specified. (it adds the number of levels to the current
research level, see `SetPlayerTechResearched` to set the research level)

@param whichPlayer The player who the upgrade will be researched for.

@param techid The four digit rawcode ID of the upgrade.

@param levels The number of levels to add to the current research level of the upgrade.
*/
constant native AddPlayerTechResearched takes player whichPlayer, integer techid, integer levels returns nothing

constant native SetPlayerTechResearched takes player whichPlayer, integer techid, integer setToLevel returns nothing

constant native GetPlayerTechResearched takes player whichPlayer, integer techid, boolean specificonly returns boolean

constant native GetPlayerTechCount takes player whichPlayer, integer techid, boolean specificonly returns integer



native SetPlayerUnitsOwner takes player whichPlayer, integer newOwner returns nothing

/**
Reveals a player's remaining buildings to a force. The black mask over the
buildings will be removed as if the territory had been discovered

@note his function will not check whether the player has a town hall before revealing.

@param whichPlayer The player to reveal.

@param toWhichPlayers The players who will see whichPlayer's buildings.

@param flag If true, the buildings will be revealed. If false, the buildings
will not be revealed. Note that if you set it to false, it will not hide the buildings with a black mask.
*/
native CripplePlayer takes player whichPlayer, force toWhichPlayers, boolean flag returns nothing



native SetPlayerAbilityAvailable takes player whichPlayer, integer abilid, boolean avail returns nothing



native SetPlayerState takes player whichPlayer, playerstate whichPlayerState, integer value returns nothing

native RemovePlayer takes player whichPlayer, playergameresult gameResult returns nothing



/**
Used to store hero level data for the scorescreen, before units are moved
to neutral passive in melee games.

@param whichPlayer
The player to store hero data for.
*/
native CachePlayerHeroData takes player whichPlayer returns nothing

/**
@patch 1.29
*/
native BlzDecPlayerTechResearched                  takes player whichPlayer, integer techid, integer levels returns nothing
