include('shared.lua')
include('config_munition.lua')

function munition () 
local FrameAmmo = vgui.Create( "DFrame" )
FrameAmmo:SetPos( ScrW()/2-150, ScrH()/2-150 )
FrameAmmo:SetSize( 800, 500 )
FrameAmmo:Center()
FrameAmmo:SetTitle("")
FrameAmmo:ShowCloseButton( false )
FrameAmmo:SetDraggable(true)
FrameAmmo:SetVisible( true )
FrameAmmo:MakePopup()
FrameAmmo.Paint = function()
	 draw.RoundedBox( 5, 0, 0, FrameAmmo:GetWide(), FrameAmmo:GetTall(), Color( 48,48, 48, 255	 ) )
	 draw.RoundedBox( 5, 0, 0, 800, 500, Color( 255, 255, 255, 255 ) )
	 draw.RoundedBox( 5, 2, 3, 795, 494, Color( 48, 48, 48, 255 ) )
	 
--__________________________________________________________________________________________________________
	 draw.RoundedBox( 5, 25, 50, 350, 100, Color( 255, 0, 0, 255 ) )
	 draw.RoundedBox( 4, 27, 53, 345, 94, Color( 0, 0, 0, 255 ) )
	 draw.SimpleText(CONFIG_MUNITION.Text1, "Trebuchet24", 150, 95,Color(255,255,255,255),TEXT_ALIGN_LEFT) --< Text 
	 draw.SimpleText(CONFIG_MUNITION.Text2, "Trebuchet24", 150, 65,Color(255,255,255,255),TEXT_ALIGN_LEFT)--< Text 
	 
	  draw.RoundedBox( 5, 25, 200, 350, 100, Color( 255, 0, 0, 255 ) )
	 draw.RoundedBox( 4, 27, 203, 345, 94, Color( 0, 0, 0, 255 ) )
	 draw.SimpleText(CONFIG_MUNITION.Text3, "Trebuchet24", 150, 245,Color(255,255,255,255),TEXT_ALIGN_LEFT)--< Text 
	 draw.SimpleText(CONFIG_MUNITION.Text4, "Trebuchet24", 150, 215,Color(255,255,255,255),TEXT_ALIGN_LEFT)--< Text 
	 
	  draw.RoundedBox( 5, 25, 350, 350, 100, Color( 255, 0, 0, 255 ) )                                    --|
	 draw.RoundedBox( 4, 27, 353, 345, 94, Color( 0, 0, 0, 255 ) )                                        --|
	 draw.SimpleText(CONFIG_MUNITION.Text5, "Trebuchet24", 150, 395,Color(255,255,255,255),TEXT_ALIGN_LEFT) --< Text     
	 draw.SimpleText(CONFIG_MUNITION.Text6, "Trebuchet24", 150, 365,Color(255,255,255,255),TEXT_ALIGN_LEFT)--< Text   
	                                                                                                      --|
	  draw.RoundedBox( 5, 425, 200, 350, 100, Color( 255, 0, 0, 255 ) )
	 draw.RoundedBox( 4, 427, 203, 345, 94, Color( 0, 0, 0, 255 ) )
	 draw.SimpleText(CONFIG_MUNITION.Text7, "Trebuchet24", 575, 245,Color(255,255,255,255),TEXT_ALIGN_LEFT) --< Text 
	 draw.SimpleText(CONFIG_MUNITION.Text8, "Trebuchet24", 575, 215,Color(255,255,255,255),TEXT_ALIGN_LEFT) --< Text 
	 
	 	  draw.RoundedBox( 5, 425, 350, 350, 100, Color( 255, 0, 0, 255 ) )
	 draw.RoundedBox( 4, 427, 353, 345, 94, Color( 0, 0, 0, 255 ) )
	 draw.SimpleText(CONFIG_MUNITION.Text9, "Trebuchet24", 575, 395,Color(255,255,255,255),TEXT_ALIGN_LEFT)--< Text 
	 draw.SimpleText(CONFIG_MUNITION.Text10, "Trebuchet24", 575, 365,Color(255,255,255,255),TEXT_ALIGN_LEFT)--< Text 
	 
	 
	  draw.RoundedBox( 5, 425, 50, 350, 100, Color( 255, 0, 0, 255 ) )
	 draw.RoundedBox( 4, 427, 53, 345, 94, Color( 0, 0, 0, 255 ) )
	 draw.SimpleText(CONFIG_MUNITION.Text11, "Trebuchet24", 575, 95,Color(255,255,255,255),TEXT_ALIGN_LEFT)--< Text 
	 draw.SimpleText(CONFIG_MUNITION.Text12, "Trebuchet24", 575, 65,Color(255,255,255,255),TEXT_ALIGN_LEFT) --< Text                
	 -------------------------------------------------------------------------------------------------------
