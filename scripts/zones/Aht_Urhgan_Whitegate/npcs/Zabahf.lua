-----------------------------------
--  Area: Aht Urhgan Whitegate
--  NPC:  Zabahf
--  Type: Standard NPC
--  @pos -90.070 -1 10.140 50
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/quests");
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
	local gotItAllProg = player:getVar("gotitallCS");
    local artsandcrafts = player:getQuestStatus(AHT_URHGAN,ARTS_AND_CRAFTS);
    local T = player:getVar("artsT");
    if artsandcrafts == QUEST_ACCEPTED and T  ~= 1 then
    	player:startEvent(0x0200);  
    elseif (gotItAllProg == 1 or gotItAllProg == 3) then
	   player:startEvent(0x0215);
	elseif (gotItAllProg == 2) then   
	   player:startEvent(0x020b);
	elseif (gotItAllProg == 5) then   
	   player:startEvent(0x021a);
	elseif (gotItAllProg == 6) then   
	   player:startEvent(0x021c);
	elseif (gotItAllProg == 7) then   
	   player:startEvent(0x0217);
	elseif (player:getQuestStatus(AHT_URHGAN,GOT_IT_ALL) == QUEST_COMPLETED) then
	   player:startEvent(0x0212);
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
	if (csid == 0x020b) then
	   player:setVar("gotitallCS",3);
    elseif (csid == 0x0200) then 
    player:setVar("artsT",1);
	end
end;

