//
//  MyView.swift
//  kream
//
//  Created by 김건 on 1/9/25.
//

import UIKit
import SnapKit

class MyView: UIView {
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
    //설정 버튼
    public lazy var settingButton: UIButton = {
        let button = UIButton()
        
        button.setImage(UIImage(named: "setting_icon"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    //카메라 버튼
    public lazy var cameraButton: UIButton = {
        let button = UIButton()
        
        button.setImage(UIImage(named:"camera_icon"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    //프로필 이미지
    public lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(named:"profile_image")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    //사용자 아이디 라벨
    public lazy var userIdLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Jeong_iOS"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //팔로잉 라벨
    public lazy var followingLabel: UILabel = {
        let label = UILabel()
        
        label.text = "팔로워 326"
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        
        //텍스트의 일부를 별도로 스타일링할 수 있는 객체
        let attributedLabel = NSMutableAttributedString(string: label.text!)
        let regularFont = UIFont.systemFont(ofSize: 12, weight: .regular)
        attributedLabel.addAttribute(.font, value: regularFont, range: NSRange(location: 0, length: 3))
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //팔로워 라벨
    public lazy var followerLabel: UILabel = {
        let label = UILabel()
        
        label.text = "팔로잉 20"
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        
        //텍스트의 일부를 별도로 스타일링할 수 있는 객체
        let attributedLabel = NSMutableAttributedString(string: label.text!)
        let regularFont = UIFont.systemFont(ofSize: 12, weight: .regular)
        attributedLabel.addAttribute(.font, value: regularFont, range: NSRange(location: 0, length: 3))
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //프로필 관리 버튼
    public lazy var profileSettingButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("프로필 관리", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 9)
        
        button.layer.borderColor = UIColor(red: 213/255, green: 213/255, blue: 213/255,alpha: 1).cgColor
        button.layer.borderWidth = 0.8
        button.layer.cornerRadius = 8
        
        button.addTarget(self, action: #selector(profileSettingButtonTap), for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    //프로필 공유 버튼
    public lazy var profileShareButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("프로필 공유", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 9)
        
        button.layer.borderColor = UIColor(red: 213/255, green: 213/255, blue: 213/255,alpha: 1).cgColor
        button.layer.borderWidth = 0.8
        button.layer.cornerRadius = 8
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    
    // MARK: 컴포넌트 추가
    public func addComponents(){
        self.addSubview(settingButton)
        self.addSubview(cameraButton)
        self.addSubview(profileImageView)
        self.addSubview(userIdLabel)
        self.addSubview(followingLabel)
        self.addSubview(followerLabel)
        self.addSubview(profileSettingButton)
        self.addSubview(profileShareButton)
        
        
        settingButton.snp.makeConstraints{
            $0.top.equalToSuperview().offset(75)
            $0.left.equalToSuperview().offset(32.5)
        }
        
        cameraButton.snp.makeConstraints{
            $0.top.equalToSuperview().offset(75)
            $0.right.equalToSuperview().offset(-33.5)
        }
        
        profileImageView.snp.makeConstraints {
            $0.top.equalTo(cameraButton.snp.bottom).offset(26)
            $0.left.equalToSuperview().offset(32.5)
            $0.width.equalTo(90)
            $0.height.equalTo(90)
        }

        userIdLabel.snp.makeConstraints {
            $0.top.equalTo(cameraButton.snp.bottom).offset(47)
            $0.left.equalTo(profileImageView.snp.right).offset(16)
            $0.height.equalTo(23)
        }
        
        followingLabel.snp.makeConstraints {
            $0.top.equalTo(userIdLabel.snp.bottom).offset(6)
            $0.left.equalTo(profileImageView.snp.right).offset(16)
            $0.height.equalTo(19)
        }
        
        followerLabel.snp.makeConstraints {
            $0.top.equalTo(userIdLabel.snp.bottom).offset(6)
            $0.left.equalTo(followingLabel.snp.right).offset(8)
            $0.height.equalTo(19)
        }
        
        profileSettingButton.snp.makeConstraints{
            $0.top.equalTo(profileImageView.snp.bottom).offset(26)
            $0.left.equalToSuperview().offset(32.5)
            $0.width.equalTo(157)
            $0.height.equalTo(26)
        }
        
        profileShareButton.snp.makeConstraints{
            $0.top.equalTo(profileImageView.snp.bottom).offset(26)
            $0.left.equalTo(profileSettingButton.snp.right).offset(14)
            $0.width.equalTo(157)
            $0.height.equalTo(26)
        }
    }
    
    @objc
    private func profileSettingButtonTap(){
        let profileSettingVC = ProfileSettingViewController()
        delegate?.navigationController?.isNavigationBarHidden = true //기본바 숨김처리
        delegate?.navigationController?.pushViewController(profileSettingVC, animated: true)
    }
}
