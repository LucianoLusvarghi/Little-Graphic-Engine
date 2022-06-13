#version 330 core

layout (location=0) out vec4 gAlbedoSpec;
layout (location=1) out vec3 gNormal;
layout (location=2) out vec3 gPosition;

in vec2 textCoords;
in vec3 fragPos;
in vec3 normal;

uniform vec3 u_color;

void main()
{
	gPosition = fragPos;
	gNormal = normalize(normal);
	//vec3 color = vec3(1.0, 0.0, 0.0);
	gAlbedoSpec = vec4(u_color, 1.0);
}
