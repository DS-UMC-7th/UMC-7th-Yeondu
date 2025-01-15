//
//  LoginView.swift
//  kream
//
//  Created by 김건 on 1/9/25.
//

import UIKit

class LoginView: UIView {
    var delegate: UIViewController?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.addComponents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: UI
    //크림 로고 이미지
    public lazy var logoImage: UIImageView = {
        let logoView = UIImageView()
        
        logoView.image = UIImage(named:"kream_logo")
        logoView.translatesAutoresizingMaskIntoConstraints = false
        
        return logoView
    }()
    
    //이메일 주소 라벨
    public lazy var emailLabel: UILabel = {
        let label = UILabel()
        
        label.text = "이메일 주소"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    //이메일 주소 텍스트 필드
    public lazy var emailTextField: UITextField = {
        let textField = UITextField()
        
        textField.placeholder = "예) kream@kream.co.kr"
        textField.font = UIFont.systemFont(ofSize: 12)
        textField.addLeftPadding()
        
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 162/255, green: 162/255, blue: 162/255, alpha: 1).cgColor
        textField.layer.cornerRadius = CGFloat(15)
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    //비밀번호 라벨
    public lazy var passwordLabel: UILabel = {
        let label = UILabel()
        
        label.text = "비밀번호"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    //비밀번호 텍스트 필드
    public lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        
        textField.placeholder = "비밀번호를 입력해주세요"
        textField.font = UIFont.systemFont(ofSize: 12)
        textField.addLeftPadding()
        
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 162/255, green: 162/255, blue: 162/255, alpha: 1).cgColor
        textField.layer.cornerRadius = CGFloat(15)
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    //로그인 버튼
    public lazy var loginButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("로그인", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.backgroundColor = UIColor(red:217/255,green:217/255, blue:217/255, alpha:1)
        button.layer.cornerRadius = CGFloat(8)
        
        button.addTarget(self, action: #selector(loginButtonTap), for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //카카오 로그인 버튼
    public lazy var kakaoLoginButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("카카오로 로그인", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
    
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red:211/255,green:211/255, blue:211/255, alpha:1).cgColor
        button.layer.cornerRadius = CGFloat(10)
        
        button.setImage(UIImage(named:"kakao_logo"), for: .normal)
        button.imageView?.leftAnchor.constraint(equalTo: button.leftAnchor,constant: 16).isActive = true
        button.imageView?.topAnchor.constraint(equalTo: button.topAnchor, constant: 12).isActive = true
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.imageView?.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    //애플 로그인 버튼
    public lazy var appleLoginButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("Apple로 로그인", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red:211/255,green:211/255,blue:211/255,alpha: 1).cgColor
        button.layer.cornerRadius = CGFloat(10)
        
        button.setImage(UIImage(named:"apple_logo"), for: .normal)
        button.imageView?.leftAnchor.constraint(equalTo: button.leftAnchor, constant: 16).isActive = true
        button.imageView?.topAnchor.constraint(equalTo: button.topAnchor, constant: 10).isActive = true
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.imageView?.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    // MARK: 컴포넌트 추가
    private func addComponents(){
        self.addSubview(logoImage)
        self.addSubview(emailLabel)
        self.addSubview(emailTextField)
        self.addSubview(passwordLabel)
        self.addSubview(passwordTextField)
        self.addSubview(loginButton)
        self.addSubview(kakaoLoginButton)
        self.addSubview(appleLoginButton)
        
        
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: self.topAnchor,constant:126),
            logoImage.leftAnchor.constraint(equalTo: self.leftAnchor,constant:53),
            logoImage.rightAnchor.constraint(equalTo: self.rightAnchor,constant:-53),
            
            emailLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 87),
            emailLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            emailLabel.rightAnchor.constraint(equalTo: self.rightAnchor,constant:-45),
            
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 8),
            emailTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            emailTextField.rightAnchor.constraint(equalTo: self.rightAnchor,constant:-45),
            emailTextField.heightAnchor.constraint(equalToConstant: 34),
            
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 17),
            passwordLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            passwordLabel.rightAnchor.constraint(equalTo: self.rightAnchor,constant:-45),
            
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 8),
            passwordTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            passwordTextField.rightAnchor.constraint(equalTo: self.rightAnchor,constant:-45),
            passwordTextField.heightAnchor.constraint(equalToConstant: 34),
            

            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 17),
            loginButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            loginButton.rightAnchor.constraint(equalTo: self.rightAnchor,constant:-45),
            loginButton.heightAnchor.constraint(equalToConstant: 38),
            
            
            kakaoLoginButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 87),
            kakaoLoginButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 48),
            kakaoLoginButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -48),
            kakaoLoginButton.heightAnchor.constraint(equalToConstant: 40),
            
            appleLoginButton.topAnchor.constraint(equalTo: kakaoLoginButton.bottomAnchor, constant: 22),
            appleLoginButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 48),
            appleLoginButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -48),
            appleLoginButton.heightAnchor.constraint(equalToConstant: 40),

        ])
    }
    
    @objc
    private func loginButtonTap(){
        let mainVC = MainViewController()
        mainVC.modalPresentationStyle = .fullScreen
        delegate?.present(mainVC,animated: true)
    }
}

extension UITextField {
    func addLeftPadding() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = ViewMode.always
    }
}
