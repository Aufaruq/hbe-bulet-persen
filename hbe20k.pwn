//buat manggil fungsi hook
#include <YSI_Coding\y_hooks>

// By aupa
// Hbe 20k awkwakkaw ngakak anjeng hbe jelek di jual 20k, nih gua share biar ga rugi

//perlu di ketahui, ini adalah SC untuk gm basic yang menggunakan Player Enum yaitu "PlayerData", jika kalian menggunakan LRP ubah "PlayerData" Menjadi "PlayerData" jika inferno "PlayerInfo" tergantung gm yang lu pake

//Perlu di ketahui, ubah bagian pHealth, pArmor, pHunger, pThirst, pStress, sesuai dengan GM kalian, beda gm beda enum

//file ini sudah include menjadi 1 untuk hbe, tinggal jadikan file ini .pwn ( jangan di compile )
//panggil ke gm utama kalian
//#include "module/namafile.pwn"

new PlayerText: Hbe20kAkwkwakw[MAX_PLAYERS][20];

new PlayerText: HEALTH[MAX_PLAYERS];
new PlayerText: ARMOR[MAX_PLAYERS];
new PlayerText: LAPAR[MAX_PLAYERS];
new PlayerText: HAUS[MAX_PLAYERS];
new PlayerText: STRESS[MAX_PLAYERS];

//stock show hbe nya
stock ShowHbeaufa(playerid) {
    for(new i = 0; i < 20; i++)
    {
        PlayerTextDrawShow(playerid, Hbe20kAkwkwakw[playerid][i]);
    }
    PlayerTextDrawShow(playerid, HEALTH[playerid]);
    PlayerTextDrawShow(playerid, ARMOR[playerid]);
    PlayerTextDrawShow(playerid, LAPAR[playerid]);
    PlayerTextDrawShow(playerid, HAUS[playerid]);
    PlayerTextDrawShow(playerid, STRESS[playerid]);
}

//stock untuk UpdateHbe nya
stock UpdateHBE(playerid) {
    if (PlayerData[playerid][pSpawned] && !PlayerData[playerid][pTogHud]) {

        new Float:health, Float:armour, Float:aufalapar, Float:aufahaus, Float:stress;

        GetPlayerHealth(playerid, PlayerData[playerid][pHealth]);
        GetPlayerArmour(playerid, PlayerData[playerid][pArmor]);

        new AufaSampCode[1000]; 
        format(AufaSampCode, 250, "%d", PlayerData[playerid][pHealth]);
        PlayerTextDrawSetString(playerid, HEALTH[playerid], AufaSampCode);
        PlayerTextDrawShow(playerid, HEALTH[playerid]);

        format(AufaSampCode, 250, "%d", PlayerData[playerid][pArmor]);
        PlayerTextDrawSetString(playerid, ARMOR[playerid], AufaSampCode);
        PlayerTextDrawShow(playerid, ARMOR[playerid]);

        format(AufaSampCode, 250, "%d", PlayerData[playerid][pHunger]);
        PlayerTextDrawSetString(playerid, LAPAR[playerid], AufaSampCode);
        PlayerTextDrawShow(playerid, LAPAR[playerid]);

        format(AufaSampCode, 250, "%d", PlayerData[playerid][pThirst]);
        PlayerTextDrawSetString(playerid, HAUS[playerid], AufaSampCode);
        PlayerTextDrawShow(playerid, HAUS[playerid]);

        format(AufaSampCode, 250, "%d", PlayerData[playerid][pStress]);
        PlayerTextDrawSetString(playerid, STRESS[playerid], AufaSampCode);
        PlayerTextDrawShow(playerid, STRESS[playerid]);
    }
    return 1;
}

//buat show hbe nya
hook OnPlayerConnect(playerid){
	ShowHbeaufa(playerid);
}

