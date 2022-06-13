#version 330

layout(location = 0) in vec3 a_pos;
uniform mat4 u_m_matrix;

void main()
{        
  gl_Position = u_m_matrix * vec4(a_pos, 1.0f);       
}
