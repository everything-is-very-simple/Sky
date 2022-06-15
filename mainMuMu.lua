gg.setVisible(false)
gg.alert(
    'script tested on emulator and game versions \n\nMuMu Player v110.0.0.113(x64) \nSky: Children of the Light v0.17.5(192395)')
local a = 1977;
local b = 20;
local c = 0x200000;
local d = 0x20F41e8;
local e;
local f;
local g;
local h;
local i;
local j;
local k;
local l = {}
local m;
local n;
local o;
local p;
local q;
local r = false;
local s;
local t = {}
local u;
local v;
local w;
local x;
local y;
local z;
local A;
local B;
local C = false;
local D = false;
local E;
local F;
local G;
local H;
local I;
local J;
e = {
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
j = gg.getRangesList('libBootloader.so')
gg.setValues({{address = j[1].start + 0x11104c4, flags = 16, value = 999999}})
function u()
    local K = {}
    local L = {}
    local M;
    gg.setRanges(gg.REGION_OTHER)
    M = gg.getRangesList('[anon:scudo:secondary]')
    for N, O in pairs(M) do
        K[N] = O.start;
        L[N] = O['end']
    end
    return K, L
end
function v(P, Q, R, S)
    function J(T, U)
        local M = {}
        for N, O in ipairs(P) do M[N] = O + U end
        return M
    end
    local M = {}
    for N = 1, R do M[N] = J(P, Q + (N - 1) * S) end
    local V = {}
    for W = 1, #M do
        for N, O in pairs(M[W]) do
            V[#V + 1] = {}
            V[#V] = O
        end
    end
    return V
end
f, h = u()
g = v(f, d, b, c)
function w(X, Y)
    local M = {}
    for Z, O in pairs(X) do
        local K = 0;
        local _ = false;
        for N = 1, 19 do
            M[N] = {address = O + N - 1, flags = gg.TYPE_BYTE}
        end
        local a0 = gg.getValues(M)
        for N = 1, #a0 do
            if a0[N].value ~= 100 then
                break
            else
                for W, O in pairs(a0) do
                    i = O.address;
                    K = K + O.value
                end
                if K ~= Y then
                    gg.toast('waiting... ')
                else
                    gg.toast('done')
                    return i - 0x12
                end
            end
        end
    end
end
local i = w(g, a)
function x(a1, a2, a3)
    for N = 1, #a1 do if a1[N] < a3 and a2[N] > a3 then return a1[N] end end
end
local a4 = i;
local a5 = x(f, h, i)
gg.addListItems({
    {address = i - e.lvlWing, flags = 4, name = 'level wing'}, {
        address = i + e.unEnerg,
        flags = 16,
        name = 'energy',
        value = '14',
        freeze = true
    }, {
        address = i + e.unOxygen,
        flags = 16,
        name = 'oxygen',
        value = '1',
        freeze = true
    }, {address = i + e.positX, flags = 16, name = 'pos X'},
    {address = i + e.positY, flags = 16, name = 'pos Y'},
    {address = i + e.positZ, flags = 16, name = 'pos Z'}
})
gg.clearResults()
k = {
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
function I()
    gg.clearResults()
    local M = {}
    local K = {}
    gg.searchNumber(1487508559, gg.TYPE_DWORD, false, nil, 0, -1)
    M = gg.getResults(gg.getResultCount())
    for N, O in ipairs(M) do K[N] = {address = O.address + 4, flags = 4} end
    K = gg.getValues(K)
    for N, O in ipairs(K) do
        if O.value == 11 then
            o = O.address + 8;
            break
        end
    end
    for W, O in ipairs(k) do table.insert(l, O[1]) end
end
function p(a6, a7, a8)
    local M = gg.bytes(a8)
    local a9 = {}
    local K;
    if #M < a7 then
        K = a7 - #M;
        for N = 1, K do table.insert(M, 0) end
    end
    for N = 1, a7 do
        table.insert(a9,
                     {address = a6 + N - 1, flags = gg.TYPE_BYTE, value = M[N]})
    end
    gg.setValues(a9)
end
function q()
    r = false;
    local aa = H(i - e.lvlWing, 4)
    m = gg.choice(l)
    if m == nil then m = 1 end
    n = k[m][2]
    p(o, 24, n)
    gg.setVisible(false)
    gg.setValues({{address = i - e.lvlWing, flags = 4, value = 0}})
    gg.sleep(200)
    gg.setValues({{address = i - e.lvlWing, flags = 4, value = aa}})
    gg.sleep(15000)
    p(o, 24, 'CandleSpace')
    gg.sleep(5000)
    A()
end
function y()
    r = false;
    local ab = i - e.candle;
    local ac = {}
    gg.setVisible(false)
    for N = 1, 606 do
        ac[N] = {
            address = ab + (N - 1) * 0x1c0,
            flags = 16,
            value = 1,
            freeze = true
        }
    end
    if D == false then
        gg.addListItems(ac)
        D = true;
        gg.toast('burn the candles ON')
        return
    else
        gg.removeListItems(ac)
        D = false;
        gg.toast('burn the candles OFF')
    end
    gg.setValues(ac)
end
function H(a6, ad)
    local ae = {}
    local ab;
    ae[1] = {address = a6, flags = ad}
    ab = gg.getValues(ae)
    return tonumber(ab[1].value)
end
function F()
    local af = {}
    local ag, ah, ai;
    ag = H(i + e.positX, 16)
    ah = H(i + e.positY, 16)
    ai = H(i + e.positZ, 16)
    return ag, ah, ai
end
function E()
    r = false;
    gg.setVisible(false)
    local aj = {}
    local ag, ah, ai = i + e.positX, i + e.positY, i + e.positZ;
    local af, ak, al = F()
    for N = 1, 606 do
        aj[N] = {
            {address = ag - e.flame + (N - 1) * 0x1c0, flags = 16, value = af},
            {address = ah - e.flame + (N - 1) * 0x1c0, flags = 16, value = ak},
            {address = ai - e.flame + (N - 1) * 0x1c0, flags = 16, value = al}
        }
        gg.setValues(aj[N])
    end
end
function z()
    r = false;
    local am = i - e.aFlowers;
    local an = {}
    gg.setVisible(false)
    for N = 1, 384 do an[N] = {address = am + (N - 1) * 8, flags = 16} end
    if C == false then
        gg.addListItems(an)
        C = true;
        gg.toast('burn the flowers ON')
        return
    else
        gg.removeListItems(an)
        C = false;
        gg.toast('burn the flowers OFF')
    end
end
function A()
    r = false;
    local ao = {}
    gg.setVisible(false)
    for N = 1, 12 do
        ao[N] = {address = i - e.sWings + 0x120 * (N - 1), flags = 4, value = 4}
    end
    gg.setValues(ao)
    gg.sleep(200)
    for N = 1, 12 do
        ao[N] = {address = i - e.sWings + 0x120 * (N - 1), flags = 4, value = 8}
    end
    gg.setValues(ao)
end
I()
gg.showUiButton()
gg.clearResults()
function B()
    if gg.isVisible(true) and r == false or gg.isClickedUiButton() then
        local ap = gg.choice({
            'burn candles and flowers', 'absorb wings', 'teleport', 'flame'
        })
        r = true;
        if ap == 1 then
            z()
            y()
        end
        if ap == 2 then A() end
        if ap == 3 then q() end
        if ap == 4 then E() end
    end
end
while true do
    B()
    gg.sleep(200)
end
