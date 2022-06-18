gg.setVisible(false)
gg.alert(
    'script tested on emulator and game versions \n\nMuMu Player v110.0.0.113(x64) \nSky: Children of the Light v0.17.5(192395)')
local a = 0x1cdde18;
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
function G(H, I)
    local J = gg.getRangesList(H)
    return J[I]['end']
end
function E()
    local K = G('/system/lib64/hw/gralloc.x86.so', 2)
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
    gg.searchNumber(1487508559, gg.TYPE_DWORD, false, nil, 0, -1)
    M = gg.getResults(gg.getResultCount())
    for O, P in ipairs(M) do N[O] = {address = P.address + 4, flags = 4} end
    N = gg.getValues(N)
    for O, P in ipairs(N) do
        if P.value == 11 then
            i = P.address + 8;
            break
        end
    end
    for Q, P in ipairs(e) do table.insert(f, P[1]) end
end
function j(R, S, T)
    local M = gg.bytes(T)
    local U = {}
    local N;
    if #M < S then
        N = S - #M;
        for O = 1, N do table.insert(M, 0) end
    end
    for O = 1, S do
        table.insert(U,
                     {address = R + O - 1, flags = gg.TYPE_BYTE, value = M[O]})
    end
    gg.setValues(U)
end
function k()
    l = false;
    local V = B(c - b.lvlWing, 4)
    g = gg.choice(f)
    if g == nil then g = 1 end
    h = e[g][2]
    j(i, 24, h)
    gg.setVisible(false)
    gg.setValues({{address = c - b.lvlWing, flags = 4, value = 0}})
    gg.sleep(200)
    gg.setValues({{address = c - b.lvlWing, flags = 4, value = V}})
    gg.sleep(15000)
    j(i, 24, 'CandleSpace')
    gg.sleep(5000)
    u()
end
function s()
    l = false;
    local W = c - b.candle;
    local X = {}
    gg.setVisible(false)
    for O = 1, 606 do
        X[O] =
            {
                address = W + (O - 1) * 0x1c0,
                flags = 16,
                value = 1,
                freeze = true
            }
    end
    if x == false then
        gg.addListItems(X)
        x = true;
        gg.toast('burn the candles ON')
        return
    else
        gg.removeListItems(X)
        x = false;
        gg.toast('burn the candles OFF')
    end
    gg.setValues(X)
end
function B(R, Y)
    local Z = {}
    local W;
    Z[1] = {address = R, flags = Y}
    W = gg.getValues(Z)
    return tonumber(W[1].value)
end
function z()
    local _ = {}
    local a0, a1, a2;
    a0 = B(c + b.positX, 16)
    a1 = B(c + b.positY, 16)
    a2 = B(c + b.positZ, 16)
    return a0, a1, a2
end
function y()
    l = false;
    gg.setVisible(false)
    local a3 = {}
    local a0, a1, a2 = c + b.positX, c + b.positY, c + b.positZ;
    local _, a4, a5 = z()
    for O = 1, 606 do
        a3[O] = {
            {address = a0 - b.flame + (O - 1) * 0x1c0, flags = 16, value = _},
            {address = a1 - b.flame + (O - 1) * 0x1c0, flags = 16, value = a4},
            {address = a2 - b.flame + (O - 1) * 0x1c0, flags = 16, value = a5}
        }
        gg.setValues(a3[O])
    end
end
function t()
    l = false;
    local a6 = c - b.aFlowers;
    local a7 = {}
    gg.setVisible(false)
    for O = 1, 384 do a7[O] = {address = a6 + (O - 1) * 8, flags = 16} end
    if w == false then
        gg.addListItems(a7)
        w = true;
        gg.toast('burn the flowers ON')
        return
    else
        gg.removeListItems(a7)
        w = false;
        gg.toast('burn the flowers OFF')
    end
end
function u()
    l = false;
    local a8 = {}
    gg.setVisible(false)
    for O = 1, 12 do
        a8[O] = {address = c - b.sWings + 0x120 * (O - 1), flags = 4, value = 4}
    end
    gg.setValues(a8)
    gg.sleep(200)
    for O = 1, 12 do
        a8[O] = {address = c - b.sWings + 0x120 * (O - 1), flags = 4, value = 8}
    end
    gg.setValues(a8)
end
C()
gg.showUiButton()
gg.clearResults()
function v()
    if gg.isVisible(true) and l == false or gg.isClickedUiButton() then
        local a9 = gg.choice({
            'burn candles and flowers', 'absorb wings', 'teleport', 'flame'
        })
        l = true;
        if a9 == 1 then
            t()
            s()
        end
        if a9 == 2 then u() end
        if a9 == 3 then k() end
        if a9 == 4 then y() end
    end
end
while true do
    v()
    gg.sleep(200)
end
