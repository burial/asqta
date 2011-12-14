local timer = 31

CreateFrame('frame'):SetScript('OnUpdate', function(self, delay)
  timer = timer + delay
  if timer > 31 then
    timer = 0

    local _, _, _, worldLatency = GetNetStats()
    SetCVar('MaxSpellStartRecoveryOffset', min(worldLatency, 400))

    return true
  end
end)
