#version 330 core
      
layout (location = 0) in vec3 a_pos;
layout (location = 1) in vec3 a_normal;     
layout (location = 2) in vec2 u_uv;

uniform mat4 u_m_matrix;      
uniform mat4 u_view_matrix;
uniform mat4 u_projection_matrix;

out vec2 textCoords;
out vec3 fragPos;
out vec3 normal;

void main()
{ 
  vec4 worldPos = u_m_matrix * vec4(a_pos, 1.0);
  fragPos = vec3(worldPos); 
  textCoords = u_uv;
				
  mat3 normalMatrix = transpose(inverse(mat3(u_m_matrix)));
  normal = normalMatrix * a_normal;
  gl_Position = u_projection_matrix * u_view_matrix * worldPos;   
}
