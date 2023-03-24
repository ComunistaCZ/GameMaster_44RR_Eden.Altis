//Disable Saving
enableSaving [false, false];
//AI STFU
enableSentences false;
//Radio Report
0 fadeRadio 0;

hint "Zeus, počkej 10 sekund a pak zmáčkni Z, jestli to nefunguje, tak na DS v chatu scripty je script, spusti ho na serveru.";

if (isServer) then {
	[] spawn compileFinal preprocessFileLineNumbers "scripts\show_fps.sqf";
	[] spawn compileFinal preprocessFileLineNumbers "scripts\fixZeus.sqf";
};

if (!isDedicated && !hasInterface && isMultiplayer) then {
	[] spawn compileFinal preprocessFileLineNumbers "scripts\show_fps.sqf";
};
execVM "scripts\cTabFixFirst.sqf";
execVM "scripts\cTabFix.sqf";

missionNamespace setVariable ["BIS_respSpecAi",true];
missionNamespace setVariable ["BIS_respSpecAllowFreeCamera",true];
missionNamespace setVariable ["BIS_respSpecAllow3PPCamera",true];
missionNamespace setVariable ["BIS_respSpecShowFocus",true];
missionNamespace setVariable ["BIS_respSpecShowCameraButtons",true];
missionNamespace setVariable ["BIS_respSpecShowControlsHelper",true];
missionNamespace setVariable ["BIS_respSpecShowHeader",true];
missionNamespace setVariable ["BIS_respSpecLists",true];

tf_west_radio_code="_zlo";
tf_east_radio_code="_zlo";
tf_guer_radio_code="_zlo";

// MAKE SURE THE PLAYER INITIALIZES PROPERLY



if (!isDedicated && (isNull player)) then
{
    waitUntil {sleep 0.1; !isNull player};  
};

player createDiarySubject ["Pravidla 44. RR","Pravidla 44. RR"];
player createDiaryRecord ["Pravidla 44. RR", ["Pravidla 44. RR","Pravidla 44. RR týkající se akcí<br />1. Pravidla týkající se akcí platí vždy pro všechny rekruty a členy 44. RR.<br />2. Od členů a rekrutů se vyžaduje chováni odpovídající charakteru mise.<br />3. Komunikace ovlivňující dění v misi probíhá pouze pomocí TaskForceRadio či DirectTalk.<br />4. Členové a rekruti jsou povinni umožnit tvůrci mise bez přerušení podat briefing.<br />5. Členové a rekruti mají povinnost řídit se rozkazy velitele.<br />6. Diskuze o rozkazu je na místě, pouze pokud k ní velitel výslovně dá prostor. (“Poslouchám návrhy; Co si o tom myslíte ?”)<br />7. Jakékoliv stížnosti a osobní, názorové, postojové či technické problémy se řeší mimo herní čas a ne v rámci mise/akce.<br /><br />Pokud jste byli svědkem porušení některého z těchto pravidel, prosím urychleně kontaktujte Správce.<br />Všichni Správci přítomní na misi jsou povinni vymáhat dodržování všech pravidel 44. RR.<br />Platné pravidla se vždy nachází v manuálu."]];

player disableConversation true;
player setSpeaker "NoVoice";
showSubtitles false;
// Radio Protocol disabled
player disableAI "RADIOPROTOCOL";
