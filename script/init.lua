


function Start( GO_ID )
	
	Geometry_LoadObj("../data/mesh/primitives/cube.obj", "Cube")
	Geometry_LoadObj("../data/mesh/primitives/sphere.obj", "sphere")
  Geometry_LoadObj("../data/mesh/primitives/capsule.obj", "capsule")
  Geometry_LoadObj("../data/mesh/primitives/cone.obj", "cone")
  Geometry_LoadObj("../data/mesh/primitives/cone_half.obj", "cone_half")
  Geometry_LoadObj("../data/mesh/primitives/cylinder.obj", "cylinder")
  Geometry_LoadObj("../data/mesh/primitives/icosphere.obj", "icosphere")
  Geometry_LoadObj("../data/mesh/primitives/monkey.obj", "monkey")
  Geometry_LoadObj("../data/mesh/primitives/pyramid.obj", "pyramid")
  Geometry_LoadObj("../data/mesh/primitives/pyramid_half.obj", "pyramid_half")
  Geometry_LoadObj("../data/mesh/SM_Road_00.obj", "road")
  Geometry_LoadObj("../data/mesh/PenguinBaseMesh.obj", "Penguin")
  
  --------------------------------------
  
  Archetype_create("Cubes")
  Archetype_addComponent("Cubes", "Geometry")
  Archetype_addComponent("Cubes", "Material")
  Archetype_addComponent("Cubes", "Lua")
  Archetype_finish("Cubes", 150)
  Archetype_EnlaceSystem("Cubes", "Lua_Call")
  Archetype_EnlaceSystem("Cubes", "RenderBasic")
  --------------------------------------
  
  Archetype_create("EmptyNode")
  Archetype_addComponent("EmptyNode", "Lua")
  Archetype_finish("EmptyNode", 10)
  Archetype_EnlaceSystem("EmptyNode", "Lua_Call")
  
  --------------------------------------

  -- new wireframe
  --------------------------------------

  Archetype_create("Spheres")
  Archetype_addComponent("Spheres", "Geometry")
  Archetype_addComponent("Spheres", "Material")
  Archetype_finish("Spheres", 10)
  Archetype_EnlaceSystem("Spheres", "RenderBasic")

  --------------------------------------

  Archetype_create("Wireframe")
  Archetype_addComponent("Wireframe", "Geometry")
  Archetype_addComponent("Wireframe", "Material")
  Archetype_addComponent("Wireframe", "Wireframe")
  Archetype_finish("Wireframe", 10)
  Archetype_EnlaceSystem("Wireframe", "Wireframe_Call")
  Archetype_EnlaceSystem("Wireframe", "RenderBasic")

  -- end new wireframe
  --------------------------------------
  
  Archetype_create("NewMaterial")
  Archetype_addComponent("NewMaterial", "Geometry")
  Archetype_addComponent("NewMaterial", "NewMaterial")
  Archetype_finish("NewMaterial", 10)
  Archetype_EnlaceSystem("NewMaterial", "RenderNewMaterial")

  --------------------------------------

  Archetype_create("CubeMap")
  Archetype_addComponent("CubeMap", "Geometry")
  Archetype_addComponent("CubeMap", "Material")
  Archetype_finish("CubeMap", 1)
  Archetype_EnlaceSystem("CubeMap", "RenderCubeMap")

  --------------------------------------

  Archetype_create("Transparent")
  Archetype_addComponent("Transparent", "Geometry")
  Archetype_addComponent("Transparent", "Transparent")
  Archetype_finish("Transparent", 5)
  Archetype_EnlaceSystem("Transparent", "RenderTransparent")

  --------------------------------------

  Archetype_create("Reflection")
  Archetype_addComponent("Reflection", "Geometry")
  Archetype_addComponent("Reflection", "Reflection")
  Archetype_finish("Reflection", 5)
  Archetype_EnlaceSystem("Reflection", "RenderReflection")

  --------------------------------------
  
  Archetype_create("Basic_Cameras")
  Archetype_addComponent("Basic_Cameras", "Camera")  
  Archetype_finish("Basic_Cameras", 1)
  Archetype_EnlaceSystem("Basic_Cameras", "CameraBind");
  --------------------------------------
  
  Archetype_create("Basic_Lights")
  Archetype_addComponent("Basic_Lights", "Geometry")
  Archetype_addComponent("Basic_Lights", "Material")
  Archetype_addComponent("Basic_Lights", "Light")
  Archetype_finish("Basic_Lights", 15)
  Archetype_EnlaceSystem("Basic_Lights", "LightBind");
  Archetype_EnlaceSystem("Basic_Lights", "RenderBasic");
  --Archetype_EnlaceSystem("Basic_Lights", "Wireframe_Call")

  --------------------------------------
  
  Archetype_create("Lua_Test")
  Archetype_addComponent("Lua_Test", "Geometry")
  Archetype_addComponent("Lua_Test", "Material")
  Archetype_addComponent("Lua_Test", "Lua")
  Archetype_finish("Lua_Test", 10)
  
  Archetype_EnlaceSystem("Lua_Test", "Lua_Call");
  Archetype_EnlaceSystem("Lua_Test", "RenderBasic");
  --------------------------------------
  
  sceneManager_createScene("Test_1")
  sceneManager_ChangeScene("Test_1")

  Scene_SetScript("Test_1", "scene.lua")
  Scene_ReLoad("Test_1")
    
end
