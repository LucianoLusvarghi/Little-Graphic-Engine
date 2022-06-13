#version 330 
      
out vec4 fragColor;       
in vec2 TexCoords;
			
uniform sampler2D   ut_specular;
uniform sampler2D   ut_position;
uniform sampler2D   ut_normal;
uniform samplerCube ut_depth_light;
uniform sampler2D   ut_lastPas;

struct Light {
  vec3 Position;
  vec3 Direction;
  vec3 Color;
  vec3 specular;
  
  float constant;         //To disable = 1 
  float linear;           //To disable = 0 
  float quadratic;        //To disable = 0 
  
};
      
uniform Light lights;
uniform vec3 viewPos;

void main(){ 

  // retrieve data from gbuffer
  vec3 FragPos = texture(ut_position, TexCoords).rgb;
  vec3 Normal = texture(ut_normal, TexCoords).rgb;        
  vec3 Specular = vec3(1.0f);//texture(ut_specular, TexCoords).rgb;
  
  //Common light info 
  vec3 viewDir  = normalize(viewPos - FragPos);
  
  
  
  
  //Basic light info
  vec3 lightDir = normalize(lights.Position - FragPos);
  vec3 color = pow(lights.Color, vec3(2.2f));
  

  //Diffuse
  float diff = max(dot(Normal, lightDir), 0.0);
  vec3 diffuse = color * diff;
  
  //Specular
  vec3 reflectDir = reflect(-lightDir, Normal);
  float spec = pow(max(dot(viewDir, reflectDir), 0.0), 16.0f);
  vec3 specular = lights.specular * spec * Specular;
  
  // attenuation
  float distance = length(lights.Position - FragPos);  
  float attenuation = 1.0 / (lights.constant + lights.linear * distance + lights.quadratic * (distance * distance));
  
  
  diffuse  *= attenuation;
  specular *= attenuation;
  
  //Shadows
  
  vec3 fragToLight = FragPos - lights.Position;
    
  float closestDepth = texture(ut_depth_light, fragToLight).r;
    
  closestDepth *= 25.0f;
    
  float currentDepth = length(fragToLight);
    
  float bias = 0.05; // we use a much larger bias since depth is now in [near_plane, far_plane] range
  float shadow = currentDepth -  bias > closestDepth ? 1.0 : 0.0;        
  
  //Apply shadows and light
  vec3 lighting = (1.0f - shadow) * (diffuse + specular); 
  

  vec3 lastColor = texture(ut_lastPas, TexCoords).rgb;
  
  fragColor = vec4(lastColor + lighting, 1.0);

}