BADGES = {"Bug_Badge", "Cliff_Badge", "Rumble_Badge", "Plant_Badge", "Voltage_Badge", "Fairy_Badge", "Psychic_Badge", "Iceberg_Badge"}

function badges(AMOUNT)
	AMOUNT = tonumber(AMOUNT)
	local req = AMOUNT
	local count = 0
	for _, item in pairs(BADGES) do
		if has(item) then
			count = count + 1
		end
	end
	return count >= req
end

-- Access Functions
-- HMs
function cut()
  return has("HM01Cut") and has("Bug_Badge")
end

function fly()
  return has("HM02Fly") and has("Plant_Badge")
end

function surf()
  return has("HM03Surf") and has("Rumble_Badge")
end

function strength()
  return has("HM04Strength") and has("Cliff_Badge")
end

function waterfall()
  return has("HM05WaterFall") and has("Iceberg_Badge") and surf()
end

function rocksmash()
  return has("TM94-RockSmash")
end

function skater()
	return has("Roller Skates") or has("opt_skates_off")
end

function masterskater()
	return skater() and has("ParallelSwizzle") and has("DriftandDash") and has("360") and has("Backflip")
end

function early_fly()
	return fly() or has("opt_mega_fly_off")
end

function early_mega()
	return has("MegaRing") or has("opt_mega_early_off")
end

function has_rod()
	return has("OldRod") or has("GoodRod") or has("SuperRod")
end

-- YAML Options
 
function hidden()
  return (has("opt_dowsing_off") or has("DowsingMachine"))
end

function hidden()
  return (has("opt_dowsing_off") or has("DowsingMachine"))
end

function hidden_on()
	return has("opt_hidden_on")
end

function npc_on()
	return has("opt_npc_on")
end

function skates_on()
	return has("opt_skates_on")
end

function tricks_on()
	return has("opt_tricks_on")
end

function trees_on()
	return has("opt_trees_on")
end

function shops_on()
	return has("opt_shoptms_on")
end

function shop_badges()
  return badges(6)
 end

function bgs_gen()
	return has("opt_backgrounds_gen")
end

function bgs_spec()
	return has("opt_backgrounds_spec")
end

function mega_stones()
	return has("opt_megas_stones")
end

function mega_evolutions()
	return has("opt_megas_full") or has("opt_megas_nosheep")
end

--Victorys

function champ()
  return badges(8)
 end

function vict_arceus()
	return has("azureflute") and plates(16) and has("ProgDex3")
end

-- Beeg Access

function sLumiose()
    return (has("Bug_Badge") and early_mega())
	or nLumiose()
end

function Ambrette()
    return (
		(
			(
				(has("Bug_Badge") and early_mega()) or 
				nLumiose()
			) and
			has("PokeFlute") and early_fly()
		) or (
			nLumiose() and
			has("LumioseCityPower")	and
			surf() and
			has("Cliff_Badge")
		)
	)
end

function Glittering()
    return Ambrette() and has("RhyhornLicense")
end

function Cyllage()
    return (
		(
			(
				(has("Bug_Badge") and early_mega()) or 
				nLumiose()
			) and
			has("PokeFlute") and early_fly() and
			(has("RhyhornLicense") or surf())
		) or (
			nLumiose() and
			has("LumioseCityPower")	and
			surf() and
			has("Cliff_Badge")
		)
	)
end

function Shalour()
    return (
		(
			(
				(has("Bug_Badge") and early_mega()) or 
				nLumiose()
			) and
			has("PokeFlute") and early_fly() and
			(has("RhyhornLicense") or surf()) and
			has("Cliff_Badge")
		) or (
			nLumiose() and
			has("LumioseCityPower")	and
			surf()
		)
	)
end

function Coumarine()
    return (
		(
			(
				(has("Bug_Badge") and early_mega()) or 
				nLumiose()
			) and
			has("PokeFlute") and early_fly() and
			(has("RhyhornLicense") or surf()) and
			has("Cliff_Badge") and
			(surf() and has("RollerSkates"))
		) or (
			nLumiose() and
			has("LumioseCityPower")
		)
	)
end

function nLumiose()
    return (early_mega() and
		(
			has("Bug_Badge") and 
			has("PokeFlute") and
			(has("RhyhornLicense") or surf()) and
			has("Cliff_Badge") and
			(surf() and has("RollerSkates")) and
			has("PowerPlantPass")
		) or (
			has("Bug_Badge") and 
			has("LumioseCityPower")
		) or (
			has("BeingReadyToTackleWhatLiesBeyondHere") and early_fly() and
			has("Psychic_Badge") and
			has("MamoswineLicense") and
			strength() and
			has("BeingCoolEnoughToBeAbleToGoToRoute15")
		) or (
			has("BeingReadyToTackleWhatLiesBeyondHere") and early_fly() and
			has("Psychic_Badge") and
			has("MamoswineLicense") and
			has("Fairy_Badge") and
			has("Voltage_Badge")
		)
	)
