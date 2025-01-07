local blips = {
  -- Example {title="", colour=, id=, x=, y=, z=},
  -- color = blip color [https://docs.fivem.net/docs/game-references/blips/#blip-colors]
  -- id = blip id [https://docs.fivem.net/docs/game-references/blips/]
  -- To end blips remove the comma at the end

  -- houses/interiors
   {title="Sandy Motel", colour=2, id=475, x = 1592.1, y = 3593.5, z = 42.49},
   {title="Sandy Mansion", colour=8, id=40, x = 766.49, y = 3423.91, z = 71.55},
   {title="Tropical Villa", colour=8, id=40, x = 1406.57, y = 4712.75, z = 152.06},
   {title="Hill Mansion", colour=8, id=40, x = 181.12, y = 1708.84, z = 237.76},
   {title="Mansion", colour=8, id=40, x = -77.44, y = 827.11, z = 235.73},
   {title="Mansion", colour=8, id=40, x = 6.74, y = 534.54, z = 175.98},
   {title="Mansion", colour=8, id=40, x = -807.7, y = 173.91, z = 76.41},


   --banks
   {title="BANK", colour=1, id=605, x = 149.89, y = -1039.57, z = 29.37},
   {title="BANK", colour=1, id=605, x = 236.75, y = 217.19, z = 106.28},
   {title="BANK", colour=1, id=605, x = 1175.73, y = 2705.82, z = 38.09},
   {title="BANK", colour=1, id=605, x = 1732.8, y = 3635.88, z = 35.00},
   {title="BANK", colour=1, id=605, x = 1686, y = 4854.52, z = 42.04},
   {title="BANK", colour=1, id=605, x = -107.65, y = 6467.81, z = 31.64},
   
   -- AIRPORTS
   {title="Sandy Airport", colour=5, id=307, x = 1704.24, y = 3252.09, z = 43.63},
   {title="Grapeseed Airport", colour=5, id=307, x = 2097.42, y = 4796.21, z = 48.37},
   {title="LSIA", colour=5, id=307, x = -1092.39, y = -2750.09, z = 50.84},
   
   -- gambling
   {title="Casino", colour=35, id=681, x = 932.81, y = 40.53, z = 81.1},

   -- misc
   {title="Yacht", colour=2, id=455, x = -2056.63, y = -1026.77, z = 13.74},
   {title="Legion Square", colour=0, id=176, x = 198.73, y = -919.74, z = 30.69},
   {title="Pier", colour=0, id=751, x = -1729.14, y = -1102.7, z = 13.13},

   -- SHOPS
   {title="SHOP", colour=0, id=59, x = 765.06, y = 6639.84, z = 31.69},
   {title="SHOP", colour=0, id=59, x = 1962.92, y = 3744.48, z = 32.91},
   {title="SHOP", colour=0, id=59, x = 545.17, y = 2669.57, z = 43.15},
   {title="SHOP", colour=0, id=59, x = -3244.46, y = 1003.87, z = 12.83},

   -- BEER 
   {title="BEER SHOP", colour=0, id=93, x = -2968.88, y = 390.08, z = 15.04},
   {title="BEER SHOP", colour=0, id=93, x = -1487.67, y = -380.26, z = 40.16},
   {title="BEER SHOP", colour=0, id=93, x = 1135.99, y = -981.55, z = 46.42},

   -- TEMPLATE
   {title="REPLACE", colour=REPLACE, id=REPLACE, x = REPLACE, y = REPLACE, z = REPLACE}
}
    
Citizen.CreateThread(function()

  for _, info in pairs(blips) do
    info.blip = AddBlipForCoord(info.x, info.y, info.z)
    SetBlipSprite(info.blip, info.id)
    SetBlipDisplay(info.blip, 4)
    SetBlipScale(info.blip, 1.0)
    SetBlipColour(info.blip, info.colour)
    SetBlipAsShortRange(info.blip, true)
  BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(info.title)
    EndTextCommandSetBlipName(info.blip)

    if GetCurrentResourceName() ~= "LNWK-NPCs" then
      print("Please dont edit the resource name :(")
  end
  
  end
end)
