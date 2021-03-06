/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the civilian.
*/
private["_spawnPos"];
civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
waitUntil {!(isNull (findDisplay 46))};

if(life_is_arrested) then
{
	life_is_arrested = false;
	[player,true] spawn life_fnc_jail;
}
	else
{
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
};
player addRating 9999999;

[] call life_fnc_zoneCreator;

[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_C_Poloshirt_blue"};
		player setObjectTextureGlobal [0,"textures\flamengo.paa"];
		waitUntil {uniform player != "U_C_Poloshirt_blue"};
	};
};
[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_C_Poloshirt_burgundy"};
		player setObjectTextureGlobal [0,"textures\fluminense.paa"];
		waitUntil {uniform player != "U_C_Poloshirt_burgundy"};
	};
};
[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_C_Poloshirt_redwhite"};
		player setObjectTextureGlobal [0,"textures\corinthians.paa"];
		waitUntil {uniform player != "U_C_Poloshirt_redwhite"};
	};
};
[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_C_Poloshirt_salmon"};
		player setObjectTextureGlobal [0,"textures\palmeiras.paa"];
		waitUntil {uniform player != "U_C_Poloshirt_salmon"};
	};
};
[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_C_Poloshirt_stripped"};
		player setObjectTextureGlobal [0,"textures\Amineiro.paa"];
		waitUntil {uniform player != "U_C_Poloshirt_stripped"};
	};
};
[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_C_Poloshirt_tricolour"};
		player setObjectTextureGlobal [0,"textures\bahia.paa"];
		waitUntil {uniform player != "U_C_Poloshirt_tricolour"};
	};
};
[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_C_Commoner1_1"};
		player setObjectTextureGlobal [0,"textures\cruzeiro.paa"];
		waitUntil {uniform player != "U_C_Commoner1_1"};
	};
};
[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_C_Commoner1_2"};
		player setObjectTextureGlobal [0,"textures\gremio.paa"];
		waitUntil {uniform player != "U_C_Commoner1_2"};
	};
};
[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_C_Commoner1_3"};
		player setObjectTextureGlobal [0,"textures\inter.paa"];
		waitUntil {uniform player != "U_C_Commoner1_3"};
	};
};
[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_C_Poor_shorts_1"};
		player setObjectTextureGlobal [0,"textures\santos.paa"];
		waitUntil {uniform player != "U_C_Poor_shorts_1"};
	};
};
[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_C_ShirtSurfer_shorts"};
		player setObjectTextureGlobal [0,"textures\saopaulo.paa"];
		waitUntil {uniform player != "U_C_ShirtSurfer_shorts"};
	};
};
[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_C_TeeSurfer_shorts_1"};
		player setObjectTextureGlobal [0,"textures\camisarevo.paa"];
		waitUntil {uniform player != "U_C_TeeSurfer_shorts_1"};
	};
};