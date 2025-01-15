//
//  SavedView.swift
//  kream
//
//  Created by 김건 on 1/10/25.
//

import UIKit

class SavedView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setViews()
        setConstaints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: UI
    //타이틀
    private lazy var title: UILabel = {
        let label = UILabel()

        label.text = "Saved"
        label.font = UIFont.systemFont(ofSize: 28, weight: .semibold)
        label.textColor = .black

        return label
    }()
    
    //전체 개수
    private lazy var count: UILabel = {
        let label = UILabel()

        label.text = "전체 \(dummySavedModel.saveDatas.count)개"
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .black

        return label
    }()
    
    //테이블 뷰
    public lazy var tableView: UITableView = {
        let table = UITableView()

        table.register(SavedCell.self, forCellReuseIdentifier: SavedCell.identifier)
        table.separatorStyle = .singleLine

        return table
    }()
    
    // MARK: 컴포넌트 추가
    private func setViews(){
        self.addSubview(title)
        self.addSubview(count)
        self.addSubview(tableView)
    }
    
    private func setConstaints(){
        title.snp.makeConstraints {
            $0.top.equalToSuperview().offset(61)
            $0.left.equalToSuperview().offset(10)
            $0.height.equalTo(45)
        }

        count.snp.makeConstraints {
            $0.top.equalTo(title.snp.bottom).offset(16)
            $0.left.equalToSuperview().offset(13)
            $0.height.equalTo(22)
        }

        tableView.snp.makeConstraints {
            $0.top.equalTo(count.snp.bottom).offset(12)
            $0.left.right.equalToSuperview()
            $0.bottom.equalTo(safeAreaLayoutGuide)
        }
    }
}
