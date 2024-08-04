package com.example.tabelog.form;

import jakarta.validation.constraints.NotBlank;

import org.hibernate.validator.constraints.Length;

import lombok.Data;

@Data
public class PasswordResetForm {

	private Integer userId;

	@NotBlank(message = "新しいパスワードを入力してください。")
	@Length(min = 8, message = "パスワードは8文字以上で入力してください。")
	private String password;

	@NotBlank(message = "新しいパスワード（確認用）を入力してください。")
	private String passwordConfirmation;

}
