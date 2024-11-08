//
//  MyView.swift
//  kream_r
//
//  Created by 김건 on 11/3/24.
//

import UIKit

class MyView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.addComponents()
        self.setupConstraints() // 제약 조건 추가
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // 컴포넌트 추가
    private func addComponents() {
        self.addSubview(settingButton)
        self.addSubview(cameraButton)
        self.addSubview(profileImageView)
        self.addSubview(userNameLabel)
        self.addSubview(followerLabel)
        self.addSubview(followingLabel)
        self.addSubview(profileManageButton)
        self.addSubview(profileShareButton)
    }
    
    //세팅 버튼
    private let settingButton:UIButton = {
        let button = UIButton(type: .system)
        let iconImage = UIImage(named: "settingButton")
        
        button.setImage(iconImage, for: .normal)
        button.tintColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //카메라 버튼
    private let cameraButton:UIButton = {
        let button = UIButton(type: .system)
        let iconImage = UIImage(named: "cameraButton")
        
        button.setImage(iconImage, for: .normal)
        button.tintColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //프로필 이미지
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(named: "profil_image")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 45
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    //사용자 이름 라벨
    private let userNameLabel: UILabel = {
        let label = UILabel()
            
        label.text = "Seon_IOS"
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
        
    //팔로워 라벨
    private let followerLabel: UILabel = {
        let label = UILabel()
            
        label.text = "팔로워 326"
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
        
    //팔로잉 라벨
    private let followingLabel: UILabel = {
        let label = UILabel()
            
        label.text = "팔로잉 20"
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
        
    //프로필 관리 버튼
     let profileManageButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.setTitle("프로필 관리", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 9)
        button.layer.borderColor = UIColor.systemGray.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
        
    //프로필 공유 버튼
    private let profileShareButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.setTitle("프로필 공유", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.layer.borderColor = UIColor.systemGray.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //레이아웃 설정
    private func setupConstraints() {
        NSLayoutConstraint.activate([
        //세팅 버튼
        settingButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 75),
        settingButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 32.5),
        settingButton.widthAnchor.constraint(equalToConstant: 25),
        settingButton.heightAnchor.constraint(equalToConstant: 25),

        //카메라 버튼
        cameraButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 75),
        cameraButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -33.5),
        cameraButton.widthAnchor.constraint(equalToConstant: 25),
        cameraButton.heightAnchor.constraint(equalToConstant: 25),
        
        //프로필 이미지
        profileImageView.topAnchor.constraint(equalTo: settingButton.bottomAnchor, constant: 26),
        profileImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 32.5),
        profileImageView.widthAnchor.constraint(equalToConstant: 90),
        profileImageView.heightAnchor.constraint(equalToConstant: 90),

        //사용자 이름 라벨
        userNameLabel.topAnchor.constraint(equalTo: profileImageView.topAnchor, constant: 21),
        userNameLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 16),
        
        //팔로워 라벨
        followerLabel.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 6),
        followerLabel.leadingAnchor.constraint(equalTo: userNameLabel.leadingAnchor),
        
        //팔로잉 라벨
        followingLabel.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 6),
        followingLabel.leadingAnchor.constraint(equalTo: followerLabel.trailingAnchor, constant: 8),
        
        //프로필 관리 버튼
        profileManageButton.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 26),
        profileManageButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 32.5),
        profileManageButton.heightAnchor.constraint(equalToConstant: 26),
        
        //프로필 공유 버튼
        profileShareButton.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 26),
        profileShareButton.leadingAnchor.constraint(equalTo: profileManageButton.trailingAnchor, constant: 14),
        profileShareButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -32.5),
        profileShareButton.heightAnchor.constraint(equalToConstant: 26),
        ])
    }
    
}
