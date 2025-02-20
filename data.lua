function warhead_mod(name)--RMEMBERTO REMOVE "-dev" FOR RELEASE
    return "__Warheads-reloaded-dev__/"..name
end
function warhead_prototypes(name)
    return warhead_mod("prototypes/")..name
end
function nuke_mod(name)--RMEMBERTO REMOVE "-dev" FOR RELEASE
    return  "__True-Nukes-reloaded-dev__/"..name
end

function nuke_prototype(name)
    return  nuke_mod("prototypes/")..name
end

function nuke_graphics(name)
    return nuke_mod("graphics/")..name
end

require("prototypes.nukes.data-nukes")

if(settings.startup["enable-fire-shield"].value) then
    require("prototypes/fire-shield-equipment")
end


if(settings.startup["enable-small-thermobarics"].value or settings.startup["enable-medium-thermobarics"].value or settings.startup["enable-large-thermobarics"].value) then
  require("prototypes.thermobarics.data-thermobaric")
end



require("MushroomCloudInBuilt.explosions")
require("MushroomCloudInBuilt.radiation_noise")
require("MushroomCloudInBuilt.ground_zero")
require("MushroomCloudInBuilt.explosion_sizes")


local fireutil = require("__base__.prototypes.fire-util")

data:extend({
  fireutil.add_basic_fire_graphics_and_effects_definitions
  {
    type = "fire",
    name = "thermobaric-wave-fire",
    flags = {"placeable-off-grid", "not-on-map"},
    damage_per_tick = {amount = 13 / 60, type = "fire"},
    maximum_damage_multiplier = 6,
    damage_multiplier_increase_per_added_fuel = 1,
    damage_multiplier_decrease_per_tick = 0.005,

    spawn_entity = "fire-flame-on-tree",

    spread_delay = 300,
    spread_delay_deviation = 180,
    maximum_spread_count = 100,

    emissions_per_second = 0.005,

    initial_lifetime = 5,
    lifetime_increase_by = 150,
    lifetime_increase_cooldown = 4,
    maximum_lifetime = 1800,
    delay_between_initial_flames = 10,
  --initial_flame_count = 1,

  }})











function add_mushroom_cloud_effect(effect, prefix)
  table.insert(effect, 2, {
    type = "create-entity",
    entity_name = prefix .. "uranium-explosion-LUQ",
  })
  table.insert(effect, 3, {
    type = "create-entity",
    entity_name = prefix .. "uranium-explosion-RUQ"
  })
  table.insert(effect, 4, {
    type = "create-entity",
    entity_name = prefix .. "uranium-explosion-LLQ"
  })
  table.insert(effect, 5, {
    type = "create-entity",
    entity_name = prefix .. "uranium-explosion-RLQ"
  })
  table.insert(effect, 6, {
    type = "create-entity",
    entity_name = "nuclear-scorchmark",
    check_buildability = true
  })
end



--if(settings.startup["enable-menu-backgrounds"].value)then
--  if(settings.startup["enable-compact-medium-atomics"].value) then
--    require("menu-simulations.nuke-1x20t")
--  end
--
--  if(settings.startup["enable-compact-medium-atomics"].value) then
--    require("menu-simulations.nuke-2x2t")
--  end
--
--  if(settings.startup["enable-large-atomics"].value) then
--    require("menu-simulations.nuke-1x1kt")
--  end
--end




