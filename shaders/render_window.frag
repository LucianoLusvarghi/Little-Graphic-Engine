#version 330 
      
in vec2 TexCoords;
out vec4 fragColor; 

uniform sampler2D u_texture;

void main()
{ 
  fragColor = pow(texture(u_texture, TexCoords), vec4(1.0f / 2.2f) );
}