//textdraw
hook OnGameModeInit() {
    HEALTH[playerid] = CreatePlayerTextDraw(playerid, 275.000, 431.000, "100");
    PlayerTextDrawLetterSize(playerid, HEALTH[playerid], 0.170, 0.699);
    PlayerTextDrawAlignment(playerid, HEALTH[playerid], 1);
    PlayerTextDrawColor(playerid, HEALTH[playerid], -1);
    PlayerTextDrawSetShadow(playerid, HEALTH[playerid], 1);
    PlayerTextDrawSetOutline(playerid, HEALTH[playerid], 1);
    PlayerTextDrawBackgroundColor(playerid, HEALTH[playerid], -16776961);
    PlayerTextDrawFont(playerid, HEALTH[playerid], 1);
    PlayerTextDrawSetProportional(playerid, HEALTH[playerid], 1);

    ARMOR[playerid] = CreatePlayerTextDraw(playerid, 299.000, 431.000, "100");
    PlayerTextDrawLetterSize(playerid, ARMOR[playerid], 0.170, 0.699);
    PlayerTextDrawAlignment(playerid, ARMOR[playerid], 1);
    PlayerTextDrawColor(playerid, ARMOR[playerid], 255);
    PlayerTextDrawSetShadow(playerid, ARMOR[playerid], 1);
    PlayerTextDrawSetOutline(playerid, ARMOR[playerid], 1);
    PlayerTextDrawBackgroundColor(playerid, ARMOR[playerid], -1);
    PlayerTextDrawFont(playerid, ARMOR[playerid], 1);
    PlayerTextDrawSetProportional(playerid, ARMOR[playerid], 1);

    LAPAR[playerid] = CreatePlayerTextDraw(playerid, 322.000, 431.000, "100");
    PlayerTextDrawLetterSize(playerid, LAPAR[playerid], 0.170, 0.699);
    PlayerTextDrawAlignment(playerid, LAPAR[playerid], 1);
    PlayerTextDrawColor(playerid, LAPAR[playerid], -1);
    PlayerTextDrawSetShadow(playerid, LAPAR[playerid], 1);
    PlayerTextDrawSetOutline(playerid, LAPAR[playerid], 1);
    PlayerTextDrawBackgroundColor(playerid, LAPAR[playerid], -2686721);
    PlayerTextDrawFont(playerid, LAPAR[playerid], 1);
    PlayerTextDrawSetProportional(playerid, LAPAR[playerid], 1);

    HAUS[playerid] = CreatePlayerTextDraw(playerid, 345.000, 431.000, "100");
    PlayerTextDrawLetterSize(playerid, HAUS[playerid], 0.170, 0.699);
    PlayerTextDrawAlignment(playerid, HAUS[playerid], 1);
    PlayerTextDrawColor(playerid, HAUS[playerid], -1);
    PlayerTextDrawSetShadow(playerid, HAUS[playerid], 1);
    PlayerTextDrawSetOutline(playerid, HAUS[playerid], 1);
    PlayerTextDrawBackgroundColor(playerid, HAUS[playerid], 12582911);
    PlayerTextDrawFont(playerid, HAUS[playerid], 1);
    PlayerTextDrawSetProportional(playerid, HAUS[playerid], 1);

    STRESS[playerid] = CreatePlayerTextDraw(playerid, 368.000, 431.000, "100");
    PlayerTextDrawLetterSize(playerid, STRESS[playerid], 0.170, 0.699);
    PlayerTextDrawAlignment(playerid, STRESS[playerid], 1);
    PlayerTextDrawColor(playerid, STRESS[playerid], -1);
    PlayerTextDrawSetShadow(playerid, STRESS[playerid], 1);
    PlayerTextDrawSetOutline(playerid, STRESS[playerid], 1);
    PlayerTextDrawBackgroundColor(playerid, STRESS[playerid], -1962934017);
    PlayerTextDrawFont(playerid, STRESS[playerid], 1);
    PlayerTextDrawSetProportional(playerid, STRESS[playerid], 1);

    Hbe20kAkwkwakw[playerid][0] = CreatePlayerTextDraw(playerid, 265.000, 413.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Hbe20kAkwkwakw[playerid][0], 31.000, 36.000);
    PlayerTextDrawAlignment(playerid, Hbe20kAkwkwakw[playerid][0], 1);
    PlayerTextDrawColor(playerid, Hbe20kAkwkwakw[playerid][0], -16776961);
    PlayerTextDrawSetShadow(playerid, Hbe20kAkwkwakw[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, Hbe20kAkwkwakw[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, Hbe20kAkwkwakw[playerid][0], 255);
    PlayerTextDrawFont(playerid, Hbe20kAkwkwakw[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, Hbe20kAkwkwakw[playerid][0], 1);

    Hbe20kAkwkwakw[playerid][1] = CreatePlayerTextDraw(playerid, 266.000, 414.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Hbe20kAkwkwakw[playerid][1], 29.000, 34.000);
    PlayerTextDrawAlignment(playerid, Hbe20kAkwkwakw[playerid][1], 1);
    PlayerTextDrawColor(playerid, Hbe20kAkwkwakw[playerid][1], 255);
    PlayerTextDrawSetShadow(playerid, Hbe20kAkwkwakw[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, Hbe20kAkwkwakw[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, Hbe20kAkwkwakw[playerid][1], 255);
    PlayerTextDrawFont(playerid, Hbe20kAkwkwakw[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, Hbe20kAkwkwakw[playerid][1], 1);

    Hbe20kAkwkwakw[playerid][2] = CreatePlayerTextDraw(playerid, 268.000, 416.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Hbe20kAkwkwakw[playerid][2], 25.000, 30.000);
    PlayerTextDrawAlignment(playerid, Hbe20kAkwkwakw[playerid][2], 1);
    PlayerTextDrawColor(playerid, Hbe20kAkwkwakw[playerid][2], -16776961);
    PlayerTextDrawSetShadow(playerid, Hbe20kAkwkwakw[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, Hbe20kAkwkwakw[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, Hbe20kAkwkwakw[playerid][2], 255);
    PlayerTextDrawFont(playerid, Hbe20kAkwkwakw[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, Hbe20kAkwkwakw[playerid][2], 1);

    Hbe20kAkwkwakw[playerid][3] = CreatePlayerTextDraw(playerid, 276.000, 423.000, "HUD:radar_girlfriend");
    PlayerTextDrawTextSize(playerid, Hbe20kAkwkwakw[playerid][3], 9.000, 9.000);
    PlayerTextDrawAlignment(playerid, Hbe20kAkwkwakw[playerid][3], 1);
    PlayerTextDrawColor(playerid, Hbe20kAkwkwakw[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, Hbe20kAkwkwakw[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, Hbe20kAkwkwakw[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, Hbe20kAkwkwakw[playerid][3], 255);
    PlayerTextDrawFont(playerid, Hbe20kAkwkwakw[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, Hbe20kAkwkwakw[playerid][3], 1);

    Hbe20kAkwkwakw[playerid][4] = CreatePlayerTextDraw(playerid, 289.000, 413.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Hbe20kAkwkwakw[playerid][4], 31.000, 36.000);
    PlayerTextDrawAlignment(playerid, Hbe20kAkwkwakw[playerid][4], 1);
    PlayerTextDrawColor(playerid, Hbe20kAkwkwakw[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, Hbe20kAkwkwakw[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, Hbe20kAkwkwakw[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, Hbe20kAkwkwakw[playerid][4], 255);
    PlayerTextDrawFont(playerid, Hbe20kAkwkwakw[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, Hbe20kAkwkwakw[playerid][4], 1);

    Hbe20kAkwkwakw[playerid][5] = CreatePlayerTextDraw(playerid, 290.000, 414.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Hbe20kAkwkwakw[playerid][5], 29.000, 34.000);
    PlayerTextDrawAlignment(playerid, Hbe20kAkwkwakw[playerid][5], 1);
    PlayerTextDrawColor(playerid, Hbe20kAkwkwakw[playerid][5], 255);
    PlayerTextDrawSetShadow(playerid, Hbe20kAkwkwakw[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, Hbe20kAkwkwakw[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, Hbe20kAkwkwakw[playerid][5], 255);
    PlayerTextDrawFont(playerid, Hbe20kAkwkwakw[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, Hbe20kAkwkwakw[playerid][5], 1);

    Hbe20kAkwkwakw[playerid][6] = CreatePlayerTextDraw(playerid, 292.000, 416.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Hbe20kAkwkwakw[playerid][6], 25.000, 30.000);
    PlayerTextDrawAlignment(playerid, Hbe20kAkwkwakw[playerid][6], 1);
    PlayerTextDrawColor(playerid, Hbe20kAkwkwakw[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, Hbe20kAkwkwakw[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, Hbe20kAkwkwakw[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, Hbe20kAkwkwakw[playerid][6], 255);
    PlayerTextDrawFont(playerid, Hbe20kAkwkwakw[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, Hbe20kAkwkwakw[playerid][6], 1);

    Hbe20kAkwkwakw[playerid][7] = CreatePlayerTextDraw(playerid, 298.000, 424.000, "HUD:radar_tshirt");
    PlayerTextDrawTextSize(playerid, Hbe20kAkwkwakw[playerid][7], 13.000, 8.000);
    PlayerTextDrawAlignment(playerid, Hbe20kAkwkwakw[playerid][7], 1);
    PlayerTextDrawColor(playerid, Hbe20kAkwkwakw[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, Hbe20kAkwkwakw[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, Hbe20kAkwkwakw[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, Hbe20kAkwkwakw[playerid][7], 255);
    PlayerTextDrawFont(playerid, Hbe20kAkwkwakw[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, Hbe20kAkwkwakw[playerid][7], 1);

    Hbe20kAkwkwakw[playerid][8] = CreatePlayerTextDraw(playerid, 312.000, 413.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Hbe20kAkwkwakw[playerid][8], 31.000, 36.000);
    PlayerTextDrawAlignment(playerid, Hbe20kAkwkwakw[playerid][8], 1);
    PlayerTextDrawColor(playerid, Hbe20kAkwkwakw[playerid][8], -65281);
    PlayerTextDrawSetShadow(playerid, Hbe20kAkwkwakw[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, Hbe20kAkwkwakw[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, Hbe20kAkwkwakw[playerid][8], 255);
    PlayerTextDrawFont(playerid, Hbe20kAkwkwakw[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, Hbe20kAkwkwakw[playerid][8], 1);

    Hbe20kAkwkwakw[playerid][9] = CreatePlayerTextDraw(playerid, 313.000, 414.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Hbe20kAkwkwakw[playerid][9], 29.000, 34.000);
    PlayerTextDrawAlignment(playerid, Hbe20kAkwkwakw[playerid][9], 1);
    PlayerTextDrawColor(playerid, Hbe20kAkwkwakw[playerid][9], 255);
    PlayerTextDrawSetShadow(playerid, Hbe20kAkwkwakw[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, Hbe20kAkwkwakw[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, Hbe20kAkwkwakw[playerid][9], 255);
    PlayerTextDrawFont(playerid, Hbe20kAkwkwakw[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, Hbe20kAkwkwakw[playerid][9], 1);

    Hbe20kAkwkwakw[playerid][10] = CreatePlayerTextDraw(playerid, 315.000, 416.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Hbe20kAkwkwakw[playerid][10], 25.000, 30.000);
    PlayerTextDrawAlignment(playerid, Hbe20kAkwkwakw[playerid][10], 1);
    PlayerTextDrawColor(playerid, Hbe20kAkwkwakw[playerid][10], -2686721);
    PlayerTextDrawSetShadow(playerid, Hbe20kAkwkwakw[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, Hbe20kAkwkwakw[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, Hbe20kAkwkwakw[playerid][10], 255);
    PlayerTextDrawFont(playerid, Hbe20kAkwkwakw[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, Hbe20kAkwkwakw[playerid][10], 1);

    Hbe20kAkwkwakw[playerid][11] = CreatePlayerTextDraw(playerid, 323.000, 424.000, "HUD:radar_pizza");
    PlayerTextDrawTextSize(playerid, Hbe20kAkwkwakw[playerid][11], 9.000, 9.000);
    PlayerTextDrawAlignment(playerid, Hbe20kAkwkwakw[playerid][11], 1);
    PlayerTextDrawColor(playerid, Hbe20kAkwkwakw[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, Hbe20kAkwkwakw[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, Hbe20kAkwkwakw[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, Hbe20kAkwkwakw[playerid][11], 255);
    PlayerTextDrawFont(playerid, Hbe20kAkwkwakw[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, Hbe20kAkwkwakw[playerid][11], 1);

    Hbe20kAkwkwakw[playerid][12] = CreatePlayerTextDraw(playerid, 335.000, 413.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Hbe20kAkwkwakw[playerid][12], 31.000, 36.000);
    PlayerTextDrawAlignment(playerid, Hbe20kAkwkwakw[playerid][12], 1);
    PlayerTextDrawColor(playerid, Hbe20kAkwkwakw[playerid][12], 12582911);
    PlayerTextDrawSetShadow(playerid, Hbe20kAkwkwakw[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, Hbe20kAkwkwakw[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, Hbe20kAkwkwakw[playerid][12], 255);
    PlayerTextDrawFont(playerid, Hbe20kAkwkwakw[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, Hbe20kAkwkwakw[playerid][12], 1);

    Hbe20kAkwkwakw[playerid][13] = CreatePlayerTextDraw(playerid, 336.000, 414.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Hbe20kAkwkwakw[playerid][13], 29.000, 34.000);
    PlayerTextDrawAlignment(playerid, Hbe20kAkwkwakw[playerid][13], 1);
    PlayerTextDrawColor(playerid, Hbe20kAkwkwakw[playerid][13], 255);
    PlayerTextDrawSetShadow(playerid, Hbe20kAkwkwakw[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, Hbe20kAkwkwakw[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, Hbe20kAkwkwakw[playerid][13], 255);
    PlayerTextDrawFont(playerid, Hbe20kAkwkwakw[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, Hbe20kAkwkwakw[playerid][13], 1);

    Hbe20kAkwkwakw[playerid][14] = CreatePlayerTextDraw(playerid, 338.000, 416.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Hbe20kAkwkwakw[playerid][14], 25.000, 30.000);
    PlayerTextDrawAlignment(playerid, Hbe20kAkwkwakw[playerid][14], 1);
    PlayerTextDrawColor(playerid, Hbe20kAkwkwakw[playerid][14], 12582911);
    PlayerTextDrawSetShadow(playerid, Hbe20kAkwkwakw[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, Hbe20kAkwkwakw[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, Hbe20kAkwkwakw[playerid][14], 255);
    PlayerTextDrawFont(playerid, Hbe20kAkwkwakw[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, Hbe20kAkwkwakw[playerid][14], 1);

    Hbe20kAkwkwakw[playerid][15] = CreatePlayerTextDraw(playerid, 346.000, 424.000, "HUD:radar_dateDrink");
    PlayerTextDrawTextSize(playerid, Hbe20kAkwkwakw[playerid][15], 10.000, 7.000);
    PlayerTextDrawAlignment(playerid, Hbe20kAkwkwakw[playerid][15], 1);
    PlayerTextDrawColor(playerid, Hbe20kAkwkwakw[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, Hbe20kAkwkwakw[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, Hbe20kAkwkwakw[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, Hbe20kAkwkwakw[playerid][15], 255);
    PlayerTextDrawFont(playerid, Hbe20kAkwkwakw[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, Hbe20kAkwkwakw[playerid][15], 1);

    Hbe20kAkwkwakw[playerid][16] = CreatePlayerTextDraw(playerid, 358.000, 413.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Hbe20kAkwkwakw[playerid][16], 31.000, 36.000);
    PlayerTextDrawAlignment(playerid, Hbe20kAkwkwakw[playerid][16], 1);
    PlayerTextDrawColor(playerid, Hbe20kAkwkwakw[playerid][16], -1962934017);
    PlayerTextDrawSetShadow(playerid, Hbe20kAkwkwakw[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, Hbe20kAkwkwakw[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, Hbe20kAkwkwakw[playerid][16], 255);
    PlayerTextDrawFont(playerid, Hbe20kAkwkwakw[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, Hbe20kAkwkwakw[playerid][16], 1);

    Hbe20kAkwkwakw[playerid][17] = CreatePlayerTextDraw(playerid, 359.000, 414.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Hbe20kAkwkwakw[playerid][17], 29.000, 34.000);
    PlayerTextDrawAlignment(playerid, Hbe20kAkwkwakw[playerid][17], 1);
    PlayerTextDrawColor(playerid, Hbe20kAkwkwakw[playerid][17], 255);
    PlayerTextDrawSetShadow(playerid, Hbe20kAkwkwakw[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, Hbe20kAkwkwakw[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, Hbe20kAkwkwakw[playerid][17], 255);
    PlayerTextDrawFont(playerid, Hbe20kAkwkwakw[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, Hbe20kAkwkwakw[playerid][17], 1);

    Hbe20kAkwkwakw[playerid][18] = CreatePlayerTextDraw(playerid, 361.000, 416.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Hbe20kAkwkwakw[playerid][18], 25.000, 30.000);
    PlayerTextDrawAlignment(playerid, Hbe20kAkwkwakw[playerid][18], 1);
    PlayerTextDrawColor(playerid, Hbe20kAkwkwakw[playerid][18], -1962934017);
    PlayerTextDrawSetShadow(playerid, Hbe20kAkwkwakw[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, Hbe20kAkwkwakw[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, Hbe20kAkwkwakw[playerid][18], 255);
    PlayerTextDrawFont(playerid, Hbe20kAkwkwakw[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, Hbe20kAkwkwakw[playerid][18], 1);

    Hbe20kAkwkwakw[playerid][19] = CreatePlayerTextDraw(playerid, 369.000, 423.000, "HUD:radar_waypoint");
    PlayerTextDrawTextSize(playerid, Hbe20kAkwkwakw[playerid][19], 10.000, 9.000);
    PlayerTextDrawAlignment(playerid, Hbe20kAkwkwakw[playerid][19], 1);
    PlayerTextDrawColor(playerid, Hbe20kAkwkwakw[playerid][19], -1);
    PlayerTextDrawSetShadow(playerid, Hbe20kAkwkwakw[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, Hbe20kAkwkwakw[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, Hbe20kAkwkwakw[playerid][19], 255);
    PlayerTextDrawFont(playerid, Hbe20kAkwkwakw[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, Hbe20kAkwkwakw[playerid][19], 1);
}
