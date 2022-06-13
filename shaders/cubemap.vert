#version 330 core

layout (location=0) in vec3 a_pos;

uniform mat4 u_projection_matrix;
uniform mat4 u_v_matrix;

out vec3 texture_coords;

void main()
{
  texture_coords = vec3(-a_pos.xy, a_pos.z);
  vec4 pos = u_projection_matrix * u_v_matrix * vec4(a_pos, 1.0);
  gl_Position = pos.xyww;
}
