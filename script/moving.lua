
function Start( GO_ID )

end

function Update(GO_ID, deltaTime)
    transform_MoveRelativeWorld(GO_ID, 0.1, 0.0, 0.0)
    --transform_RotateAngle(GO_ID, 10.0, 0.0, 0.0)
    
    x,y,z = transform_GetPosition(GO_ID)
    
    if x > 20.0 then
    
    transform_SetPosition(GO_ID, 0.0, y, z)
    
    end
      
    
end
