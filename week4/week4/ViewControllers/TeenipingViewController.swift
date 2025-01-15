//
//  ViewController.swift
//  week4
//
//  Created by 김건 on 1/15/25.
//

import UIKit

import SnapKit
import Then

class TeenipingViewController: UIViewController {
    private let rootView = TeenipingView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = rootView
    }
    
private func setupAction() {
            rootView.segmentedControl.addTarget(
                self,
                action: #selector(segmentedControlValueChanged(segment:)),
                for: .valueChanged
            )
        }

@objc
private func segmentedControlValueChanged(segment: UISegmentedControl) {
    // TODO: segment 인덱스에 따라 collectionview 표시 여부 결정
    }
}
