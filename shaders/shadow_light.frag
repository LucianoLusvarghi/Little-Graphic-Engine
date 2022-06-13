#version 330 
      
out vec4 fragColor;       
in vec2 TexCoords;
			
uniform sampler2D ut_color;			
uniform sampler2D ut_lights;
uniform vec3 u_ambient;

void main()
{ 
  // retrieve data from gbuffer       
  vec3 color = texture(ut_color, TexCoords).rgb;        
  vec3 light = texture(ut_lights, TexCoords).rgb;
        
  vec3 lighting = color * u_ambient; // hard-coded ambient component
  lighting += light * color;
  fragColor = vec4(lighting, 1.0);
}
