//
//  ViewController.swift
//  demoImageEdit
//
//  Created by Stegowl on 11/26/18.
//  Copyright © 2018 stegowl. All rights reserved.
//

import UIKit
import Sharaku

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var showSharokuButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sharakuButtonTapped(_ sender: Any) {
        let image = UIImage(named: "sample")
        let vc = SHViewController(image: image!)
        vc.delegate = self
        present(vc, animated: true, completion: nil)
    }
}

extension ViewController: SHViewControllerDelegate {
    func shViewControllerImageDidFilter(image: UIImage) {
        imageView.image = image
        showSharokuButton.isHidden = true
    }
    
    func shViewControllerDidCancel() {
    }
}

