#version 330 core
// λ�ñ���������ֵΪ 0
layout (location = 0) in vec3 aPos;

// ΪƬ����ɫ��ָ��һ�����
out vec4 vertex_color;

void main() {
  gl_Position = vec4(aPos, 1.0);
  // ����ɫ
  vertex_color = vec4(0.5, 0.0, 0.0, 1.0);
}