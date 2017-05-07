AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "config_munition.lua" )

include('shared.lua')
include('config_munition.lua')

function ENT:Initialize( )
	
	self:SetModel( "models/props_interiors/VendingMachineSoda01a.mdl" )
	self:PhysicsInit(SOLID_VPHYSICS);
    self:SetMoveType(MOVETYPE_VPHYSICS);
    self:SetSolid(SOLID_VPHYSICS);
	self:SetUseType( SIMPLE_USE )
	
end

function ENT:OnTakeDamage()
	return false 
end 

function ENT:AcceptInput( Name, Activator, Caller )	

	if Name == "Use" and Caller:IsPlayer() then
		 
		umsg.Start("munition", Caller)
		umsg.End()
		
	end
	
end

util.AddNetworkString( "buyammo1" )
net.Receive( "buyammo1" , function ( len , ply )
  if ply:getDarkRPVar("money") >= 250 then  --<<<<-- Prix a changer si vous le souhaitez (exemple 250 )

   ply:addMoney( -250 ) --<<<<-- Prix a changer si vous le souhaitez (exemple 250 )
    DarkRP.notify(ply,0,7,CONFIG_MUNITION.Notif1) 
    RunConsoleCommand("ent_create",CONFIG_MUNITION.Item1)
      else
     DarkRP.notify(ply,1,7,CONFIG_MUNITION.Notif2)
   
 
    end
  end)
  
  util.AddNetworkString( "buyammo2" )
net.Receive( "buyammo2" , function ( len , ply )
  if ply:getDarkRPVar("money") >= 250 then--<<<<-- Prix a changer si vous le souhaitez (exemple 250 )

   ply:addMoney( -250 ) --<<<<-- Prix a changer si vous le souhaitez (exemple 250 )
    DarkRP.notify(ply,0,7,CONFIG_MUNITION.Notif3) 
    RunConsoleCommand("ent_create",CONFIG_MUNITION.Item2)
      else
     DarkRP.notify(ply,1,7,CONFIG_MUNITION.Notif4)
   
 
    end
  end)
  
  util.AddNetworkString( "buyammo3" )
net.Receive( "buyammo3" , function ( len , ply )
  if ply:getDarkRPVar("money") >= 250 then--<<<<-- Prix a changer si vous le souhaitez (exemple 250 )

   ply:addMoney( -250 ) --<<<<-- Prix a changer si vous le souhaitez (exemple 250 )
    DarkRP.notify(ply,0,7,CONFIG_MUNITION.Notif5) 
    RunConsoleCommand("ent_create",CONFIG_MUNITION.Item3)
      else
     DarkRP.notify(ply,1,7,CONFIG_MUNITION.Notif6)
   
 
    end
  end)
  
  util.AddNetworkString( "buyammo4" )
net.Receive( "buyammo4" , function ( len , ply )
  if ply:getDarkRPVar("money") >= 250 then--<<<<-- Prix a changer si vous le souhaitez (exemple 250 )

   ply:addMoney( -250 ) --<<<<-- Prix a changer si vous le souhaitez (exemple 250 )
    DarkRP.notify(ply,0,7,CONFIG_MUNITION.Notif7) 
    RunConsoleCommand("ent_create",CONFIG_MUNITION.Item4)
      else
     DarkRP.notify(ply,1,7,CONFIG_MUNITION.Notif8)
   
 
    end
  end)
  
  util.AddNetworkString( "buyammo5" )
net.Receive( "buyammo5" , function ( len , ply )
  if ply:getDarkRPVar("money") >= 250 then--<<<<-- Prix a changer si vous le souhaitez (exemple 250 )

   ply:addMoney( -250 ) --<<<<-- Prix a changer si vous le souhaitez (exemple 250 )
    DarkRP.notify(ply,0,7,CONFIG_MUNITION.Notif9) 
    RunConsoleCommand("ent_create",CONFIG_MUNITION.Item5)
      else
     DarkRP.notify(ply,1,7,CONFIG_MUNITION.Notif10)
   
 
    end
  end)
  
  util.AddNetworkString( "buyammo6" )
net.Receive( "buyammo6" , function ( len , ply )
  if ply:getDarkRPVar("money") >= 250 then--<<<<-- Prix a changer si vous le souhaitez (exemple 250 )

   ply:addMoney( -250 ) --<<<<-- Prix a changer si vous le souhaitez (exemple 250 )
    DarkRP.notify(ply,0,7,CONFIG_MUNITION.Notif11) 
    RunConsoleCommand("ent_create",CONFIG_MUNITION.Item6)
      else
     DarkRP.notify(ply,1,7,CONFIG_MUNITION.Notif12)
   
 
    end
  end)