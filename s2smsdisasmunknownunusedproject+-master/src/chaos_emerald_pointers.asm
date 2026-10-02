;Chaos Emerald tile data pointers
;pointers into bank 20

ChaosEmeraldData:
.dw Art_ChaosEmerald_Blue ; UGZ
.dw Art_ChaosEmerald_Yellow ; SHZ
.dw Art_ChaosEmerald_Pink ; ALZ
.dw Art_ChaosEmerald_Grey ; GHZ
.dw Art_ChaosEmerald_Red ; GMZ
.dw Art_ChaosEmerald_Green ; SEZ
.dw Art_ChaosEmerald_Blue ; CEZ
.dw Art_ChaosEmerald_Blue ; ENDZ
; -UNKNOWNUNUSEDZONE The Unknown Unused Zone does not have vaild Chaos Emerald Art in the base game but in this rom hack I added in a pointer -Gdmc5
; Added in it to prevent game crashes
.dw Art_ChaosEmerald_Blue ; UNKZ
; -IntroandTitleScreenZoneNewAddedData Added the Intro and Title Screen Zone here to this Chaos Emerald Table with Place Holder Data to Prevent Game Crashes when loading into it with a Chaos Emerald Object Placed -Gdmc5
.dw Art_ChaosEmerald_Blue ; INTROZ
