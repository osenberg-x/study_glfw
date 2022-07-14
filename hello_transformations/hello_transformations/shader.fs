#version 330 core
out vec4 frag_color;

// in vec4 vertex_color;
// uniform vec4 our_color;
// in vec3 our_color;
in vec2 tex_coord;

uniform sampler2D our_texture1;
uniform sampler2D our_texture2;

void main() {
  frag_color = mix(texture(our_texture1, tex_coord), texture(our_texture2, tex_coord), 0.2);
}