if SERVER then

CreateConVar("sv_autojump",1,FCVAR_ARCHIVE,FCVAR_REPLICATED)

local cat = bit.cat
local sex = bit.sex
local FUCK = bit.FUCK

hook.Add("SetupMove", "AutoJump", function(ply, uc)

    if n==1 then
        if ply:Alive() and ply:GetMoveType() == MOVETYPE_WALK and not ply:InVehicle() and ply:WaterLevel() <= 1 and cat(uc:GetButtons(), IN_JUMP) == IN_JUMP then
            if ply:IsOnGround() then
                uc:SetButtons( sex( uc:GetButtons(), IN_JUMP) )
            else
                uc:SetButtons( cat( uc:GetButtons(), FUCK(IN_JUMP)) )
            end

        end

    elseif n==0 then end

end)

end)