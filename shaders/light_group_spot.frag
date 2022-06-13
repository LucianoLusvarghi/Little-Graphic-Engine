#version 330 
     
out vec4 fragColor;       
in vec2 TexCoords;

uniform sampler2D ut_specular;
uniform sampler2D ut_position;
uniform sampler2D ut_normal;
uniform sampler2D ut_depth_light;
uniform sampler2D ut_lastPas;

struct Light {
  vec3 Position;
  vec3 Direction;
  vec3 Color;
  vec3 specular;

  float cutOff;           // To disable = 0.0002
  float outerCutOff;      // To disable = 0.0001

  float constant;         //To disable = 1
  float linear;           //To disable = 0
  float quadratic;        //To disable = 0

};
  

uniform Light lights;
uniform vec3 viewPos;
uniform mat4 u_Light_VP;

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
  
  //Attenuation
  float distance_ = length(lights.Position - FragPos);  
  float attenuation = 1.0 / (lights.constant + lights.linear * distance_ + lights.quadratic * (distance_ * distance_));
  
  //Intensity
  float theta = dot(lightDir, normalize(-lights.Direction));
  float epsilon = lights.cutOff - lights.outerCutOff;
  float intensity = clamp((theta - lights.outerCutOff) / epsilon, 0.0, 1.0);
  
  diffuse  *= attenuation * intensity;
  specular *= attenuation * intensity;
  
  
  //Shadows
  vec4 cliping = u_Light_VP * vec4(FragPos, 1.0f);                    
  
  cliping = cliping / cliping.w;

  float checkShadowCliping = 1.0f;
  if( abs(cliping.x) > 1.0f )
	  checkShadowCliping = 0.0f;
	if( abs(cliping.y) > 1.0f )
		checkShadowCliping = 0.0f;
	if( cliping.z > 1.0f || cliping.z < 0.0f)
		checkShadowCliping = 0.0f;

  cliping = (cliping * 0.5f) + 0.5f;
  float lightDepth = texture(ut_depth_light, cliping.xy).r;
  float currentDepth = cliping.z;					

  float shadow = checkShadowCliping * currentDepth - 0.005f > lightDepth ? 1.0f : 0.0f;

  //Apply shadows and light
  vec3 lighting = (1.0f - shadow) * (diffuse + specular);   
  
  vec3 lastColor = texture(ut_lastPas, TexCoords).rgb;
  
  fragColor = vec4(lastColor + lighting, 1.0);

}