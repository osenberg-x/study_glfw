#version 330 core
// λ�ñ���������ֵΪ 0
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aTexCoord;

// ΪƬ����ɫ��ָ��һ�����
// out vec4 vertex_color;
out vec3 our_color;
out vec2 tex_coord;

void main() {
  gl_Position = vec4(aPos, 1.0);
  // ����ɫ
  // vertex_color = vec4(0.5, 0.0, 0.0, 1.0);
  // �� our_color ����Ϊ���ǴӶ�����������õ���������ɫ
  our_color = aColor;
  tex_coord = aTexCoord;
}