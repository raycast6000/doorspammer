xpcall(function()
   for _ = 0, 2 do -- For some reason you need to run twice the script to get it working.
      loadstring(game:HttpGet("https://raw.githubusercontent.com/raycast6000/doorspammer/main/src.lua"))() 
   end
end)