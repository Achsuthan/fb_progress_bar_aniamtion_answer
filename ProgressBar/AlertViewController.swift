//
//  AlertViewController.swift
//  ProgressBar
//
//  Created by Achsuthan Mahendran on 4/21/20.
//  Copyright © 2020 Achsuthan Mahendran. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {
    @IBOutlet weak var btClose: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.btClose.addTarget(self, action: #selector(self.btClose(_:)), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btClose(_: Any){
        self.dismiss(animated: false, completion: nil)
    }

}
