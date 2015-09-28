-----------------------------------
-- Area: Castle Oztroja
-- NPC:  qm3 (???)
-- Used In Quest: A boy's Dream (temp spawn instead of fishing)
-- @pos -78 23 -35
-----------------------------------
package.loaded["scripts/zones/Castle_Oztroja/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/zones/Castle_Oztroja/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    aBoysDreamCS = player:getVar("aBoysDreamCS");
    if player:getQuestStatus(A_BOY_S_DREAM) == QUEST_ACCEPTED then
	if (trade:hasItemQty(17001,1)) and aBoysDreamCS == 4 then
    player:tradeComplete();
		SpawnMob (17396141):updateClaim(player);
	
	else
		player:messageSpecial(NOTHING_OUT_OF_ORDINARY);
	end
    end
	
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

end;

function onMobDeath(mob, killer)
	
	killer:setVar("aBoysDreamCS",5);
	
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