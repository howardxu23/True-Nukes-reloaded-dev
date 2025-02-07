data:extend({
    {
      type = "energy-shield-equipment",
      name = "fire-shield-equipment",
      sprite =
      {
        filename = "__True-Nukes__/graphics/fire-shield-equipment.png",
        width = 64,
        height = 64,
        priority = "medium"
      },
      shape =
      {
        width = 2,
        height = 2,
        type = "full"
      },
      max_shield_value = 1,
      energy_source =
      {
        type = "electric",
        buffer_capacity = "2000kJ",
        input_flow_limit = "250kW",
        usage_priority = "primary-input"
      },
      energy_per_shield = "20kJ",
      categories = {"armor"}
    },
    {
      type = "item",
      name = "fire-shield-equipment",
      icon = "__True-Nukes__/graphics/fire-shield-equipment-icon.png",
      icon_size = 64, icon_mipmaps = 4,
      placed_as_equipment_result = "fire-shield-equipment",
      subgroup = "military-equipment",
      order = "a[shield]-aA[fire-shield-equipment]",
      default_request_amount = 5,
      stack_size = 10
    },
    {
        type = "recipe",
        name = "fire-shield-equipment",
        enabled = false,
        energy_required = 30,
        ingredients =
        {
            {type = "item", name = "low-density-structure", amount = 10},
            {type = "item", name = "empty-barrel", amount = 10}
        },
        results = 
        {
            {type = "item", name = "fire-shield-equipment", amount = 1}
        },
    }
  })