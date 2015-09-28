-----------------------------------
--  Area: Batallia Downs [S]
--  NPC:  Lycopodium
--  Involved in Quest: Lycopodium Warp
--  @pos -366 -22 324
-----------------------------------
package.loaded["scripts/zones/Batallia_Downs_[S]/TextIDs"] = nil;
-------------------------------------

require("scripts/zones/Batallia_Downs_[S]/TextIDs");

-----------------------------------
-- onTrade
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger
-----------------------------------

function onTrigger(player,npc)
        local lywarp = player:getVar("lywarpbat");
    if lywarp ~=1 then
        player:startEvent(0x00ca);
     else
        player:PrintToPlayer( "This warp is already enabled" );
     end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
if (csid == 0x00ca) then
    player:setVar("lywarpbat",1);
    end
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;