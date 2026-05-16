DELETE FROM `item_template` WHERE `entry` = 900005;

CREATE TEMPORARY TABLE `tmp_item` SELECT * FROM `item_template` WHERE `entry` = 6948;

UPDATE `tmp_item` SET 
    `entry` = 900005, 
    `name` = 'PTR Toolkit', 
    `displayid` = 2619, 
    `Quality` = 5, 
    `spellid_1` = 836,           
    `spelltrigger_1` = 0,         
    `spellcharges_1` = -1,        
    `spellcooldown_1` = 0,        
    `spellcategorycooldown_1` = 0,
    `description` = 'Right-click to open the PTR menu.', 
    `ScriptName` = '' 
WHERE `entry` = 6948;

INSERT INTO `item_template` SELECT * FROM `tmp_item`;
DROP TEMPORARY TABLE `tmp_item`;