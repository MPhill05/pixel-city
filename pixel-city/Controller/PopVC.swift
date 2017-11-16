//
//  PopVC.swift
//  pixel-city
//
//  Created by Mark Phillips on 11/16/17.
//  Copyright © 2017 Team Nerd. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var popImageView: UIImageView!
    
    var passImage: UIImage!
    
    func initData(forImage image: UIImage) {
        self.passImage = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passImage
        addDoubleTap()
    }
    
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }

}
