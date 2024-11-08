//
//  profileManageView.swift
//  kream_r
//
//  Created by 신연주 on 11/3/24.
//
import UIKit

class ProfileManageView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.addComponents()
        self.setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addComponents() {
        self.addSubview(profileImageView)
        self.addSubview(profileLabel)
        self.addSubview(emailLabel)
        self.addSubview(emailTextField)
        self.addSubview(changeEmailButton)
        self.addSubview(passwordLabel)
        self.addSubview(passwordTextField)
        self.addSubview(changePasswordButton)
    }
    
    // 프로필 이미지
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(named: "profile_image")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 45
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    // 프로필 정보 레이블
    private let profileLabel: UILabel = {
        let label = UILabel()
        
        label.text = "프로필 정보"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textAlignment = .center
        
        return label
    }()
    
    // 이메일 레이블
    private let emailLabel: UILabel = {
        let label = UILabel()
        
        label.text = "유저 이메일"
        label.font = UIFont.systemFont(ofSize: 14)
        
        return label
    }()
    
    // 이메일 텍스트 필드
    private let emailTextField: UITextField = {
        let textField = UITextField()
        
        textField.text = "example@naver.com"
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.systemGray4.cgColor
        textField.layer.cornerRadius = 10
        
        return textField
    }()
    
    // 이메일 변경 버튼
    private let changeEmailButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.setTitle("변경", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 6
        
        return button
    }()
    
    // 비밀번호 레이블
    private let passwordLabel: UILabel = {
        let label = UILabel()
        
        label.text = "유저 비밀번호"
        label.font = UIFont.systemFont(ofSize: 14)
        
        return label
    }()
    
    // 비밀번호 텍스트 필드
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        
        textField.text = "****************"
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.systemGray4.cgColor
        textField.layer.cornerRadius = 10
        textField.isSecureTextEntry = true
        
        return textField
    }()
    
    // 비밀번호 변경 버튼
    private let changePasswordButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.setTitle("변경", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 6
        
        return button
    }()
    
    //레이아웃 설정
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            // 프로필 이미지
            profileImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 144),
            profileImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            profileImageView.widthAnchor.constraint(equalToConstant: 90),
            profileImageView.heightAnchor.constraint(equalToConstant: 90),

            // 프로필 레이블
            profileLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 20),
            profileLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 27),

            // 이메일 레이블
            emailLabel.topAnchor.constraint(equalTo: profileLabel.bottomAnchor, constant: 23),
            emailLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 27),

            //이메일 텍스트 필드
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 4),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 27),
            emailTextField.trailingAnchor.constraint(equalTo: changeEmailButton.leadingAnchor, constant: -9),
            emailTextField.heightAnchor.constraint(equalToConstant: 32), // 높이를 32로 설정

            // 이메일 변경 버튼
            changeEmailButton.centerYAnchor.constraint(equalTo: emailTextField.centerYAnchor),
            changeEmailButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -17),
            changeEmailButton.widthAnchor.constraint(equalToConstant: 58),
            changeEmailButton.heightAnchor.constraint(equalToConstant: 32),

            // 비밀번호 레이블
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 23),
            passwordLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 27),

            // 비밀번호 텍스트 필드
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 4),
            passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 27),
            passwordTextField.trailingAnchor.constraint(equalTo: changePasswordButton.leadingAnchor, constant: -9),
            passwordTextField.heightAnchor.constraint(equalToConstant: 32),

            // 비밀번호 변경 버튼
            changePasswordButton.centerYAnchor.constraint(equalTo: passwordTextField.centerYAnchor),
            changePasswordButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -17),
            changePasswordButton.widthAnchor.constraint(equalToConstant: 58),
            changePasswordButton.heightAnchor.constraint(equalToConstant: 32)
        ])
    }
}
