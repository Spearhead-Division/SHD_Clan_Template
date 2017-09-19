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
class CfgFactionClasses
{
  class SHD_Faction
  {
    icon = "\textures\shd_pinup_512x256.paa";
    displayName = "Fahne [SHD]";
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
    displayName = "";
    class EventHandlers
    {
      init = "(_this select 0) setFlagTexture ""\textures\shd_pinup_512x256.paa""";
    };
  };
};
