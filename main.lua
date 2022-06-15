gg.setVisible(false)
local a = 1977;
local b = 20;
local c = 0x200000;
local d = 0xD0F41A8;
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
e = {
    lvlWing = 0x68,
    gSpeed = 0xD39A508,
    unEnerg = 0x20F4C,
    unOxygen = 0x20F70,
    positX = 0x1B3C8,
    positY = 0x1B3C8 + 0x4,
    positZ = 0x1B3C8 + 0x8,
    candle = 0xBCDAC88,
    flame = 0xbd437a0,
    aFlowers = 0xB0B2E94,
    qStep = 0x6AB12E8,
    eWings = 0xB7F7DA0
}
gg.clearResults()
j = gg.getRangesList('libBootloader.so')
gg.setValues({{address = j[1].start + 0x11104c4, flags = 16, value = 999999}})
function u()
    local J = {}
    local K = {}
    gg.setRanges(gg.REGION_C_ALLOC)
    nn = gg.getRangesList('[anon:libc_malloc]')
    for L, M in pairs(nn) do
        J[L] = M.start;
        K[L] = M['end']
    end
    return J, K
end
function v(N, O, P, Q)
    function I(R, S)
        local nn = {}
        for L, M in ipairs(N) do nn[L] = M + S end
        return nn
    end
    local nn = {}
    for L = 1, P do nn[L] = I(N, O + (L - 1) * Q) end
    local T = {}
    for U = 1, #nn do
        for L, M in pairs(nn[U]) do
            T[#T + 1] = {}
            T[#T] = M
        end
    end
    return T
end
f, h = u()
g = v(f, d, b, c)
function w(V, W)
    local nn = {}
    for X, M in pairs(V) do
        local J = 0;
        local Y = false;
        for L = 1, 19 do
            nn[L] = {address = M + L - 1, flags = gg.TYPE_BYTE}
        end
        local Z = gg.getValues(nn)
        for L = 1, #Z do
            if Z[L].value ~= 100 then
                break
            else
                for U, M in pairs(Z) do
                    i = M.address;
                    J = J + M.value
                end
                if J ~= W then
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
function x(_, a0, a1)
    for L = 1, #_ do if _[L] < a1 and a0[L] > a1 then return _[L] end end
end
local a2 = i;
local a3 = x(f, h, i)
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
    {address = i + e.positZ, flags = 16, name = 'pos Z'},
    {address = i - e.gSpeed, flags = 16, name = 'game speed'}
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
gg.clearResults()
local nn = {}
local J = {}
gg.searchNumber(1487508559, gg.TYPE_DWORD, false, nil, 0, i)
nn = gg.getResults(gg.getResultCount())
for L, M in ipairs(nn) do J[L] = {address = M.address + 4, flags = 4} end
J = gg.getValues(J)
for L, M in ipairs(J) do
    if M.value == 11 then
        o = M.address + 8;
        break
    end
end
for U, M in ipairs(k) do table.insert(l, M[1]) end
function p(a4, a5, a6)
    local nn = gg.bytes(a6)
    local a7 = {}
    local J;
    if #nn < a5 then
        J = a5 - #nn;
        for L = 1, J do table.insert(nn, 0) end
    end
    for L = 1, a5 do
        table.insert(a7, {
            address = a4 + L - 1,
            flags = gg.TYPE_BYTE,
            value = nn[L]
        })
    end
    gg.setValues(a7)
end
function q()
    local a8;
    r = false;
    local a9 = H(i - e.lvlWing, 4)
    a8 = gg.choice(l)
    if a8 == nil then a8 = 1 end
    n = k[a8][2]
    p(o, 24, n)
    gg.setVisible(false)
    gg.setValues({{address = i - e.lvlWing, flags = 4, value = 0}})
    gg.sleep(100)
    gg.setValues({{address = i - e.lvlWing, flags = 4, value = a9}})
    gg.setSpeed(100)
    gg.sleep(5000)
    gg.setSpeed(1)
    p(o, 24, 'CandleSpace')
    A()
end
function y()
    r = false;
    local aa = i - e.candle;
    local ab = {}
    gg.setVisible(false)
    for L = 1, 709 do
        ab[L] = {
            address = aa - (L - 1) * 0x1c0,
            flags = 16,
            value = 1,
            freeze = true
        }
    end
    if D == false then
        gg.addListItems(ab)
        D = true;
        gg.toast('burn the candles ON')
        return
    else
        gg.removeListItems(ab)
        D = false;
        gg.toast('burn the candles OFF')
    end
    gg.setValues(ab)
end
function H(a4, ac)
    local ad = {}
    local aa;
    ad[1] = {address = a4, flags = ac}
    aa = gg.getValues(ad)
    return tonumber(aa[1].value)
end
function F()
    local ae = {}
    local af, ag, ah;
    af = H(i + e.positX, 16)
    ag = H(i + e.positY, 16)
    ah = H(i + e.positZ, 16)
    return af, ag, ah
end
function E()
    r = false;
    gg.setVisible(false)
    local ai = {}
    local af, ag, ah = i + e.positX, i + e.positY, i + e.positZ;
    local ae, aj, ak = F()
    for L = 1, 709 do
        ai[L] = {
            {address = af - e.flame + (L - 1) * 0x1c0, flags = 16, value = ae},
            {address = ag - e.flame + (L - 1) * 0x1c0, flags = 16, value = aj},
            {address = ah - e.flame + (L - 1) * 0x1c0, flags = 16, value = ak}
        }
        gg.setValues(ai[L])
    end
end
function z()
    r = false;
    local al = i - e.aFlowers;
    local am = {}
    gg.setVisible(false)
    for L = 1, 397 do
        am[L] =
            {address = al - (L - 1) * 8, flags = 16, value = 0, freeze = true}
    end
    if C == false then
        gg.addListItems(am)
        C = true;
        gg.toast('burn the flowers ON')
        return
    else
        gg.removeListItems(am)
        C = false;
        gg.toast('burn the flowers OFF')
    end
end
function A()
    r = false;
    local an = {}
    for L = 1, 12 do
        an[L] = {address = i - e.eWings + 0x120 * (L - 1), flags = 4, value = 4}
    end
    gg.setValues(an)
    gg.sleep(200)
    for L = 1, 12 do
        an[L] = {address = i - e.eWings + 0x120 * (L - 1), flags = 4, value = 8}
    end
    gg.setValues(an)
end
gg.showUiButton()
gg.clearResults()
function B()
    if gg.isVisible(true) and r == false or gg.isClickedUiButton() then
        local ao = gg.choice({
            'burn candles and flowers', 'absorb wings', 'teleport', 'flame'
        })
        r = true;
        if ao == 1 then
            z()
            y()
        end
        if ao == 2 then A() end
        if ao == 3 then q() end
        if ao == 4 then E() end
    end
end
while true do
    B()
    gg.sleep(200)
end
