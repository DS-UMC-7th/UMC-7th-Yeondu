//
//  TeenipingView.swift
//  week4
//
//  Created by 김건 on 1/15/25.
//

import UIKit

class TeenipingView: UIView {
    let segmentedControl = UISegmentedControl(items: ["티니핑", "not 티니핑"]).then {
        $0.setBackgroundImage(nil, for: .normal, barMetrics: .default)
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
    
    //let teenipingCollectionView = UICollectionView()
    
    private let divideLine = UIView().then {
        $0.backgroundColor = .black
    }
    
    private let emptyLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 24, weight: .medium)
        $0.textColor = .black
        $0.text = "휑~"
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: 컴포넌트 배치
    private func setupView(){
        [segmentedControl,
         divideLine,emptyLabel].forEach{
            addSubview($0)
        }
        
        segmentedControl.snp.makeConstraints{
            $0.top.equalTo(safeAreaLayoutGuide).offset(20)
            $0.centerX.equalToSuperview()
        }
        
        divideLine.snp.makeConstraints{
            $0.top.equalTo(segmentedControl.snp.bottom).offset(20)
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(1)
        }
        
        /*
        teenipingCollectionView.snp.makeConstraints{
            $0.top.equalTo(divideLine.snp.bottom).offset(20)
            $0.horizontalEdges.equalToSuperview().inset(19)
            $0.bottom.equalToSuperview().inset(74)
        }
         */
        
        emptyLabel.snp.makeConstraints{
            $0.top.equalTo(divideLine.snp.bottom).offset(201)
            $0.centerX.equalToSuperview()
        }
    }
}
