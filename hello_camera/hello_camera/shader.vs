#version 330 core
// λ�ñ���������ֵΪ 0
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTexCoord;

// ΪƬ����ɫ��ָ��һ�����
out vec2 tex_coord;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main() {
  gl_Position = projection * view * model * vec4(aPos, 1.0);
  tex_coord = vec2(aTexCoord.x, aTexCoord.y);
}