
function Start(GO_ID)

end

function Update(GO_ID, deltaTime)

    x,y,z = transform_GetPosition(GO_ID)

    time = time + deltaTime

    x = -5.0 + math.cos(90.0 * time / 100000.0) * 3.0
    y = 0.0 + math.sin(90.0 * time / 100000.0) * 3.0

    --transform_MoveCircular(GO_ID, deltaTime)
    transform_SetPosition(GO_ID, x, y, z)

 end
