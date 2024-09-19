#version 330 core

// Vertex Attributes
layout(location = 0) in vec3 position;
#ifdef COLOR_0_LOC
layout(location = COLOR_0_LOC) in vec4 color_0;
#endif
layout(location = INST_M_LOC) in mat4 inst_m;

// Uniforms
uniform mat4 M;
uniform mat4 V;
uniform mat4 P;

// Outputs
// out vec3 frag_position;

#ifdef COLOR_0_LOC
flat out vec3 color;
#endif


void main()
{
    gl_Position = P * V * M * inst_m * vec4(position, 1);
    // frag_position = vec3(M * inst_m * vec4(position, 1.0));
    color = color_0.rgb;
}
