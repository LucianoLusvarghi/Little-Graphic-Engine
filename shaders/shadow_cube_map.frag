#version 330 

in vec4 FragPos;
uniform vec3 lightPos;
//uniform float far_plane; == 25.0f

void main()
{
  float lightDistance = length(FragPos.xyz - lightPos);
    
  // map to [0;1] range by dividing by far_plane
  lightDistance = lightDistance / 25.0f;
    
  // write this as modified depth
  gl_FragDepth = lightDistance;
}
