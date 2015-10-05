-----------------------------------
-- Area: Aht Urhgan Whitegate
-- Door: Kokba Hostel
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
local body = player:getEquipID(SLOT_BODY);
    local nicebod = 0;
    local bodcount = 0;
    curbod = {12548, 13742, 13743, 14525, 13795, 13802, 14416, 13779, 13754, 14436, 14438, 13775, 13776, 13740, 13741, 13703, 13710, 14372, 14440, 14441, 12573, 14391, 14389, 14390, 14380};
	for i= 1, 25 do
    if curbod[i] == body then 
        nicebod=1;
    end
    end    
    -- Add Check for no sword
    if (player:getCurrentMission(TOAU) == GUESTS_OF_THE_EMPIRE and nicebod == 1) then
	player:startEvent(0x0C27);
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
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;