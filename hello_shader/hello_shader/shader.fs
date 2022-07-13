#version 330 core
out vec4 frag_color;

// in vec4 vertex_color;
// uniform vec4 our_color;
in vec3 our_color;

void main() {
  // frag_color = vertex_color;
  frag_color = vec4(our_color, 1.0);
}