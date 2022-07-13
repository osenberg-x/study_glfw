#ifndef SHADER_H_
#define SHADER_H_
#pragma once

#include <glad/glad.h>
#include <string>
#include <sstream>
#include <fstream>
#include <iostream>

class Shader {
public:
	unsigned int _id;

	Shader(const std::string &vertex_path, const std::string &fragment_path);
	~Shader() = default;

	void use();

	// uniform
	void set_uniform_bool(const std::string& name, bool value) const {
	  glUniform1i(glGetUniformLocation(_id, name.c_str()), static_cast<bool>(value));
	}

	void set_uniform_int(const std::string& name, int value) const {
	  glUniform1i(glGetUniformLocation(_id, name.c_str()), static_cast<int>(value));
	}

	void set_uniform_float(const std::string& name, float value) const {
		glUniform1f(glGetUniformLocation(_id, name.c_str()), static_cast<float>(value));
	}
};

#endif  // SHADER_H_