end
local CloseButton = vgui.Create("DButton", FrameAmmo)
CloseButton:SetSize(FrameAmmo:GetWide() / 16, FrameAmmo:GetTall() / 15- 5) 
CloseButton:AlignRight(8)
CloseButton:AlignTop(8)
CloseButton:SetText("")
CloseButton.DoClick = function()

FrameAmmo:Close()

end
CloseButton.Paint = function(self)

draw.RoundedBox(5,0,0,CloseButton:GetWide(),CloseButton:GetTall(),Color(255,0,0,255))

draw.DrawText("X ","Trebuchet24",CloseButton:GetWide() / 4+1,CloseButton:GetTall() / 11,Color(255,255,255,255),TEXT_ALIGN_LEFT) 

if CloseButton:IsHovered() then

draw.DrawText("X ","Trebuchet24",CloseButton:GetWide() / 4+1,CloseButton:GetTall() / 11-2,Color(255,255,255,255),TEXT_ALIGN_LEFT) 
end

end
acheterammo1 = vgui.Create("DButton",Medecin)
acheterammo1:SetText("Acheter")
acheterammo1:SetParent( FrameAmmo )  
acheterammo1:SetPos(275,83)
acheterammo1:SetTextColor( Color( 0, 0, 0, 250 ) )
acheterammo1:SetFont("Trebuchet24")
acheterammo1:SetSize(75,40)
acheterammo1.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 200, 0, 0, 255 ) )
end
acheterammo1.DoClick = function()
FrameAmmo:Close()
net.Start( "buyammo1" )
net.SendToServer()
end

acheterammo2 = vgui.Create("DButton",Medecin)
acheterammo2:SetText("Acheter")
acheterammo2:SetParent( FrameAmmo )  
acheterammo2:SetPos(275,230)
acheterammo2:SetTextColor( Color( 0, 0, 0, 250 ) )
acheterammo2:SetFont("Trebuchet24")
acheterammo2:SetSize(75,40)
acheterammo2.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 200, 0, 0, 255 ) )
end
acheterammo2.DoClick = function()
FrameAmmo:Close()
net.Start( "buyammo2" )
net.SendToServer()
end

acheterammo3 = vgui.Create("DButton",Medecin)
acheterammo3:SetText("Acheter")
acheterammo3:SetParent( FrameAmmo )  
acheterammo3:SetPos(275,383)
acheterammo3:SetTextColor( Color( 0, 0, 0, 250 ) )
acheterammo3:SetFont("Trebuchet24")
acheterammo3:SetSize(75,40)
acheterammo3.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 200, 0, 0, 255 ) )
end
acheterammo3.DoClick = function()
FrameAmmo:Close()
net.Start( "buyammo3" )
net.SendToServer()
end
acheterammo4 = vgui.Create("DButton",Medecin)
acheterammo4:SetText("Acheter")
acheterammo4:SetParent( FrameAmmo )  
acheterammo4:SetPos(675,83)
acheterammo4:SetTextColor( Color( 0, 0, 0, 250 ) )
acheterammo4:SetFont("Trebuchet24")
acheterammo4:SetSize(75,40)
acheterammo4.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 200, 0, 0, 255 ) )
end
acheterammo4.DoClick = function()
FrameAmmo:Close()
net.Start( "buyammo4" )
net.SendToServer()
end
acheterammo5 = vgui.Create("DButton",Medecin)
acheterammo5:SetText("Acheter")
acheterammo5:SetParent( FrameAmmo )  
acheterammo5:SetPos(675,230)
acheterammo5:SetTextColor( Color( 0, 0, 0, 250 ) )
acheterammo5:SetFont("Trebuchet24")
acheterammo5:SetSize(75,40)
acheterammo5.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 200, 0, 0, 255 ) )
end
acheterammo5.DoClick = function()
FrameAmmo:Close()
net.Start( "buyammo5" )
net.SendToServer()
end
acheterammo6 = vgui.Create("DButton",Medecin)
acheterammo6:SetText("Acheter")
acheterammo6:SetParent( FrameAmmo )  
acheterammo6:SetPos(675,383)
acheterammo6:SetTextColor( Color( 0, 0, 0, 250 ) )
acheterammo6:SetFont("Trebuchet24")
acheterammo6:SetSize(75,40)
acheterammo6.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 200, 0, 0, 255 ) )
end
acheterammo6.DoClick = function()
FrameAmmo:Close()
net.Start( "buyammo6" )
net.SendToServer()
end

