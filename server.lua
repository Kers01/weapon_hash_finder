RegisterNetEvent('saveWeaponHashes')
AddEventHandler('saveWeaponHashes', function(weaponHashes)
    local fileContent = ""

    for _, weapon in ipairs(weaponHashes) do
        fileContent = fileContent .. string.format('["%s"] = "%s",\n', weapon.hash, weapon.name)
    end

    SaveResourceFile(GetCurrentResourceName(), "weapon_hashes.txt", fileContent, -1)
    print("^2Weapon hash listesi 'weapon_hashes.txt' dosyasına başarıyla kaydedildi!^0")
end)