end

function Laverre()
    return (
		has("BeingReadyToTackleWhatLiesBeyondHere") and early_fly() and
		has("Psychic_Badge") and
		has("MamoswineLicense") and
		has("Fairy_Badge")
	) or (
		nLumiose() and
		has("Voltage_Badge") and early_fly()
	)
end

function Dendimille()
    return (
		has("BeingReadyToTackleWhatLiesBeyondHere") and early_fly() and
		has("Psychic_Badge") and
		has("MamoswineLicense")
	) or (
		nLumiose() and
		has("Voltage_Badge") and early_fly() and
		has("Fairy_Badge")
	)
end

function Anistar()
    return (
		has("BeingReadyToTackleWhatLiesBeyondHere") and early_fly() and
		has("Psychic_Badge")
	) or (
		nLumiose() and
		has("Voltage_Badge") and early_fly() and
		has("Fairy_Badge") and
		has("MamoswineLicense")
	)
end

function Snowbelle()
    return (
		has("BeingReadyToTackleWhatLiesBeyondHere") and early_fly()
	) or (
		nLumiose() and
		has("Voltage_Badge") and early_fly() and
		has("Fairy_Badge") and
		has("MamoswineLicense") and
		has("Psychic_Badge")
	)
end

function vroad()
    return Snowbelle() and champ() and surf()
end

-- backgroundsanity moves logic
function backgroundwind()
	return has("AirCutter") or has("TM14") or has("Twister")
end

function backgroundsound()
	return has("HyperVoice") or has("TM80")
end

function backgroundgrass()
	return has("PetalBlizzard") or has("Razor Leaf")
end

function backgroundfire()
	return has("Eruption") or has("HeatWave") or has("LavaPlume")
end

function backgroundwater()
	return has("MuddyWater") or has("HM03Surf") or has("WaterSpout")
end

-- backgroundsanity grouped access logic
function backgroundWoodland()
    return true
end

function backgroundCliff()
    return Ambrette() or Coumarine() or Snowbelle()
end

function backgroundBeach()
    return Ambrette() or Cyllage() or Shalour() or Coumarine()
end

function backgroundSnow()
    return Dendimille() or Anistar()
end

function backgroundCave()
    return Cyllage() or Ambrette() or vroad() or (Coumarine() and surf()) or Snowbelle()
end

function backgroundGlittering()
    return Glittering()
end

-- Mega Evolutions
function MegaKStarters()
    return 
		has("MegaRing") and
		(
			has("Venusaurite") and
			(has("CharizarditeX") or has("CharizarditeY")) and
			has("Blastoisinite") 
		) and
		sLumiose()
end

function MegaKangaskhan()
    return 
		has("MegaRing") and
		has("Kangaskhanite") and
		Glittering()
end

function MegaPinsir()
    return 
		has("MegaRing") and
		has("Pinsirite") and
		Coumarine()
end

function MegaGyarados()
    return 
		has("MegaRing") and
		has("Gyaradosite") and
		(has("OldRod") or
		has("SuperRod"))
end

function MegaAerodactyl()
    return 
		has("MegaRing") and
		has("Aerodactylite") and
		Glittering() and
		rocksmash()
end

function MegaAmpharos()
    return 
		has("MegaRing") and
		has("Ampharosite") and
		Coumarine()
end

function MegaHeracross()
    return 
		has("MegaRing") and
		has("Heracronite") and
		Coumarine()
end

function MegaHoundoom()
    return 
		has("MegaRing") and
		has("Houndoominite") and
		Cyllage()
end

function MegaTyranitar()
    return 
		has("MegaRing") and
		has("Tyranitarite") and
		Snowbelle()
end

function MegaGardevoir()
    return 
		has("MegaRing") and
		has("Gardevoirite") and
		sLumiose()
end

function MegaMawile()
    return 
		has("MegaRing") and
		has("Mawilite") and
		Glittering()
end

function MegaAggron()
    return 
		has("MegaRing") and
		has("Aggronite") and
		Snowbelle()
end

function MegaMedicham()
    return 
		has("MegaRing") and
		has("Medichamite") and
		Ambrette()
end

function MegaManectric()
    return 
		has("MegaRing") and
		has("Manectite") and
		Cyllage()
end

function MegaAbsol()
    return 
		has("MegaRing") and
		has("Absolite") and
		Ambrette()
end

function MegaGarchomp()
    return 
		has("MegaRing") and
		has("Garchompite") and
		Coumarine()
end

function MegaLucario()
    return 
		has("MegaRing") and
		has("Lucarionite")
end

function MegaAbomasnow()
    return 
		has("MegaRing") and
		has("Abomasite") and
		Dendimille()
end