local Ammo1 = vgui.Create( "DModelPanel", FrameAmmo )
Ammo1:SetSize( 125, 125)
Ammo1:SetPos( 20, 0)
Ammo1:SetParent( FrameAmmo )
Ammo1:SetModel(CONFIG_MUNITION.ModelItem1 ) 
function Ammo1:LayoutEntity( Entity ) return end 
function Ammo1.Entity:GetPlayerColor() return Vector ( 5, 0, 0 ) end

local Ammo2 = vgui.Create( "DModelPanel", FrameAmmo )
Ammo2:SetSize( 125, 125)
Ammo2:SetPos( 20, 150)
Ammo2:SetParent( FrameAmmo )
Ammo2:SetModel( CONFIG_MUNITION.ModelItem2 ) 
function Ammo2:LayoutEntity( Entity ) return end 
function Ammo2.Entity:GetPlayerColor() return Vector ( 5, 0, 0 ) end

local Ammo3 = vgui.Create( "DModelPanel", FrameAmmo )
Ammo3:SetSize( 125, 125)
Ammo3:SetPos( 20, 300)
Ammo3:SetParent( FrameAmmo )
Ammo3:SetModel( CONFIG_MUNITION.ModelItem3 ) 
function Ammo3:LayoutEntity( Entity ) return end 
function Ammo3.Entity:GetPlayerColor() return Vector ( 5, 0, 0 ) end

local Ammo4 = vgui.Create( "DModelPanel", FrameAmmo )
Ammo4:SetSize( 125, 125)
Ammo4:SetPos( 425, 0)
Ammo4:SetParent( FrameAmmo )
Ammo4:SetModel( CONFIG_MUNITION.ModelItem4 ) 
function Ammo4:LayoutEntity( Entity ) return end 
function Ammo4.Entity:GetPlayerColor() return Vector ( 5, 0, 0 ) end

local Ammo5 = vgui.Create( "DModelPanel", FrameAmmo )
Ammo5:SetSize( 125, 125)
Ammo5:SetPos( 425, 150)
Ammo5:SetParent( FrameAmmo )
Ammo5:SetModel( CONFIG_MUNITION.ModelItem5 ) 
function Ammo5:LayoutEntity( Entity ) return end 
function Ammo5.Entity:GetPlayerColor() return Vector ( 5, 0, 0 ) end

local Ammo6 = vgui.Create( "DModelPanel", FrameAmmo )
Ammo6:SetSize( 125, 125)
Ammo6:SetPos( 425, 300)
Ammo6:SetParent( FrameAmmo )
Ammo6:SetModel( CONFIG_MUNITION.ModelItem6 ) 
function Ammo6:LayoutEntity( Entity ) return end 
function Ammo6.Entity:GetPlayerColor() return Vector ( 5, 0, 0 ) end
end

usermessage.Hook("munition", munition) 

hook.Add("PostDrawOpaqueRenderables", "munition", function() 
	for _, ent in pairs (ents.FindByClass("npc_munition")) do 
		if ent:GetPos():Distance(LocalPlayer():GetPos()) < 1000 then
			local Ang = ent:GetAngles()

			Ang:RotateAroundAxis( Ang:Forward(), 90)
			Ang:RotateAroundAxis( Ang:Right(), -90)
		
			cam.Start3D2D(ent:GetPos()+ent:GetUp()*79, Ang, 0.20)
				draw.SimpleTextOutlined( 'Distributeur Munition', "HUDNumber5", 0, 0, Color( 255, 0, 0, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, 1, Color(0, 0, 0, 255))			
			cam.End3D2D()
		end
	end
end)
