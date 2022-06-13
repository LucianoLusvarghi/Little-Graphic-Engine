#version 330 
     
layout (location = 0) out vec4 gAlbedoSpec;
layout (location = 1) out vec3 gNormal;
layout (location = 2) out vec3 gPosition;

in vec3 fragPos;
in vec3 normal;

uniform samplerCube u_skybox;
uniform vec3 camera_pos;
			
void main()
{
	gPosition = fragPos;
	gNormal = normalize(normal);

	vec3 I = normalize(fragPos - camera_pos);
	vec3 R = reflect(I, normalize(normal));
	gAlbedoSpec.rgb = pow(texture(u_skybox, R).rgb, vec3(2.2));
	gAlbedoSpec.a = 1.0;
}
