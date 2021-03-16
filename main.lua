IOTR_blackscreen_fix = RegisterMod("TwitchModBlackScreenFix", 1)

-- Parameters for disable shaders
IOTR_blackscreen_fix.shaders = {
  IOTR_Blink = {Time = 0},
  IOTR_ScreenMirror = {Pos = 0},
  IOTR_VHS = {Time = 0},
  IOTR_ColorSides = {Intensity = 0},
  IOTR_Glitch = {Time = 0},
  IOTR_DeepDark = {Intensity = 0},
  IOTR_BrokenLens = {Intensity = 0},
  IOTR_Swirl = {Angle = 0},
  IOTR_Bloody = {Intensity = 0}
  IOTR_Rainbow = {Time = 0}
}


IOTR_blackscreen_fix:AddCallback(ModCallbacks.MC_GET_SHADER_PARAMS, 

  function (some, name)
  
    if (IOTR_blackscreen_fix.shaders[name] == nil) then return end
    
    if shaderAPI then
      shaderAPI(name, IOTR_blackscreen_fix.shaders[name])
    else
      return IOTR_blackscreen_fix.shaders[name]
    end
    
  end
)