//
//  HomeView.swift
//  kream_r
//
//  Created by 신연주 on 11/8/24.
//

import UIKit
import Then

class HomeView: UIView {

    // 검색 텍스트 필드
    private let searchBarTextField = UITextField().then {
        $0.backgroundColor = .systemGray6
        $0.layer.cornerRadius = 12
        $0.clipsToBounds = true
        $0.font = .systemFont(ofSize: 13.5)
        $0.leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 8.0, height: 0.0))
        $0.leftViewMode = .always
        $0.placeholder = "브랜드, 상품, 프로필, 태그 등"
    }

    // 알림 이미지
    private let alertImage = UIImageView().then {
        $0.image = UIImage(named: "icon_alert")
    }

    // 세그먼트
    private let segmentedControl = UISegmentedControl(items: ["추천", "랭킹", "발매정보", "럭셔리", "남성", "여성"]).then {
        $0.setBackgroundImage(UIImage(), for: .normal, barMetrics: .default)
        $0.setBackgroundImage(UIImage(), for: .selected, barMetrics: .default)
        $0.setBackgroundImage(UIImage(), for: .highlighted, barMetrics: .default)
        $0.setDividerImage(UIImage(), forLeftSegmentState: .selected, rightSegmentState: .normal, barMetrics: .default)
        $0.selectedSegmentIndex = 0
        $0.setTitleTextAttributes(
            [
                NSAttributedString.Key.foregroundColor: UIColor.black,
                .font: UIFont.systemFont(ofSize: 16, weight: .light)
            ],
            for: .normal
        )
        $0.setTitleTextAttributes(
            [
                NSAttributedString.Key.foregroundColor: UIColor.black,
                .font: UIFont.systemFont(ofSize: 16, weight: .bold)
            ],
            for: .selected
        )
    }

    // 배너 이미지
    private let bannerImage = UIImageView().then {
        $0.image = UIImage(named: "homeImage")
    }

    // 컬렉션 뷰
    private let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout().then {
        $0.estimatedItemSize = .init(width: 61, height: 81)
        $0.minimumLineSpacing = 9
    }).then {
        $0.backgroundColor = .clear
        $0.isScrollEnabled = false
        $0.register(HomeCollectionViewCell.self, forCellWithReuseIdentifier: HomeCollectionViewCell.identifier)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupView() {
        [
            searchBarTextField,
            alertImage,
            segmentedControl,
            bannerImage,
            collectionView
        ].forEach {
            addSubview($0)
        }

        // 오토레이아웃 설정
        searchBarTextField.snp.makeConstraints {
            $0.top.equalToSuperview().offset(51)
            $0.leading.equalToSuperview().offset(16)
            $0.trailing.equalTo(alertImage.snp.leading).offset(-15) // 수정된 참조
            $0.height.equalTo(40)
        }

        alertImage.snp.makeConstraints {
            $0.centerY.equalTo(searchBarTextField)
            $0.trailing.equalToSuperview().offset(-16)
            $0.width.height.equalTo(24)
        }

        segmentedControl.snp.makeConstraints {
            $0.top.equalTo(searchBarTextField.snp.bottom).offset(10)
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.height.equalTo(40)
        }

        bannerImage.snp.makeConstraints {
            $0.top.equalTo(segmentedControl.snp.bottom).offset(10)
            $0.leading.trailing.equalToSuperview()
        }

        collectionView.snp.makeConstraints {
            $0.top.equalTo(bannerImage.snp.bottom).offset(20)
            $0.horizontalEdges.equalToSuperview().inset(16)
            $0.bottom.equalToSuperview()
        }
    }
}
