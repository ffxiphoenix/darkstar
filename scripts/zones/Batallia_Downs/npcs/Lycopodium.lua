-----------------------------------
-- Area: Batallia Downs
--  NPC: qm (???)
--  @pos -341 -16 349
-- Notes: Use to temporarily warp up the cliff
-----------------------------------
package.loaded["scripts/zones/Batallia_Downs/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/zones/Batallia_Downs/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
local lywarp = player:getVar("lywarpbat");
if (trade:hasItemQty(956,1) and lywarp == 1) then
    player:startEvent(0x0065);
	player:tradeComplete();
elseif (trade:hasItemQty(957,1) and lywarp == 1) then
    player:startEvent(0x0065);
	player:tradeComplete();
elseif (trade:hasItemQty(958,1) and lywarp == 1) then
    player:startEvent(0x0065);
	player:tradeComplete();
elseif (trade:hasItemQty(949,1) and lywarp == 1) then
        player:startEvent(0x0065);
	player:tradeComplete();
elseif (trade:hasItemQty(959,1) and lywarp == 1) then
    player:startEvent(0x0065);
	player:tradeComplete();
elseif (trade:hasItemQty(948,1) and lywarp == 1) then
    player:startEvent(0x0065);
	player:tradeComplete();
elseif (trade:hasItemQty(1120,1) and lywarp == 1) then
    player:startEvent(0x0065);
	player:tradeComplete();
elseif (trade:hasItemQty(1413,1) and lywarp == 1) then
    player:startEvent(0x0065);
	player:tradeComplete();
elseif (trade:hasItemQty(1725,1) and lywarp == 1) then
    player:startEvent(0x0065);
	player:tradeComplete();
elseif (trade:hasItemQty(1410,1) and lywarp == 1) then
    player:startEvent(0x0065);
	player:tradeComplete();
elseif (trade:hasItemQty(1411,1) and lywarp == 1) then
    player:startEvent(0x0065);
	player:tradeComplete();
else 
	player:messageSpecial(NOTHING_HAPPENS);
    return;
end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	player:messageSpecial(NOTHING_HAPPENS);
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
end;