local timer = 30

CreateFrame('frame'):SetScript('OnUpdate', function(self, delay)
  timer = timer + delay
  if timer > 30 then
    timer = 0

    local _, _, _, worldLatency = GetNetStats()
    SetCVar('MaxSpellStartRecoveryOffset', min(worldLatency, 400))

    return true
  end
end)
