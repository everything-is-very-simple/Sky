gg.setVisible(false)
gg.alert(
    'script tested on emulator and game versions \n\nMuMu Player v110.0.0.113(x64) \nSky: Children of the Light v0.17.5(192395)')
local a = 0x1cd8e18;
local b;
local c;
local d;
local e;
local f = {}
local g;
local h;
local i;
local j;
local k;
local l = false;
local m;
local n = {}
local o;
local p;
local q;
local r;
local s;
local t;
local u;
local v;
local w = false;
local x = false;
local y;
local z;
local A;
local B;
local C;
local D;
local E;
local F;
local G;
b = {
    lvlWing = 0x68,
    unEnerg = 0x20F4C,
    unOxygen = 0x20F70,
    positX = 0x1B3C8,
    positY = 0x1B3C8 + 0x4,
    positZ = 0x1B3C8 + 0x8,
    candle = 0xAF3C388,
    flame = 0xAF577A0,
    aFlowers = 0xA2C7AF4,
    sWings = 0xAA0BDA0
}
gg.clearResults()
d = gg.getRangesList('libBootloader.so')
gg.setValues({{address = d[1].start + 0x11104c4, flags = 16, value = 999999}})
gg.setVisible(false)
gg.clearResults()
function F(H, I)
    local J = gg.getRangesList(H)
    return J[I].start
end
function E()
    local K = F('/system/lib64/hw/gralloc.x86.so', 2)
    local L = gg.getValues({{address = K - a, flags = 1}})
    if L[1].value == 100 then
        gg.toast('done')
        return L[1].address
    else
        gg.toast('error')
        os.exit()
    end
end
c = E()
gg.addListItems({
    {address = c - b.lvlWing, flags = 4, name = 'level wing'}, {
        address = c + b.unEnerg,
        flags = 16,
        name = 'energy',
        value = '14',
        freeze = true
    }, {
        address = c + b.unOxygen,
        flags = 16,
        name = 'oxygen',
        value = '1',
        freeze = true
    }, {address = c + b.positX, flags = 16, name = 'pos X'},
    {address = c + b.positY, flags = 16, name = 'pos Y'},
    {address = c + b.positZ, flags = 16, name = 'pos Z'}
})
gg.clearResults()
e = {
    {"[Home] CandleSpace", 'CandleSpace'}, {"[Isle] Dawn", 'Dawn'},
    {"[Isle] DawnCave", 'DawnCave'},
    {"[Trial] Dawn_TrialsWater", 'Dawn_TrialsWater'},
    {"[Trial] Dawn_TrialsEarth", 'Dawn_TrialsEarth'},
    {"[Trial] Dawn_TrialsAir", 'Dawn_TrialsAir'},
    {"[Trial] Dawn_TrialsFire", 'Dawn_TrialsFire'},
    {"[Prairie] Prairie_ButterflyFields", 'Prairie_ButterflyFields'},
    {"[Prairie] Prairie_NestAndKeeper", 'Prairie_NestAndKeeper'},
    {"[Prairie] Prairie_Island", 'Prairie_Island'},
    {"[Prairie] Prairie_Cave", 'Prairie_Cave'},
    {"[Prairie] Prairie_Village", 'Prairie_Village'},
    {"[Prairie] DayHubCave", 'DayHubCave'}, {"[Prairie] DayEnd", 'DayEnd'},
    {"[Forest] Rain", 'Rain'}, {"[Forest] RainForest", 'RainForest'},
    {"[Forest] RainShelter", 'RainShelter'},
    {"[Forest] Rain_Cave", 'Rain_Cave'}, {"[Forest] RainMid", 'RainMid'},
    {"[Forest] RainEnd", 'RainEnd'},
    {"[Forest] Rain_BaseCamp", 'Rain_BaseCamp'}, {"[Forest] Skyway", 'Skyway'},
    {"[Valley] Sunset", 'Sunset'},
    {"[Valley] Sunset_Citadel", 'Sunset_Citadel'},
    {"[Valley] Sunset_FlyRace", 'Sunset_FlyRace'},
    {"[Valley] SunsetRace", 'SunsetRace'}, {"[Valley] SunsetEnd", 'SunsetEnd'},
    {"[Valley] Sunset_YetiPark", 'Sunset_YetiPark'},
    {"[Valley] SunsetVillage", 'SunsetVillage'},
    {"[Valley] SunsetColosseum", 'SunsetColosseum'},
    {"[Valley] SunsetEnd2", 'SunsetEnd2'},
    {"[Valley] Sunset_Theater", 'Sunset_Theater'},
    {"[Valley] SunsetVillage_MusicShop", 'SunsetVillage_MusicShop'},
    {"[Desert] DuskStart", 'DuskStart'}, {"[Desert] Dusk", 'Dusk'},
    {"[Desert] Dusk_Triangle", 'Dusk_Triangle'},
    {"[Desert] Dusk_TriangleEnd", 'Dusk_TriangleEnd'},
    {"[Desert] DuskGraveyard", 'DuskGraveyard'},
    {"[Desert] DuskOasis", 'DuskOasis'},
    {"[Desert] Dusk_CrabField", 'Dusk_CrabField'},
    {"[Desert] DuskMid", 'DuskMid'}, {"[Desert] DuskEnd", 'DuskEnd'},
    {"[Desert] Nintendo_CandleSpace", 'Nintendo_CandleSpace'},
    {"[Library] Night", 'Night'}, {"[Library] Night2", 'Night2'},
    {"[Library] NightArchive", 'NightArchive'},
    {"[Library] Office", 'TGCOffice'},
    {"[Library] Halloween", 'Event_DaysOfMischief'},
    {"[Library] NightEnd", 'NightEnd'},
    {"[Library] NightDesert", 'NightDesert'},
    {"[Library] Night Beach", 'NightDesert_Beach'},
    {"[Library] Jar cave", 'Night_JarCave'},
    {"[Library] Infinite desert", 'Night_InfiniteDesert'},
    {"[Library] Planet", 'NightDesert_Planets'}, {"Eden1", 'StormStart'},
    {"Eden2", 'Storm'}, {"Before eden", 'NightEnd'},
    {"⚠️Eden sacrifice⚠️", 'StormEnd'},
    {"⚠️Eden rebirth1⚠️", 'OrbitMid'},
    {"⚠️Eden rebirth2⚠️", 'OrbitEnd'},
    {"⚠️Heaven⚠️", 'CandleSpaceEnd'}, {"⚠️Credit⚠️", 'Credits'}
}
function C()
    gg.clearResults()
    local M = {}
    local N = {}
    local O = gg.getRangesList('/apex/com.android.art/lib64/libart.so:bss')[1]
                  .start;
    local P = gg.getRangesList('libandroid_runtime.so:bss')[1].start;
    gg.searchNumber(1487508559, gg.TYPE_DWORD, false, nil, O, P)
    M = gg.getResults(gg.getResultCount())
    for Q, R in ipairs(M) do N[Q] = {address = R.address + 4, flags = 4} end
    N = gg.getValues(N)
    for Q, R in ipairs(N) do
        if R.value == 11 then
            i = R.address + 8;
            break
        end
    end
    for S, R in ipairs(e) do table.insert(f, R[1]) end
