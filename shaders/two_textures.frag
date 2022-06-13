#version 330 
     
layout (location = 0) out vec4 gAlbedoSpec;
layout (location = 1) out vec3 gNormal;
layout (location = 2) out vec3 gPosition;

in vec2 textCoords;
in vec3 fragPos;
in vec3 normal;

uniform float u_factor;
uniform sampler2D u_texture_1;
uniform sampler2D u_texture_2;
			
void main()
{        
	gPosition = fragPos;
	gNormal = normalize(normal);

	float factor = 0.5;

	vec3 text0 = pow(texture(u_texture_1, textCoords).rgb, vec3(2.2));
	vec3 text1 = pow(texture(u_texture_2, textCoords).rgb, vec3(2.2));
	gAlbedoSpec.rgb = mix(text0, text1, step(u_factor, textCoords.x));
	gAlbedoSpec.a = 1.0f;
}
