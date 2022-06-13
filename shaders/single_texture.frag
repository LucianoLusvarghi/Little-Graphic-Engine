#version 330 core

layout (location = 0) out vec4 gAlbedoSpec;
layout (location = 1) out vec3 gNormal;
layout (location = 2) out vec3 gPosition;

in vec2 textCoords;
in vec3 fragPos;
in vec3 normal;

uniform sampler2D u_texture;
			
void main()
{        
	// store the fragment position vector in the first gbuffer texture
	gPosition = fragPos;
	// also store the per-fragment normals into the gbuffer
	gNormal = normalize(normal);
	// and the diffuse per-fragment color
	gAlbedoSpec.rgb = pow(texture(u_texture, textCoords).rgb, vec3(2.2f)) ;
	// store specular intensity in gAlbedoSpec's alpha component
	gAlbedoSpec.a = 1.0f;//texture(texture_specular1, TexCoords).r;
}