end
function j(T, U, V)
    local M = gg.bytes(V)
    local W = {}
    local N;
    if #M < U then
        N = U - #M;
        for Q = 1, N do table.insert(M, 0) end
    end
    for Q = 1, U do
        table.insert(W,
                     {address = T + Q - 1, flags = gg.TYPE_BYTE, value = M[Q]})
    end
    gg.setValues(W)
end
function k()
    l = false;
    local X = B(c - b.lvlWing, 4)
    g = gg.choice(f)
    if g == nil then g = 1 end
    h = e[g][2]
    j(i, 24, h)
    gg.setVisible(false)
    gg.setValues({{address = c - b.lvlWing, flags = 4, value = 0}})
    gg.sleep(200)
    gg.setValues({{address = c - b.lvlWing, flags = 4, value = X}})
    gg.sleep(15000)
    j(i, 24, 'CandleSpace')
    gg.sleep(5000)
    u()
end
function s()
    l = false;
    local Y = c - b.candle;
    local Z = {}
    gg.setVisible(false)
    for Q = 1, 606 do
        Z[Q] =
            {
                address = Y + (Q - 1) * 0x1c0,
                flags = 16,
                value = 1,
                freeze = true
            }
    end
    if x == false then
        gg.addListItems(Z)
        x = true;
        gg.toast('burn the candles ON')
        return
    else
        gg.removeListItems(Z)
        x = false;
        gg.toast('burn the candles OFF')
    end
    gg.setValues(Z)
end
function B(T, _)
    local a0 = {}
    local Y;
    a0[1] = {address = T, flags = _}
    Y = gg.getValues(a0)
    return tonumber(Y[1].value)
end
function z()
    local a1 = {}
    local a2, a3, a4;
    a2 = B(c + b.positX, 16)
    a3 = B(c + b.positY, 16)
    a4 = B(c + b.positZ, 16)
    return a2, a3, a4
end
function y()
    l = false;
    gg.setVisible(false)
    local a5 = {}
    local a2, a3, a4 = c + b.positX, c + b.positY, c + b.positZ;
    local a1, a6, a7 = z()
    for Q = 1, 606 do
        a5[Q] = {
            {address = a2 - b.flame + (Q - 1) * 0x1c0, flags = 16, value = a1},
            {address = a3 - b.flame + (Q - 1) * 0x1c0, flags = 16, value = a6},
            {address = a4 - b.flame + (Q - 1) * 0x1c0, flags = 16, value = a7}
        }
        gg.setValues(a5[Q])
    end
end
function t()
    l = false;
    local a8 = c - b.aFlowers;
    local a9 = {}
    gg.setVisible(false)
    for Q = 1, 384 do
        a9[Q] =
            {address = a8 + (Q - 1) * 8, flags = 16, value = 0, freeze = true}
    end
    if w == false then
        gg.addListItems(a9)
        w = true;
        gg.toast('burn the flowers ON')
        return
    else
        gg.removeListItems(a9)
        w = false;
        gg.toast('burn the flowers OFF')
    end
end
function u()
    l = false;
    local aa = {}
    gg.setVisible(false)
    for Q = 1, 12 do
        aa[Q] = {address = c - b.sWings + 0x120 * (Q - 1), flags = 4, value = 4}
    end
    gg.setValues(aa)
    gg.sleep(200)
    for Q = 1, 12 do
        aa[Q] = {address = c - b.sWings + 0x120 * (Q - 1), flags = 4, value = 8}
    end
    gg.setValues(aa)
end
C()
gg.showUiButton()
gg.clearResults()
function v()
    if gg.isVisible(true) and l == false or gg.isClickedUiButton() then
        local ab = gg.choice({
            'burn candles and flowers', 'absorb wings', 'teleport', 'flame'
        })
        l = true;
        if ab == 1 then
            t()
            s()
        end
        if ab == 2 then u() end
        if ab == 3 then k() end
        if ab == 4 then y() end
    end
end
while true do
    v()
    gg.sleep(200)
end
