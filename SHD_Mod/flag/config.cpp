ines (34 sloc) 604 Bytes
 class CfgPatches
 {
	class SHD_Mod_West
	{
		units[] = {"SHD_FlagCarrierEU"};
		weapons[] = {};
		requiredVersion = 1.0;
		requiredAddons[] = {};
	};
};
class CfgFactionClasses
{
	class SHD_Faction
	{
		icon = "\SHD_Mod\flag\data\shd_pinup_512x256.paa";
		displayName = "Fahne (SHD)";
		priority = 5;
		side = 1;
	};
};
class CfgVehicles
{
	class SHD_FlagCarrierEU;
	class SHD_Faction: SHD_FlagCarrierEU
	{
		scope = 2;
		accuarcy = 1000;
		displayName = "SHD";
		class EventHandlers
		{
			init = "(_this select 0) setFlagTexture ""\flag\data\shd_pinup_512x256.paa""";
		};
	};
};
