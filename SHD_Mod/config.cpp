class CfgPatches
{
	class SHD_Mod
	{
		units[] = {"SHD_FlagCarrierEU"};
		weapons[] = {};
		requiredVersion = 1.0;
		requiredAddons[] = {};
	};
};
class CfgVehicles
{
	class FlagCarrier;
	class SHD_FlagCarrierEU: FlagCarrier
	{
		icon = "\SHD_Mod\flag\data\i_flag_ca.paa";
	};
};

