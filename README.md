# Suppressed Judge Anarcho Barrel

## Overview

This mod turns the Judge Anarcho's legendary barrel into a silencer. It does not let you use the barrel without owning the skin. It also does not give any stats that are not possible in the base game. Stat changes:

- Anarcho Barrel: same stats as The Silent Killer Suppressor.

Key features and options:

- **Silencer Effect for Judge Anarcho Barrel:** The Judge Anarcho's legendary barrel now has a silencer effect, allowing you to use it in stealth without equipping a suppressor and destroying the look of the gun. As with all silencers, Dragon's Breath rounds are not allowed.
- **OSA Integration:** [Optional Skin Attachments](https://github.com/ncakes/PD2-Optional-Skin-Attachments) has the option to display legendary weapon mods in the weapon modification menu. If you are using the Suppressed Judge Anarcho Barrel mod, the name of the legendary barrel will be changed to "Anarcho Suppressed Barrel".
- **AOLA Compatible**: If you use the [Add-On Legendary Attachments](https://github.com/ncakes/PD2-Add-On-Legendary-Attachments) mod, the stats of the add-on attachment will also be changed.

## Client Detection Risk

The mod works as both host and client. However, if you are a client, the host will see you with the wrong detection risk. This happens because you have modified the stats of your attachments, but other players can only see the original stats. In the case of this mod, other players will see you with a higher concealment so you will not experience faster detection (in fact, you will be detected slower as a client). TLDR:

- Real Anarcho Barrel: other players see your concealment INCREASED by 2 points, i.e. LOWER detection risk (good).
- Add-On Anarcho Barrel: other players see your concealment INCREASED by 2 points, i.e. LOWER detection risk (good).

Both the real / add-on versions of the Anarcho Grip have no effect on concealment for other players.

Note: if the host has also installed the mod, then the real legendary attachments will have their stats calculated correctly by the host. The add-on legendary attachments will still have the wrong stats because they are synced as different parts.

## Host/Client Interactions

This mod has been tested both as client and host with vanilla and modded peers.

Silencer effect:
- The silencer effect works as both client and host for both the real and add-on barrel, regardless of whether or not the host as the mod. Guards will not be alerted, so you can safely use it in stealth.

Gunshot sound:
- Real Anarcho Barrel: gunshots from the real Anarcho Barrel will always sound suppressed to you. If someone without the mod shoots with the real Anarcho Barrel, it will still sound suppressed to you (when it is in fact loud and will alert guards).
- Add-On Anarcho Barrel: if you have AOLA installed, gunshots from the Add-On Anarcho Barrel will always sound suppressed to you. If someone without the mod shoots with the Add-On Anarcho Barrel, it will sound suppressed to you (when it is in fact loud and will alert guards). Players who do not have AOLA will always hear a loud gunshot from the Add-On Anarcho Barrel.

Silencer icon in crew setup:
- Real Anarcho Barrel: when using the mod, anyone with the real Anarcho Barrel equipped will show a silencer icon, even if they do not have the mod (so their shots will alert guards).
- Add-On Anarcho Barrel: if you equip the Add-On Anarcho Barrel while using the mod, the gun will show a silencer icon for you. For other players, it is not possible to see the silencer icon for the Add-On Anarcho Barrel.

## Installation

This mod requires [SuperBLT](https://superblt.znix.xyz).

Download `Suppressed-Judge-Anarcho-Barrel_<ver>.zip` from the [latest release page](https://github.com/ncakes/PD2-Suppressed-Judge-Anarcho-Barrel/releases/latest) and extract the entire contents to your `mods` folder.

```
C:\Program Files (x86)\Steam\steamapps\common\PAYDAY 2\mods
```
