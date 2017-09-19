 class CfgPatches
 {
		class SHD_FLAG_UI
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
		icon = "\textures\i_flag_ca.paa";
	};
};

