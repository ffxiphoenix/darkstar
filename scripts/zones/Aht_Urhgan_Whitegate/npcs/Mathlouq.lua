-----------------------------------
--  Area: Aht Urhgan Whitegate
--  NPC:  Mathlouq
--  Type: Standard NPC
--  @pos -92.892 -7 129.277 50
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
    local U = player:getVar("artsU");
    if artsandcrafts == QUEST_ACCEPTED and U  ~= 1 then   
    player:startEvent(0x01ff);
    else
	player:startEvent(0x021f);
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
    if (csid == 0x01ff) then 
    player:setVar("artsU",1); 
end    
end;

