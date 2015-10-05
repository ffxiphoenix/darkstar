-----------------------------------
--  Area: Aht Urhgan Whitegate
--  NPC:  Matifa
--  Type: Standard NPC
--  @pos -10.583 -1 -8.820 50
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
    local D1 = player:getVar("artsD1");
    if artsandcrafts == QUEST_ACCEPTED and D1  ~= 1 then
    	player:startEvent(0x0204); 
    else
	player:startEvent(0x021d);
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
        if (csid == 0x0204) then 
    player:setVar("artsD1",1);
end   
end;

