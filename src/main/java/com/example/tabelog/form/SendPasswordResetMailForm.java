package com.example.tabelog.form;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

import lombok.Data;
@Data
public class SendPasswordResetMailForm {
	
	 @NotBlank(message = "メールアドレスを入力してください。")
	    @Email(message = "メールアドレスは正しい形式で入力してください。")
	    private String email;

}
