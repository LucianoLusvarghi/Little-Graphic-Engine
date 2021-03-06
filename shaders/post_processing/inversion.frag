#version 330 
     
out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D u_texture;
			
void main()
{
	FragColor = vec4(vec3(1.0 - texture(u_texture, TexCoords)), 1.0);
}
