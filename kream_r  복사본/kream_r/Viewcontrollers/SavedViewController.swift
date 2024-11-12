//
//  SavedViewController.swift
//  kream_r
//
//  Created by 김건 on 11/8/24.
//

import UIKit

class SavedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = savedView
    }

    private lazy var savedView: SavedView = {
            let view = SavedView()

            view.tableView.dataSource = self
            view.tableView.dataSource = self

            return view
        }()
    }

extension SavedViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SavedTableViewCell.identifier, for: indexPath) as? SavedTableViewCell else {
            return UITableViewCell()
        }

        cell.configure(model: data[indexPath.row])

        return cell
    }
}
