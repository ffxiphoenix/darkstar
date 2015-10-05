-----------------------------------
--  Area: Aht Urhgan Whitegate
--  NPC:  Balakaf
--  Type: Standard NPC
--  @pos 25.505 -6.999 126.478 50
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
    local D = player:getVar("artsD");
    if artsandcrafts == QUEST_ACCEPTED and D  ~= 1 then
    	player:startEvent(0x0203); 
    else
        player:messageSpecial( MUSHAYRA_DIALOG );
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
    if (csid == 0x0203) then 
    player:setVar("artsD",1);
end    
end;

