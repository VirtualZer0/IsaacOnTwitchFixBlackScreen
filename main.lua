ITMR_blackscreen_fix = RegisterMod("TwitchModBlackScreenFix", 1)

-- Parameters for disable shaders
ITMR_blackscreen_fix.shaders = {
  ITMR_Blink = {Time = 0},
  ITMR_ScreenMirror = {Pos = 0},
  ITMR_VHS = {Time = 0},
  ITMR_ColorSides = {Intensity = 0},
  ITMR_Glitch = {Time = 0},
  ITMR_DeepDark = {Intensity = 0},
  ITMR_BrokenLens = {Intensity = 0},
  ITMR_Swirl = {Angle = 0},
  ITMR_Bloody = {Intensity = 0}
}


ITMR_blackscreen_fix:AddCallback(ModCallbacks.MC_GET_SHADER_PARAMS, 

  function (some, name)
  
    if (ITMR_blackscreen_fix.shaders[name] == nil) then return end
    
    if shaderAPI then
      shaderAPI(name, ITMR_blackscreen_fix.shaders[name])
    else
      return ITMR_blackscreen_fix.shaders[name]
    end
    
  end
)