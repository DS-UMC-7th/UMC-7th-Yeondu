//
//  SavedViewController.swift
//  kream
//
//  Created by 김건 on 1/9/25.
//

import UIKit

class SavedViewController: UIViewController {
    let data = dummySavedModel.saveDatas
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = savedView
    }
    private lazy var savedView: SavedView = {
        let view = SavedView()
        view.tableView.dataSource = self
        view.tableView.delegate = self
        
        return view
    }()
}
    // MARK: - dataSource, delegate 구현
extension SavedViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SavedCell.identifier, for: indexPath) as? SavedCell else {
            return UITableViewCell()
        }
        
        cell.configure(model: data[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        99
    }
}
