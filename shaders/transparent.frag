
#version 330
     
layout (location = 0) out vec4 gAlbedoSpec;
layout (location = 1) out vec3 gNormal;
layout (location = 2) out vec3 gPosition;

in vec2 textCoords;
in vec3 fragPos;
in vec3 normal;

uniform sampler2D u_texture;
uniform float u_factor;
			
void main()
{
	gPosition = fragPos;
	gNormal = normalize(normal);
	gAlbedoSpec.rgb = pow(texture(u_texture, textCoords).rgb, vec3(2.2));
	gAlbedoSpec.a = u_factor;
}
