#version 330 
     
out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D u_texture;
			
void main()
{
	FragColor = texture(u_texture, TexCoords);
	float average = 0.2126 * FragColor.r + 0.7152 * FragColor.g + 0.0722 * FragColor.b;
	FragColor = vec4(average, average, average, 1.0);
}
