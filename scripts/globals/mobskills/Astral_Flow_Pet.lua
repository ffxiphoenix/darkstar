---------------------------------------------------
-- Astral Flow
-- Will make existing pet use astral flow skill
---------------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    -- need a pet to use astral flow
    if (mob:hasPet() == false) then
        return 1;
    end

    local pet = mob:getPet();

    -- pet needs to be active
    if (pet:hasStatusEffect(EFFECT_SLEEP) or pet:hasStatusEffect(EFFECT_SLEEP_II) or pet:hasStatusEffect(EFFECT_LULLABY)) then
        return 1;
    end

    if (mob:getMobMod(MOBMOD_SCRIPTED_2HOUR) == 1) then
        return 1;
    elseif (mob:getHPP() <= mob:getMobMod(MOBMOD_2HOUR_PROC)) then
        return 0;
    end

    return 1;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_ASTRAL_FLOW;
    skill:setMsg(MSG_USES);

    mob:getPet():useMobAbility(656);

    return typeEffect;
end;
