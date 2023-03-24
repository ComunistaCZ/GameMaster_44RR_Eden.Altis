["InitializePlayer", [player]] call BIS_fnc_dynamicGroups; // Initializes the player/client side Dynamic Groups framework

player disableConversation true;
player setSpeaker "NoVoice";
showSubtitles false;

// Radio Protocol disabled
player disableAI "RADIOPROTOCOL";
allPlayers disableAI "RADIOPROTOCOL";

if(!isDedicated) then 
{
 ﻿﻿   waitUntil {!isNull﻿﻿﻿﻿﻿ (findDisplay 46)}; // Wait for main display
    if((difficultyOption "thirdPersonView") isEqualTo 1) then 
    {
        while {true} do 
        {
 ﻿           waitUntil {cameraView isEqualTo "EXTERNAL" || cameraView isEqualTo "GROUP"};
            if((vehicle player) isEqualTo player) then 
            {
                player switchCamera "INTERNAL";
            };
        };
    };
};