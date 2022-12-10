assert(rconsolewarn, "Your exploit does not support console functions.")

xpcall(function()
   for _ = 0, 2 do -- For some reason you need to run twice the script to get it working.
      loadstring(game:HttpGet("https://raw.githubusercontent.com/raycast6000/doorspammer/main/src.lua"))() 
   end
end, function(e) rconsoletitle("Door spammer ~ Debug") rconsolewarn(e) rconsoleprint("[!] Would you like to run the script again? [y/n]: ") if rconsoleinput() == "y" then loadstring(game:HttpGet("https://raw.githubusercontent.com/raycast6000/doorspammer/main/loader.lua"))() end end)
