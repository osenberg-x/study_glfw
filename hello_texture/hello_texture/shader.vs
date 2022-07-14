#version 330 core
// 位置变量的属性值为 0
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aTexCoord;

// 为片段着色器指定一个输出
// out vec4 vertex_color;
out vec3 our_color;
out vec2 tex_coord;

void main() {
  gl_Position = vec4(aPos, 1.0);
  // 暗红色
  // vertex_color = vec4(0.5, 0.0, 0.0, 1.0);
  // 将 our_color 设置为我们从顶点数据那里得到的输入颜色
  our_color = aColor;
  tex_coord = aTexCoord;
}