#version 330
      
layout(location = 0) in vec3 a_pos;
layout(location = 2) in vec2 a_uv;
      
out vec2 TexCoords;
     
void main()
{ 
  gl_Position = vec4(a_pos, 1.0);
  TexCoords = a_uv;
}