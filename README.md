

# 🛠️ mod-ptr-toolkit (Eluna Script for AzerothCore)

A powerful **Eluna Lua Engine** script designed for AzerothCore 3.3.5a (Wrath of the Lich King). It introduces an interactive custom item (**PTR Toolkit**) built specifically for PTR (Public Test Realm) or development environments. 

Right-clicking the item directly from your inventory opens a comprehensive **Gossip Menu**, eliminating the need for a physical NPC or targeting any entity.

---

## 🌟 Features

* 🚀 **Instant Level 80:** Instantly boosts the character to level 80.
* ⚔️ **Class-Specific PvP & PvE Gear:**
  * Grants a full Wrathful Gladiator PvP set (including weapons and matching class accessories).
  * Automatically populates the player's bags with complete PvE specialization sets (DPS, Tank, Healer), pre-equipped with gems, enchants, and glyphs.
* 📜 **Max Spells & Skills:** Teaches all class spells up to max rank and maximizes weapon skill proficiencies.
* 🦅 **Riding & Mounts:** Teaches advanced riding skills (*Artisan Riding*, *Cold Weather Flying*) and adds essential mounts.
* ⚙️ **Max Professions:** A dedicated submenu to instantly max out any primary profession to level 450.
* 📦 **Inventory Utilities:**
  * Grants 4 massive 36-slot bags.
  * Adds 1,000 Gold or Emblems (Frost & Triumph).
  * Supplies essential raid consumables (Flasks, Potions, Food, and Hunter Ammo).
* 🛡️ **Built-in Crash Protection:** The inventory clearing functions feature a smart bypass rule `if invItem and invItem:GetEntry() ~= ITEM_ID then`. This prevents the script from deleting the PTR Toolkit itself during inventory cleanup, protecting the live C++ item pointer from memory corruption and completely eliminating `worldserver` crashes.
* 🩹 **Full Recovery:** Instantly restores full Health/Mana and clears all negative secondary auras or debuffs.
* 🗺️ **Quick Teleports:** Instant travel paths to major WotLK cities and raid instances (Dalaran, ICC, Ulduar, ToC, Naxxramas, Ruby Sanctum, etc.).

---

## 📋 Requirements

1.  **AzerothCore 3.3.5a** (Latest source base).
2.  The official **`mod-eluna`** (or `mod-ale` - AzerothCore Lua Engine) compiled and active on your server.

---

## 📦 Installation & Configuration

Follow these steps precisely to ensure the item registers correctly and avoids UI cache lockouts:

### Step 1: Add the Lua Script
Place your `ptr_npc.lua` file inside your server's Eluna scripts folder:
* Default Path: `../worldserver/lua_scripts/ptr_npc.lua`

### Step 2: Apply the SQL Query
Run the following SQL query in your **`world`** database (using HeidiSQL, MySQL Workbench, or DBeaver). This query safe-clones the operational properties of a *Hearthstone* and hooks spell ID `836` (Dummy Self-Cast). This forces the client to use the item instantly without triggering a blue target cursor:

```sql
-- Remove old custom entry if it exists
DELETE FROM `item_template` WHERE `entry` = 900005;

-- Create a temporary clone from a functional native Hearthstone base
CREATE TEMPORARY TABLE `tmp_item` SELECT * FROM `item_template` WHERE `entry` = 6948;

-- Modify specific fields for the PTR Toolkit
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

-- Insert the modified template into the live item table
INSERT INTO `item_template` SELECT * FROM `tmp_item`;

-- Drop the temporary workspace table
DROP TEMPORARY TABLE `tmp_item`;

```

### Step 3: Clear the Client Cache

*CRITICAL STEP: If skipped, your WoW client will read from local cache data, and the item will either not be click-clickable!*

1. Close **World of Warcraft (wow.exe)** completely.
2. Navigate to your main WoW 3.3.5a game directory.
3. Delete the entire **`Cache`** folder.

### Step 4: Boot and Test

1. Start (or fully restart) your `worldserver`. Verify in the console logs that `ptr_npc.lua` loads successfully with no syntax errors.
2. Log into the game with an admin account (GM).
3. Add the item using the command:
```text
.additem 900005 1
```


4. Open your bags and right-click the **PTR Toolkit**. The gossip menu will snap open instantly.

---

## 📜 License & Credits

* Built for the **AzerothCore** emulation platform using the **Eluna Lua Engine** API.
