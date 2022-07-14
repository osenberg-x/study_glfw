#version 330 core
// 位置变量的属性值为 0
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTexCoord;

// 为片段着色器指定一个输出
// out vec4 vertex_color;
out vec2 tex_coord;

uniform mat4 transform;

void main() {
  gl_Position = transform * vec4(aPos, 1.0);
  tex_coord = vec2(aTexCoord.x, aTexCoord.y);
}