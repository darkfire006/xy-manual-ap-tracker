SLOT_CODES =
{
  goal =
  {
    code = "opt_victory",
	type = "progressive",
    mapping =
    {
      [0] = 0, -- Goal Champion
      [1] = 1, -- Goal Clemont
      [2] = 2  -- Goal Zygarde
    }
  },
  game_version =
  {
    code = "opt_ver",
	type = "progressive",
    mapping =
    {
      [1] = 0, -- Pokemon X
      [2] = 1  -- Pokemon Y
    }
  },
  hidden_items =
  {
    code = "opt_hidden",
	type = "progressive",
    mapping =
    {
      [0] = 0, -- Don't Include Hiddens
      [1] = 1  -- Include Hiddens
    }
  },
  dowsing_machine =
  {
    code = "opt_dowsing",
	type = "progressive",
    mapping =
    {
      [0] = 0, -- Don't Need Dowsing Machine
      [1] = 1  -- Need Dowsing Machine
    }
  },
  backgroundsanity =
  {
    code = "opt_backgrounds",
	type = "progressive",
    mapping =
    {
      [1] = 0, -- Don't Include Backgrounds
      [2] = 1, -- Include Backgrounds (Generic)
      [3] = 2  -- Include Backgrounds (Specific)
    }
  },
  skate_tricks =
  {
    code = "opt_tricks",
	type = "progressive",
    mapping =
    {
      [0] = 0, -- Don't Include Skate Tricks
      [1] = 1  -- Include Skate Tricks
    }
  },
  shop_tms =
  {
    code = "opt_shoptms",
	type = "progressive",
    mapping =
    {
      [0] = 0, -- Don't Include Shop TMs
      [1] = 1  -- Include Shop TMs
    }
  },
  berry_trees =
  {
    code = "opt_trees",
	type = "progressive",
    mapping =
    {
      [0] = 0, -- Don't Include Berry Trees
      [1] = 1  -- Include Berry Trees
    }
  },
  roller_skates =
  {
    code = "opt_skates",
	type = "progressive",
    mapping =
    {
      [0] = 0, -- Don't Add Roller Skates to Pool
      [1] = 1  -- Add Roller Skates to Pool
    }
  },
  npc_items =
  {
    code = "opt_npc",
	type = "progressive",
    mapping =
    {
      [0] = 0, -- Don't Include NPC Items
      [1] = 1  -- Include NPC Items
    }
  },
  early_fly =
  {
    code = "opt_fly_early",
	type = "progressive",
    mapping =
    {
      [0] = 0, -- Don't Require Fly outside early areas
      [1] = 1  -- Require Fly outside early areas
    }
  },
  early_mega =
  {
    code = "opt_mega_early",
	type = "progressive",
    mapping =
    {
      [0] = 0, -- Don't Require Mega Ring to enter Lumiose
      [1] = 1  -- Require Mega Ring to enter Lumiose
    }
  },
  mega_evolutions =
  {
    code = "opt_megas",
	type = "progressive",
    mapping =
    {
      [1] = 3, -- Include All Mega Checks
      [2] = 2, -- Exclude Mega Ampharos only
      [3] = 1, -- Include Mega Stones but not Evos
      [4] = 0  -- Don't include any Mega based checks
    }
  }
}
