//
//  LoginView.swift
//  kream
//
//  Created by 신연주 on 11/2/24.
//
import UIKit

class LoginView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.addComponents()
        self.setupConstraints() // 제약 조건 추가
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.backgroundColor = .white
        self.addComponents()
        self.setupConstraints()
    }

    // 컴포넌트 추가
    private func addComponents() {
        self.addSubview(logoImageView)
        self.addSubview(emailLabel)
        self.addSubview(emailTextField)
        self.addSubview(passwordLabel)
        self.addSubview(passwordTextField)
        self.addSubview(loginButton)
        self.addSubview(kakaoLoginButton)
        self.addSubview(appleLoginButton)
    }

    // 크림 로고
    let logoImageView: UIImageView = {
        let imageView = UIImageView()

        imageView.image = UIImage(named: "kream_logo")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false

        return imageView
    }()

    // 이메일 입력 (텍스트 필드, 레이블)
    private let emailLabel: UILabel = {
        let label = UILabel()
        
        label.text = "이메일 주소"
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let emailTextField: UITextField = {
        let textField = UITextField()
        
        textField.placeholder = "예) kream@kream.co.kr"
        textField.font = UIFont.systemFont(ofSize: 12)
        textField.layer.cornerRadius = 15
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.systemGray4.cgColor
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    // 비밀번호 입력 (텍스트 필드, 레이블)
    private let passwordLabel: UILabel = {
        let label = UILabel()
        
        label.text = "비밀번호"
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let passwordTextField: UITextField = {
        let textField = UITextField()
        
        textField.placeholder = "예) 비밀번호를 입력해 주세요"
        textField.font = UIFont.systemFont(ofSize: 12)
        textField.layer.cornerRadius = 15
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.systemGray4.cgColor
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    // 로그인 버튼
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.setTitle("로그인", for: .normal)
        button.backgroundColor = UIColor.systemGray4
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    // 카카오 로그인 버튼
    private let kakaoLoginButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.setTitle("카카오로 로그인", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 8
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.systemGray4.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    // 애플 로그인 버튼
    private let appleLoginButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.setTitle("Apple로 로그인", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 8
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.systemGray4.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    // 레이아웃 설정
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            // 크림 로고
            logoImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 126),
            logoImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 53),
            logoImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -53),

            // 이메일
            emailLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 87),
            emailLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),

            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 8),
            emailTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            emailTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -45),
            emailTextField.heightAnchor.constraint(equalToConstant: 38),

            // 비밀번호
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 17),
            passwordLabel.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),

            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 8),
            passwordTextField.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 38),

            // 로그인 버튼
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 17),
            loginButton.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 38),

            // 카카오 로그인 버튼
            kakaoLoginButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 87),
            kakaoLoginButton.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            kakaoLoginButton.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            kakaoLoginButton.heightAnchor.constraint(equalToConstant: 38),

            // 애플 로그인 버튼
            appleLoginButton.topAnchor.constraint(equalTo: kakaoLoginButton.bottomAnchor, constant: 22),
            appleLoginButton.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            appleLoginButton.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            appleLoginButton.heightAnchor.constraint(equalToConstant: 38)
        ])
    }
}
