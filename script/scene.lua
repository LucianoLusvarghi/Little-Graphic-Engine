


function Start( GO_ID )
	
  sceneManager_AddArchetypeToScene("Test_1", "Cubes")
  sceneManager_AddArchetypeToScene("Test_1", "EmptyNode")

  sceneManager_AddArchetypeToScene("Test_1", "Spheres")
  sceneManager_AddArchetypeToScene("Test_1", "Wireframe")
  sceneManager_AddArchetypeToScene("Test_1", "NewMaterial")
  sceneManager_AddArchetypeToScene("Test_1", "CubeMap")
  sceneManager_AddArchetypeToScene("Test_1", "Transparent")
  sceneManager_AddArchetypeToScene("Test_1", "Reflection")

  sceneManager_AddArchetypeToScene("Test_1", "Basic_Cameras")
  sceneManager_AddArchetypeToScene("Test_1", "Basic_Lights")
  sceneManager_AddArchetypeToScene("Test_1", "Lua_Test")
  
  --[[emptyNode = currentScene_InstanceGO("EmptyNode", -1)
  GameObjectInfo_SetName(emptyNode, "cube matrix 10 x 10")
  GO_setScript(emptyNode, "moving2.lua")
    
	for i=0, 4, 1 do
    for j=0, 4, 1 do
    
      New_GO_ID = currentScene_InstanceGO("Cubes", emptyNode)
  
      transform_SetPosition( New_GO_ID, i * 2.0, j * 2.0, -5.0)
      transform_SetScale(New_GO_ID, 0.75, 0.75, 0.75)
      
      Geometry_SetGeometryByName(New_GO_ID, "Cube")
      
      material_SetMaterial(New_GO_ID, "deferred")
      material_UseTexture(New_GO_ID, "amarillo")

      GO_setScript(New_GO_ID, "moving.lua")
  
    end
  end]]--

  ----------------------------------------------

  Parent = currentScene_InstanceGO("Cubes", -1)
  GameObjectInfo_SetName(Parent, "Parent")

  transform_SetPosition(Parent, -3.0, 2.0, -5.0)
  transform_SetScale(Parent, 0.5, 0.5, 0.5)
  transform_SetRotationAngle(Parent, 0.0, 0.0, 0.0)

  Geometry_SetGeometryByName(Parent, "Cube")
  material_SetMaterial(Parent, "deferred")
  material_SetColor(Parent, 1.0, 0.0, 0.0)
  material_UseTexture(Parent, "amarillo")

  GO_setScript(Parent, "moving2.lua")

  --------------------------------------------

  Child = currentScene_InstanceGO("Cubes", Parent)
  GameObjectInfo_SetName(Child, "Child")

  transform_SetPosition(Child, 0.0, 3.0, 3.0)
  transform_SetScale(Child, 0.5, 0.5, 0.5)
  transform_SetRotationAngle(Child, 0.0, 0.0, 0.0)

  Geometry_SetGeometryByName(Child, "Cube")
  material_SetMaterial(Child, "solid_color")
  material_SetColor(Child, 0.0, 1.0, 1.0)
  material_UseTexture(Child, "amarillo")

  GO_setScript(Child, "circular_move.lua")

  ---------------------------------------------

  New_GO_ID = currentScene_InstanceGO("Cubes", -1)
  GameObjectInfo_SetName(New_GO_ID, "Penguin")

  transform_SetPosition(New_GO_ID, 15.0, 2.0, 5.0)
  transform_SetScale(New_GO_ID, 1.0, 1.0, 1.0)
  transform_SetRotationAngle(New_GO_ID, 0.0, 0.0, 0.0)
  Geometry_SetGeometryByName(New_GO_ID, "Penguin")
  material_SetMaterial(New_GO_ID, "deferred")
  material_SetColor(New_GO_ID, 0.0, 1.0, 1.0)
  material_UseTexture(New_GO_ID, "penguin")
  
  ----------------------------------------------
  
  --[[New_GO_ID = currentScene_InstanceGO("Cubes", -1)  
  GameObjectInfo_SetName(New_GO_ID, "Road")
  
  transform_SetPosition( New_GO_ID,-100.0, -2.0, 100.0)
  transform_SetScale(New_GO_ID, 0.5, 0.5, 0.5)
  transform_SetRotationAngle(New_GO_ID, 0.0, 0.0, 0.0)
  
  Geometry_SetGeometryByName(New_GO_ID, "road")
  
  material_UseTexture(New_GO_ID, "street")--]]
  
  ----------------------------------------------------
  -- new wireframe

  New_GO_ID = currentScene_InstanceGO("Spheres", -1)
  GameObjectInfo_SetName(New_GO_ID, "Road")

  transform_SetPosition(New_GO_ID, -10.0, -2.0, 10.0)
  transform_SetScale(New_GO_ID, 0.1, 0.1, 0.1)
  transform_SetRotationAngle(New_GO_ID, 0.0, 0.0, 0.0)
  Geometry_SetGeometryByName(New_GO_ID, "road")
  material_SetMaterial(New_GO_ID, "deferred")
  material_SetColor(New_GO_ID, 0.0, 1.0, 1.0)
  material_UseTexture(New_GO_ID, "street")

  ----------------------------------------------------

  --[[New_GO_ID = currentScene_InstanceGO("Spheres", -1)
  material_UseTexture(New_GO_ID, "amarillo")
  transform_SetPosition(New_GO_ID, 1.0, 2.0, 1.0)
  transform_SetScale(New_GO_ID, 0.5, 0.5, 0.5)
  transform_SetRotationAngle(New_GO_ID, 0.0, 0.0, 0.0)
  Geometry_SetGeometryByName(New_GO_ID, "sphere")]]--

  New_GO_ID = currentScene_InstanceGO("Wireframe", -1)
  material_SetMaterial(New_GO_ID, "deferred")
  material_UseTexture(New_GO_ID, "amarillo")
  transform_SetPosition(New_GO_ID, 3.0, 2.0, 1.0)
  transform_SetScale(New_GO_ID, 0.5, 0.5, 0.5)
  transform_SetRotationAngle(New_GO_ID, 0.0, 0.0, 0.0)
  Geometry_SetGeometryByName(New_GO_ID, "sphere")

  wireframe_SetColor(New_GO_ID, 1.0, 0.0, 1.0)
  wireframe_SetOffset(New_GO_ID, 0.05)

  ----------------------------------------------------

  --[[New_GO_ID = currentScene_InstanceGO("Spheres", -1)
  material_UseTexture(New_GO_ID, "amarillo")
  transform_SetPosition(New_GO_ID, 3.0, 2.0, -1.0)
  transform_SetScale(New_GO_ID, 0.5, 0.5, 0.5)
  transform_SetRotationAngle(New_GO_ID, 0.0, 0.0, 0.0)
  Geometry_SetGeometryByName(New_GO_ID, "sphere")]]--

  New_GO_ID = currentScene_InstanceGO("Wireframe", -1)
  material_SetMaterial(New_GO_ID, "deferred")
  material_UseTexture(New_GO_ID, "amarillo")
  transform_SetPosition(New_GO_ID, 1.0, 2.0, -1.0)
  transform_SetScale(New_GO_ID, 0.5, 0.5, 0.5)
  transform_SetRotationAngle(New_GO_ID, 0.0, 0.0, 0.0)
  Geometry_SetGeometryByName(New_GO_ID, "sphere")

  wireframe_SetColor(New_GO_ID, 1.0, 1.0, 0.0)
  wireframe_SetOffset(New_GO_ID, 0.25)


  ----------------------------------------------------

  New_GO_ID = currentScene_InstanceGO("NewMaterial", -1)

  transform_SetPosition(New_GO_ID, 2.0, 3.0, -2.0)
  transform_SetScale(New_GO_ID, 1.0, 1.0, 1.0)
  transform_SetRotationAngle(New_GO_ID, 0.0, 0.0, 0.0)

  Geometry_SetGeometryByName(New_GO_ID, "custom_cube")
  newMaterial_SetNewMaterial(New_GO_ID, "two_textures")
  newMaterial_UseTexture1(New_GO_ID, "symbol")
  newMaterial_UseTexture2(New_GO_ID, "face")

  ----------------------------------------------------

  New_GO_ID = currentScene_InstanceGO("NewMaterial", -1)

  transform_SetPosition(New_GO_ID, 4.0, 3.0, -5.0)
  transform_SetScale(New_GO_ID, 1.5, 1.5, 1.5)
  transform_SetRotationAngle(New_GO_ID, 0.0, 0.0, 0.0)

  Geometry_SetGeometryByName(New_GO_ID, "monkey")
  newMaterial_SetNewMaterial(New_GO_ID, "blend_color_texture")
  newMaterial_UseTexture1(New_GO_ID, "stone")

  ----------------------------------------------------

  New_GO_ID = currentScene_InstanceGO("Basic_Lights", -1)
  GameObjectInfo_SetName(New_GO_ID, "directional_1")

  transform_SetPosition(New_GO_ID, 3.0, 15.0, 0.0)
  transform_SetScale(New_GO_ID, 0.5, 0.5, 0.5)
  transform_SetRotationAngle(New_GO_ID, -89.99, 0.0, 0.0)

  light_SetMode(New_GO_ID, 0, true, 1024, 1024, "directional_1")
  light_SetProyectionOrtogonal(New_GO_ID, -10.0, 10.0, -10.0, 10.0, -10.0, 20.0)

  light_SetSpecular(New_GO_ID, 1.0, 1.0, 1.0)
  light_SetColor(New_GO_ID, 1.0, 0.0, 0.0)

  light_SetCutOff(New_GO_ID, 20.0)
  light_SetOuterCutOff(New_GO_ID, 25.0)

  light_SetConstant(New_GO_ID, 1.0)
  light_SetLinear(New_GO_ID, 0.09)
  light_SetQuadratic(New_GO_ID, 0.032)

  light_SetMask(New_GO_ID, 1)

  light_SetCastShadow(New_GO_ID, true)

  Geometry_SetGeometryByName(New_GO_ID, "capsule")
  material_SetMaterial(New_GO_ID, "solid_color")
  material_SetColor(New_GO_ID, 1.0, 0.0, 0.0)
  material_UseTexture(New_GO_ID, "amarillo")
  GameObjectInfo_SetMask(New_GO_ID, 0x02)

  ----------------------------------------------------

  New_GO_ID = currentScene_InstanceGO("Basic_Lights", -1)
  GameObjectInfo_SetName(New_GO_ID, "point_1")

  transform_SetPosition(New_GO_ID, -4.0, 4.0, 0.0)
  transform_SetScale(New_GO_ID, 0.5, 0.5, 0.5)
  transform_SetRotationAngle(New_GO_ID, -89.99, 0.0, 0.0)

  light_SetMode(New_GO_ID, 2, true, 1024, 1024, "point_1")
  light_SetProyectionPerspective(New_GO_ID, 90.0, 1.0, 1.0, 25.0)

  light_SetSpecular(New_GO_ID, 1.0, 1.0, 1.0)
  light_SetColor(New_GO_ID, 0.0, 1.0, 0.0)

  light_SetConstant(New_GO_ID, 0.5)
  light_SetLinear(New_GO_ID, 0.009)
  light_SetQuadratic(New_GO_ID, 0.0032)

  light_SetMask(New_GO_ID, 1)
  light_SetCastShadow(New_GO_ID, true)

  Geometry_SetGeometryByName(New_GO_ID, "icosphere")
  material_SetMaterial(New_GO_ID, "solid_color")
  material_SetColor(New_GO_ID, 0.0, 1.0, 0.0)
  material_UseTexture(New_GO_ID, "amarillo")
  GameObjectInfo_SetMask(New_GO_ID, 0x02)

  -- end new wireframe
  ----------------------------------------------------
    
  --[[New_GO_ID = currentScene_InstanceGO("Cubes", -1)  
    
  transform_SetPosition( New_GO_ID,0.0, -1.0, 0.0)
  transform_SetScale(New_GO_ID, 1.0, 1.0, 1.0)
  transform_SetRotationAngle(New_GO_ID, 0.0, 0.0, 0.0)
  
  Geometry_SetGeometryByName(New_GO_ID, "Cube")
  
  material_UseTexture(New_GO_ID, "amarillo")--]]
  
  ----------------------------------------------------
  
  --[[New_GO_ID = currentScene_InstanceGO("Cubes", -1)  
  GameObjectInfo_SetName(New_GO_ID, "Sphere")
  
  transform_SetPosition( New_GO_ID, 2.0, -1.0, 2.0)
  transform_SetScale(New_GO_ID, 1.0, 1.0, 1.0)
  transform_SetRotationAngle(New_GO_ID, 0.0, 0.0, 0.0)
  
  Geometry_SetGeometryByName(New_GO_ID, "sphere")
  
  material_UseTexture(New_GO_ID, "amarillo")--]]
  
  ----------------------------------------------------
	
  New_GO_ID = currentScene_InstanceGO("Basic_Cameras", -1)  
  GameObjectInfo_SetName(New_GO_ID, "Main_Camera")
  
  transform_SetPosition( New_GO_ID, -2.68, -0.35, 8.84)
  transform_SetScale(New_GO_ID, 1.0, 1.0, 1.0)
  transform_SetRotationAngle(New_GO_ID, 23.0, 210.0, 0.0)
  
  camera_setBuffer(New_GO_ID, 1280, 720, "Main_Camera")
  camera_setProyectionPerspective(New_GO_ID,70, 1280.0 / 720.0, 0.1, 100.0)
  camera_ChangeIsMainCamera(New_GO_ID, true)
  
  ----------------------------------------------------
  --Light
  --[[New_GO_ID = currentScene_InstanceGO("Basic_Lights", -1)  
  GameObjectInfo_SetName(New_GO_ID, "directional_1")
  
  transform_SetPosition( New_GO_ID, 3.0, 15.0, 0.0)
  transform_SetScale(New_GO_ID, 0.5, 0.5, 0.5)
  transform_SetRotationAngle(New_GO_ID, -89.99, 0.0, 0.0)
  
  light_SetMode(New_GO_ID, 0, true, 1024,1024, "directional_1")
  light_SetProyectionOrtogonal(New_GO_ID, -10.0, 10.0, -10.0, 10.0 ,-10.0, 20.0)
  
  light_SetSpecular(New_GO_ID, 1.0, 1.0, 1.0)
  light_SetColor(New_GO_ID, 2.0, 2.0, 2.0)
  
  light_SetCutOff(New_GO_ID, 20.0)
  light_SetOuterCutOff(New_GO_ID, 25.0)
  
  light_SetConstant(New_GO_ID, 1.0)
  light_SetLinear(New_GO_ID, 0.09)
  light_SetQuadratic(New_GO_ID, 0.032)
  
  light_SetMask(New_GO_ID, 1)
  
  Geometry_SetGeometryByName(New_GO_ID, "Cube")
  material_UseTexture(New_GO_ID, "amarillo")
  GameObjectInfo_SetMask(New_GO_ID, 0x02)]]--
  ----------------------------------------------------
  --Light




  New_GO_ID = currentScene_InstanceGO("Basic_Lights", -1)  
  GameObjectInfo_SetName(New_GO_ID, "spot_1")
  
  --transform_SetPosition( New_GO_ID, 0.0, 3.5, 0.0)
  transform_SetPosition( New_GO_ID, 1.0, 6.0, 0.0)
  transform_SetScale(New_GO_ID, 0.5, 0.5, 0.5)
  --transform_SetRotationAngle(New_GO_ID, -89.99, 0.0, 0.0)
  transform_SetRotationAngle(New_GO_ID, -90.0, 0.0, 0.0)

  light_SetMode(New_GO_ID, 1, true, 1024,1024, "spot_1")
  light_SetProyectionPerspective(New_GO_ID, 45.0, 1.0, 0.1, 25.0)
  
  light_SetSpecular(New_GO_ID, 1.0, 1.0, 1.0)
  light_SetColor(New_GO_ID, 0.0, 0.0, 1.0)
    
  light_SetConstant(New_GO_ID, 0.5)
  
  light_SetMask(New_GO_ID, 1)
  light_SetCastShadow(New_GO_ID, true)
  
  Geometry_SetGeometryByName(New_GO_ID, "sphere")
  material_SetMaterial(New_GO_ID, "solid_color")
  material_SetColor(New_GO_ID, 0.0, 0.0, 1.0)
  material_UseTexture(New_GO_ID, "amarillo")
  GameObjectInfo_SetMask(New_GO_ID, 0x02)






  ----------------------------------------------------
  --Light
  --[[New_GO_ID = currentScene_InstanceGO("Basic_Lights", -1)  
  GameObjectInfo_SetName(New_GO_ID, "point_1")
  
  transform_SetPosition( New_GO_ID, -4.0, 4.0, 0.0)
  transform_SetScale(New_GO_ID, 0.5, 0.5, 0.5)
  transform_SetRotationAngle(New_GO_ID, -89.99, 0.0, 0.0)
  
  light_SetMode(New_GO_ID, 2, true, 1024,1024, "point_1")
  light_SetProyectionPerspective(New_GO_ID, 90.0, 1.0, 1.0, 25.0)
  
  light_SetSpecular(New_GO_ID, 1.0, 1.0, 1.0)
  light_SetColor(New_GO_ID, 0.0, 1.0, 0.0)
  
  light_SetConstant(New_GO_ID, 0.5)
  light_SetLinear(New_GO_ID, 0.009)
  light_SetQuadratic(New_GO_ID, 0.0032)
  
  light_SetMask(New_GO_ID, 1)
  
  Geometry_SetGeometryByName(New_GO_ID, "sphere")
  material_UseTexture(New_GO_ID, "amarillo")
  GameObjectInfo_SetMask(New_GO_ID, 0x02)]]--
  ----------------------------------------------------
   --Light
  
   
   
  --[[New_GO_ID = currentScene_InstanceGO("Basic_Lights", -1)  
  GameObjectInfo_SetName(New_GO_ID, "spot_2")
  
  --transform_SetPosition( New_GO_ID, 6.0, 2.0, 2.5)
  transform_SetPosition( New_GO_ID, 3.0, 6.0, 0.0)
  transform_SetScale(New_GO_ID, 0.5, 0.5, 0.5)
  --transform_SetRotationAngle(New_GO_ID, -45.0, 90.0, 0.0)
  transform_SetRotationAngle(New_GO_ID, -90.0, 0.0, 0.0)
  
  light_SetMode(New_GO_ID, 1, true, 1024,1024, "spot_2")
  light_SetProyectionPerspective(New_GO_ID, 35.0, 1.0, 0.1, 25.0)
  
  light_SetSpecular(New_GO_ID, 1.0, 1.0, 1.0)
  light_SetColor(New_GO_ID, 0.0, 0.0, 1.0)
    
  light_SetConstant(New_GO_ID, 0.5)
  
  
  light_SetMask(New_GO_ID, 1)
  
  Geometry_SetGeometryByName(New_GO_ID, "Cube")
  material_UseTexture(New_GO_ID, "amarillo")
  GameObjectInfo_SetMask(New_GO_ID, 0x02)--]]





  ----------------------------------------------------
  
   --LUA
  New_GO_ID = currentScene_InstanceGO("Lua_Test", -1)  
    
  transform_SetPosition( New_GO_ID, 0.0, 1.0, 1.0)
  transform_SetScale(New_GO_ID, 1.0, 1.0, 1.0)
  transform_SetRotationAngle(New_GO_ID, 0.0, 0.0, 0.0)
  
  Geometry_SetGeometryByName(New_GO_ID, "cone_half")
  material_SetMaterial(New_GO_ID, "deferred")
  material_UseTexture(New_GO_ID, "face")
  
  GO_setScript(New_GO_ID, "moving.lua")
  ----------------------------------------------------
  
   --LUA
  New_GO_ID = currentScene_InstanceGO("Lua_Test", -1)  
    
  transform_SetPosition( New_GO_ID, 3.0, 10.0, 1.0)
  transform_SetScale(New_GO_ID, 1.0,1.0,1.0)
  transform_SetRotationAngle(New_GO_ID, 0.0, 0.0, 0.0)
  
    
  Geometry_SetGeometryByName(New_GO_ID, "cone")
  material_SetMaterial(New_GO_ID, "deferred")
  material_UseTexture(New_GO_ID, "amarillo")
  
  GO_setScript(New_GO_ID, "circular_move.lua")
  ----------------------------------------------------


  -- CubeMap
  ----------------------------------------------------

  New_GO_ID = currentScene_InstanceGO("CubeMap", -1)

  transform_SetPosition(New_GO_ID, 0.0, 0.0, 0.0)
  transform_SetScale(New_GO_ID, 1.0, 1.0, 1.0)
  transform_SetRotationAngle(New_GO_ID, 0.0, 0.0, 0.0)

  Geometry_SetGeometryByName(New_GO_ID, "CubeMap")
  material_SetMaterial(New_GO_ID, "CubeMap")
  material_UseTexture(New_GO_ID, "Yokohama_CubeMap")

  ----------------------------------------------------


  -- Transparent
  ----------------------------------------------------

  New_GO_ID = currentScene_InstanceGO("Transparent", -1)

  transform_SetPosition(New_GO_ID, 1.0, 2.0, 3.0)
  transform_SetScale(New_GO_ID, 1.0, 1.0, 1.0)
  transform_SetRotationAngle(New_GO_ID, 0.0, 0.0, 0.0)

  Geometry_SetGeometryByName(New_GO_ID, "custom_cube")
  transparent_SetMaterial(New_GO_ID, "transparent")
  transparent_UseTexture(New_GO_ID, "transparent_window")

  ----------------------------------------------------

  New_GO_ID = currentScene_InstanceGO("Transparent", -1)

  transform_SetPosition(New_GO_ID, 3.0, 0.0, 1.0)
  transform_SetScale(New_GO_ID, 1.0, 1.0, 1.0)
  transform_SetRotationAngle(New_GO_ID, 0.0, 0.0, 0.0)

  Geometry_SetGeometryByName(New_GO_ID, "pyramid")
  transparent_SetMaterial(New_GO_ID, "transparent")
  --transparent_UseTexture(New_GO_ID, "amarillo")

  ----------------------------------------------------

  -- Reflection
  ----------------------------------------------------

  New_GO_ID = currentScene_InstanceGO("Reflection", -1)

  transform_SetPosition(New_GO_ID, 7.0, 4.0, 6.0)
  transform_SetScale(New_GO_ID, 1.0, 1.0, 1.0)
  transform_SetRotationAngle(New_GO_ID, 0.0, 0.0, 0.0)

  Geometry_SetGeometryByName(New_GO_ID, "monkey")
  reflection_SetMaterial(New_GO_ID, "reflection")
  reflection_UseTexture(New_GO_ID, "Yokohama_CubeMap")

  ----------------------------------------------------
  
end
