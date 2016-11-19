//
//  ViewController.swift
//  KRPhotoCompose
//
//  Created by Kyle Ryan on 11/14/2016.
//  Copyright (c) 2016 Kyle Ryan. All rights reserved.
//

import UIKit
import KRPhotoCompose

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let view = KRPhotoComposeView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: 400))
        view.backgroundColor = .green
        self.view.addSubview(view)
    }
}

