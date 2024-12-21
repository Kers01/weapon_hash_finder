Citizen.CreateThread(function()
    local weapons = {
        "WEAPON_P226",                  ------ BU GORDUGUN KISIMA SILAHLARI TEK TEK YAZ
        "WEAPON_DP9",
        "WEAPON_G17",
        "WEAPON_G19",
        "WEAPON_UFKBWG", -- Etkinlik Silahı Browning
        "WEAPON_UFKGL18", -- Etkinlik Silahı
        "WEAPON_GROZA",
        "WEAPON_TOLVECTOR",
        "WEAPON_COMPACTRIFLE", -- Draco
        "WEAPON_MACHINEPISTOL", -- Tec-9
        "WEAPON_MAC10",
        "WEAPON_UZI",

        -- PD
        "WEAPON_UFKPDW", -- Polis Silahı
        "WEAPON_M4", -- Polis M4 ü
        "WEAPON_UFKLTL", -- Beambag
        "WEAPON_STUNGUN"
    }

    local weaponHashes = {}

    for _, weapon in ipairs(weapons) do
        local hash = GetHashKey(weapon)
        table.insert(weaponHashes, {hash = hash, name = weapon})
    end

    TriggerServerEvent('saveWeaponHashes', weaponHashes)
    print("^2Weapon hash listesi sunucuya gönderildi ve kaydediliyor...^0")
end)
