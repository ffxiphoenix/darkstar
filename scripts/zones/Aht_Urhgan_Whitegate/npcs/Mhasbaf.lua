-----------------------------------
--  Area: Aht Urhgan Whitegate
--  NPC:  Mhasbaf
--  Type: Standard NPC
--  @pos 54.701 -6.999 11.387 50
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
    local artsandcrafts = player:getQuestStatus(AHT_URHGAN,ARTS_AND_CRAFTS);
    local M = player:getVar("artsM");
    if artsandcrafts == QUEST_ACCEPTED and M  ~= 1 then
    	player:startEvent(0x01fe); 
    else
	player:startEvent(0x021e);
    end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
	-- printf("CSID: %u",csid);
	-- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
	-- printf("CSID: %u",csid);
	-- printf("RESULT: %u",option);
            if (csid == 0x01fe) then 
    player:setVar("artsM",1);
end   
end;

