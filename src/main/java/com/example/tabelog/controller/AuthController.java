package com.example.tabelog.controller;

import jakarta.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.tabelog.entity.User;
import com.example.tabelog.entity.VerificationToken;
import com.example.tabelog.evant.PasswordResetEventPublisher;
import com.example.tabelog.evant.SignupEventPublisher;
import com.example.tabelog.form.PasswordResetForm;
import com.example.tabelog.form.SendPasswordResetMailForm;
import com.example.tabelog.form.SignupForm;
import com.example.tabelog.repository.UserRepository;
import com.example.tabelog.service.UserService;
import com.example.tabelog.service.VerificationTokenService;

@Controller
public class AuthController {
	private final UserRepository userRepository;
	private final UserService userService;
	private final SignupEventPublisher signupEventPublisher;
	private final PasswordResetEventPublisher passwordResetEventPublisher;
	private final VerificationTokenService verificationTokenService;

	public AuthController(UserRepository userRepository, UserService userService,
			SignupEventPublisher signupEventPublisher, PasswordResetEventPublisher passwordResetEventPublisher,
			VerificationTokenService verificationTokenService) {
		this.userRepository = userRepository;
		this.userService = userService;
		this.signupEventPublisher = signupEventPublisher;
		this.passwordResetEventPublisher = passwordResetEventPublisher;
		this.verificationTokenService = verificationTokenService;
	}

	@GetMapping("/login")
	public String login() {
		return "auth/login";
	}

	@GetMapping("/signup")
	public String signup(Model model) {
		model.addAttribute("signupForm", new SignupForm());
		return "auth/signup";
	}

	@PostMapping("/signup")
	public String signup(@ModelAttribute @Validated SignupForm signupForm, BindingResult bindingResult,
			RedirectAttributes redirectAttributes, HttpServletRequest httpServletRequest) {
		// メールアドレスが登録済みであれば、BindingResultオブジェクトにエラー内容を追加する
		if (userService.isEmailRegistered(signupForm.getEmail())) {
			FieldError fieldError = new FieldError(bindingResult.getObjectName(), "email", "すでに登録済のメールアドレスです。");
			bindingResult.addError(fieldError);
		}

		// パスワードとパスワード（確認用）の入力値が一致しなければ、BindingResultオブジェクトにエラー内容を追加する
		if (!userService.isSamePassword(signupForm.getPassword(), signupForm.getPasswordConfirmation())) {
			FieldError fieldError = new FieldError(bindingResult.getObjectName(), "password", "パスワードが一致しません。");
			bindingResult.addError(fieldError);
		}

		if (bindingResult.hasErrors()) {
			return "auth/signup";
		}

		User createdUser = userService.create(signupForm);
		String requestUrl = new String(httpServletRequest.getRequestURL());
		signupEventPublisher.publishSignupEvent(createdUser, requestUrl);
		redirectAttributes.addFlashAttribute("successMessage",
				"ご入力いただいたメールアドレスに認証メールを送信しました。メールに記載されているリンクをクリックし、会員登録を完了してください。");

		return "redirect:/"; //あとで有料会員登録ページへリターンに変更する予定
	}

	@GetMapping("/signup/verify")
	public String verify(@RequestParam(name = "token") String token, Model model) {
		VerificationToken verificationToken = verificationTokenService.getVerificationToken(token);

		if (verificationToken != null) {
			User user = verificationToken.getUser();
			userService.enableUser(user);
			String successMessage = "会員登録が完了しました。";
			model.addAttribute("successMessage", successMessage);
		} else {
			String errorMessage = "トークンが無効です。";
			model.addAttribute("errorMessage", errorMessage);
		}

		return "auth/verify";

	}

	//パスワード再設定メール送信フォーム
	@GetMapping("/signup/send-mail")
	public String passwordResetMail(Model model) {
		model.addAttribute("sendPasswordResetMailForm", new SendPasswordResetMailForm());
		return "auth/send-mail";
	}

	//パスワード再設定メール
	@PostMapping("/signup/send-mail")
	public String sendPasswordResetMail(@ModelAttribute @Validated SendPasswordResetMailForm sendPasswordResetMailForm,
			BindingResult bindingResult, RedirectAttributes redirectAttributes, HttpServletRequest httpServletRequest) {
		// メールアドレスが登録されていなければ、BindingResultオブジェクトにエラー内容を追加する
		if (!userService.isEmailRegistered(sendPasswordResetMailForm.getEmail())) {
			FieldError fieldError = new FieldError(bindingResult.getObjectName(), "email", "このメールアドレスは登録されていません。");
			bindingResult.addError(fieldError);
		}
		if (bindingResult.hasErrors()) {
			return "auth/send-mail";
		}
		User createdUser = userRepository.findByEmail(sendPasswordResetMailForm.getEmail());
		String requestUrl = new String(httpServletRequest.getRequestURL());
		passwordResetEventPublisher.publishSignupEvent(createdUser, requestUrl);
		redirectAttributes.addFlashAttribute("successMessage",
				"ご入力いただいたメールアドレスにパスワード再設定メールを送信しました。メールに記載されているリンクをクリックし、パスワードを再設定してください。");

		return "redirect:/";
	}

	//パスワード再設定フォーム
	@GetMapping("/signup/send-mail/password-reset")
	public String passwordReset(@RequestParam(name = "token") String token, Model model) {
		VerificationToken verificationToken = verificationTokenService.getVerificationToken(token);
		if (verificationToken != null) {
			PasswordResetForm passwordResetForm = new PasswordResetForm();
			passwordResetForm.setUserId(verificationToken.getUser().getId()); 
			model.addAttribute("passwordResetForm", passwordResetForm);
		}else {
			String errorMessage = "トークンが無効です。";
			model.addAttribute("errorMessage", errorMessage);
		}
		return "auth/password-reset";

	}

	//パスワード再設定
	@PostMapping("/password-reset")
	public String passwordUpdate(@ModelAttribute @Validated PasswordResetForm passwordResetForm,
			BindingResult bindingResult,
			RedirectAttributes redirectAttributes) {
		// パスワードとパスワード（確認用）の入力値が一致しなければ、BindingResultオブジェクトにエラー内容を追加する
		if (!userService.isSamePassword(passwordResetForm.getPassword(), passwordResetForm.getPasswordConfirmation())) {
			FieldError fieldError = new FieldError(bindingResult.getObjectName(), "password", "パスワードが一致しません。");
			bindingResult.addError(fieldError);
		}
		if (bindingResult.hasErrors()) {
			return "auth/password-reset";
		}
		
		userService.passwordUpdate(passwordResetForm);
		redirectAttributes.addFlashAttribute("successMessage",
				"パスワードが更新されました。");
		return "redirect:/";

	}

}
