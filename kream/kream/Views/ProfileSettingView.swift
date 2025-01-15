//
//  ProfileSettingView.swift
//  kream
//
//  Created by 김건 on 1/10/25.
//

import UIKit

class ProfileSettingView: UIView {
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
    //뒤로가기 버튼
    public lazy var backButton: UIButton = {
        let button = UIButton()
        
        button.setImage(UIImage(named:"back_icon"), for: .normal)
        
        button.addTarget(self, action: #selector(backButtonTap), for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //프로필 관리 라벨
    public lazy var profileSettingLabel: UILabel = {
        let label = UILabel()
        
        label.text = "프로필 관리"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //프로필 이미지
    public lazy var profileImage: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(named:"profile_image")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    //프로필 정보 라벨
    public lazy var profileInfoLabel: UILabel = {
        let label = UILabel()
        
        label.text = "프로필 정보"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //이메일 라벨
    public lazy var emailLabel: UILabel = {
        let label = UILabel()
        
        label.text = "유저 이메일"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //이메일 텍스트 필드
    public lazy var emailTextField: UITextField = {
        let textField = UITextField()
        
        textField.addLeftPadding()
        textField.placeholder = "새로운 이메일을 입력해주세요!"
        textField.textColor = .black
        textField.font = UIFont.systemFont(ofSize: 14)
        
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 213/255, green: 213/255, blue: 213/255,alpha: 1).cgColor
        textField.layer.cornerRadius = 10
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    //이메일 확인 버튼
    public lazy var emailButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("변경", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 6
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    //비밀번호 라벨
    public lazy var passwordLabel: UILabel = {
        let label = UILabel()
        
        label.text = "유저 비밀번호"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //비밀번호 텍스트 필드
    public lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        
        textField.addLeftPadding()
        textField.placeholder = "새로운 비밀번호를 입력해주세요!"
        textField.textColor = .black
        textField.font = UIFont.systemFont(ofSize: 14)
        
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 213/255, green: 213/255, blue: 213/255,alpha: 1).cgColor
        textField.layer.cornerRadius = 10
        
        textField.isSecureTextEntry = true//비밀번호 안 보이게
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    //비밀번호 변경 버튼
    public lazy var passwordButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("변경", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 6
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    // MARK: 컴포넌트 추가
    public func addComponents(){
        self.addSubview(backButton)
        self.addSubview(profileSettingLabel)
        self.addSubview(profileImage)
        self.addSubview(profileInfoLabel)
        self.addSubview(emailLabel)
        self.addSubview(emailTextField)
        self.addSubview(emailButton)
        self.addSubview(passwordLabel)
        self.addSubview(passwordTextField)
        self.addSubview(passwordButton)
        
        backButton.snp.makeConstraints{
            $0.top.equalToSuperview().offset(66)
            $0.left.equalToSuperview().offset(27)
            $0.width.equalTo(25)
            $0.height.equalTo(25)
        }
        profileSettingLabel.snp.makeConstraints{
            $0.top.equalToSuperview().offset(66)
            $0.left.equalToSuperview().offset(164)
            $0.width.equalTo(74)
            $0.height.equalTo(26)
        }
        
        profileImage.snp.makeConstraints{
            $0.top.equalTo(profileSettingLabel.snp.bottom).offset(52)
            $0.left.equalToSuperview().offset(151)
            $0.width.equalTo(90)
            $0.height.equalTo(90)
        }
        
        profileInfoLabel.snp.makeConstraints{
            $0.top.equalTo(profileImage.snp.bottom).offset(20)
            $0.left.equalToSuperview().offset(27)
        }
        
        emailLabel.snp.makeConstraints{
            $0.top.equalTo(profileInfoLabel.snp.bottom).offset(23)
            $0.left.equalToSuperview().offset(27)
        }
        
        emailTextField.snp.makeConstraints{
            $0.top.equalTo(emailLabel.snp.bottom).offset(4)
            $0.left.equalToSuperview().offset(27)
            $0.width.equalTo(282)
            $0.height.equalTo(32)
        }
        
        emailButton.snp.makeConstraints{
            $0.top.equalTo(emailLabel.snp.bottom).offset(4)
            $0.left.equalTo(emailTextField.snp.right).offset(9)
            $0.width.equalTo(58)
            $0.height.equalTo(32)
        }
        
        passwordLabel.snp.makeConstraints{
            $0.top.equalTo(emailTextField.snp.bottom).offset(23)
            $0.left.equalToSuperview().offset(27)
        }
        
        passwordTextField.snp.makeConstraints{
            $0.top.equalTo(passwordLabel.snp.bottom).offset(4)
            $0.left.equalToSuperview().offset(27)
            $0.width.equalTo(282)
            $0.height.equalTo(32)
        }
        
        passwordButton.snp.makeConstraints{
            $0.top.equalTo(passwordLabel.snp.bottom).offset(4)
            $0.left.equalTo(passwordTextField.snp.right).offset(9)
            $0.width.equalTo(58)
            $0.height.equalTo(32)
        }
    }
    
    @objc
    private func backButtonTap(){
        delegate?.navigationController?.popViewController(animated: true)
    }
}
