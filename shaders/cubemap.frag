#version 330 core

layout (location = 0) out vec4 gAlbedoSpec;
layout (location = 1) out vec3 gNormal;
layout (location = 2) out vec3 gPosition;

in vec3 texture_coords;

uniform samplerCube u_skybox;

void main()
{
  vec3 normal = vec3(0.0, 0.0, 0.0);
  gNormal = normalize(normal);
  gPosition = vec3(5000.0);

  gAlbedoSpec.rgb = texture(u_skybox, texture_coords).rgb;
  gAlbedoSpec.a = 1.0;
}
