-----------------------------------
--  Area: Aht Urhgan Whitegate
--  NPC:  Hadahda
--  Type: Standard NPC
--  @pos -112.029 -6.999 -66.114 50
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
local artsandcrafts = player:getQuestStatus(AHT_URHGAN,ARTS_AND_CRAFTS);
if (trade:hasItemQty(5578,1)) and artsandcrafts == QUEST_COMPLETE then
player:addItem(2184);
player:messageSpecial(ITEM_OBTAINED,2184);
player:tradeComplete();
end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc, zone) 
local artsandcrafts = player:getQuestStatus(AHT_URHGAN,ARTS_AND_CRAFTS);
local M = player:getVar("artsM");
local D = player:getVar("artsD");
local D1 = player:getVar("artsD1");
local A = player:getVar("artsA");
local A1 = player:getVar("artsA1");
local T = player:getVar("artsT");
local U = player:getVar("artsU");
local all = 0;
if M ==1 and D == 1 and D1 == 1 and A ==1 and A1 == 1 and T == 1 and U ==1 then
all = 1;
end
if (artsandcrafts == QUEST_AVAILABLE) then
    	player:startEvent(0x0206); 
elseif all == 1 then    
    player:startEvent(0x0205);      
    else    
	player:startEvent(0x01fc);
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
    	if (csid == 0x0206) then
        player:addQuest(AHT_URHGAN,ARTS_AND_CRAFTS);
        elseif (csid == 0x0205) and (player:getFreeSlotsCount() >= 1) then
        player:messageSpecial(ITEM_OBTAINED,5578)
        player:addItem(5578)
        player:setVar("artsD",0);
        player:setVar("artsD1",0);
        player:setVar("artsA",0);
        player:setVar("artsA1",0);
        player:setVar("artsM",0);
        player:setVar("artsT",0);
        player:setVar("artsU",0);
        player:completeQuest(AHT_URHGAN,ARTS_AND_CRAFTS);
        elseif (player:getFreeSlotsCount() == 0) then
		player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,5578);
        end
        
end;

