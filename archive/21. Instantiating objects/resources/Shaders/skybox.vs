#version 330

layout (location=0) in vec3	positions;
layout (location=2) in vec2	texcoords;

uniform mat4      view;           // our view matrix
uniform mat4      projection;     // our projection matrix

// these are in view
out vec2          T;              // coordinates for this fragment within our texture map

void main(void) {
  // load up our values
  vec4 V = vec4(positions, 1.0);
  T = texcoords;
  
  // our on screen position by applying our model-view-projection matrix
  gl_Position = projection * view * V;  
}
