
## Functions that run automatically:

**Called when the object is created, with the ID of the Game Object**:
```
  function Start(GO_ID)
  
  end
```

**Called on every frame, with the ID of the Game Object and delta Time in millisecond (16 instead of 0.016)**: 
```
  function Update(GO_ID, deltaTime)
  
  end
```
### Change the Transform of an object

transform_SetPosition( GO_ID, x, y, z)

transform_SetRotationAngle( GO_ID, x, y, z)

transform_SetScale( GO_ID, x, y, z)

transform_MoveRelativeWorld( GO_ID, x, y, z)

transform_MoveRelativeLocal( GO_ID, x, y, z)

transform_RotateAngle(GO_ID, x, y, z)

### Get Transform of an object

x,y,z = transform_GetPosition(GO_ID)

x,y,z = transform_GetRotationAngle(GO_ID)

x,y,z = transform_GetScale(GO_ID)


### Change the Color and/or texture used in a object

material_SetColor(GO_ID, r,g,b)

material_LoadTexture(GO_ID, path, saveName)

material_UseTexture(GO_ID, saveName)

wireframe_SetColor(r,g,b)

wireframe_SetOffset(offset)

### Get the Color of an Object

r,g,b = material_GetColor(GO_ID)


## Set Light settings

light_SetProyectionPerspective(GO_ID, fov, aspect, near, far)

light_SetProyectionOrtogonal(GO_ID, left, right, bottom, top, zNear, zFar)

light_SetColor(GO_ID, r,g,b)

light_SetSpecular(GO_ID, r,g,b)

light_SetCutOff(GO_ID, cutOff)

light_SetOuterCutOff(GO_ID, OuterCutOff)

light_SetConstant(GO_ID, Constant)

light_SetLinear(GO_ID, Linear)

light_SetQuadratic(GO_ID, Quadratic)

light_SetMode(GO_ID, kLightMode, castShadow, width, height, name)

```
  "kLightModes":
  k_directional_light = 0,
  k_spot_light = 1,
  k_point_light = 2
```

light_SetMask(GO_ID, mask)

### Get Light settings

r,g,b = light_GetColor(GO_ID)

r,g,b = light_GetSpecular(GO_ID)

cutOff = light_GetCutOff(GO_ID)

OuterCutOff = light_GetOuterCutOff(GO_ID)

Constant = light_GetConstant(GO_ID)

Linear = light_GetLinear(GO_ID)

Quadratic = light_GetQuadratic(GO_ID)

mask = light_GetMask(GO_ID)

### Change the geometry of an Object

Geometry_LoadAndSetFromObj(GO_ID, dir, saveName)

Geometry_SetGeometryByName(GO_ID, saveName)

Geometry_LoadObj(dir, saveName)

### Change GameObject Name and/or render Mask(binary mask)

GameObjectInfo_SetName( GO_ID, name)

GameObjectInfo_SetMask( GO_ID, mask)

### Get the name and render mask of an GameObject

name = GameObjectInfo_SetName( GO_ID)

mask = GameObjectInfo_SetMask( GO_ID)

## Change Camera settings

camera_setProyectionPerspective(GO_ID, fov, aspect, near, far)

camera_setProyectionOrtogonal(GO_ID, left, right, bottom, top, zNear, zFar)

camera_setCameraMask(GO_ID, mask)

camera_ChangeIsMainCamera(GO_ID, newState)

camera_setBuffer(GO_ID, width, height, bufferName)

### Get Camera state and render mask

mask = camera_getCameraMask(GO_ID)

state = camera_IsMainCamera(GO_ID)


## Scene management

sceneManager_createScene(SceneName)

**Used to set the gameObject creation for a scene, see the example**  
Scene_SetScript(SceneName, file)

sceneManager_ChangeScene(SceneName)

Scene_ReLoad(SceneName)

**To instance an GameObject in a scene, they need a archetype first**  
sceneManager_AddArchetypeToScene(SceneName, archetypeName)


### Destroy a GameObject and set if the "childrens" are destroyed too.
currentScene_DestroyGameObject(GO_ID, RemoveChildrens)

### Change the "Father" of an Object
currentScene_ChangeGameObjetFather(GO_ID, Father_ID, setIndexPosition)

### Instance a GameObject from an Archetype, and set a "father" (For default value = -1)
GO_ID = currentScene_InstanceGO(archetypeName, Father_ID)

## Creation of an Archetype
Archetype_create(archetypeName)


Archetype_addComponent(archetypeName, componentName)  
```
  "Current Components available"
  Geometry
  Material
  Camera
  Light
  Lua
```

### Finish a creation of the archetype
Archetype_finish(archetypeName, count)

### Attach a system to a archetype (the system is executed for every instance of a GameObject based on this archetype) 
Archetype_EnlaceSystem(archetypeName, SystemName)

```
  "Current System available"
  RenderBasic
  CameraBind
  LightBind
  Lua_Call
```

### To attach a LUA script to a GameObject  
GO_setScript(GO_ID, file)
