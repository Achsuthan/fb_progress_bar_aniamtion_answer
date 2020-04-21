//
//  ViewController.swift
//  ProgressBar
//
//  Created by Achsuthan Mahendran on 4/20/20.
//  Copyright © 2020 Achsuthan Mahendran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var btAnimate: UIButton!
    
    
    var higherValue:Float = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.btAnimate.addTarget(self, action: #selector(self.btAnimate(_:)), for: .touchUpInside)
    }
    
    @IBAction func btAnimate(_: Any){
        let view = self.storyboard?.instantiateViewController(withIdentifier: "AlertViewController") as! AlertViewController
        view.modalPresentationStyle = .overCurrentContext
        self.present(view, animated: false) {
            
        }
        print("Start animate")
        self.higherValue -= 5
        if(self.higherValue > -5){
            let floatValue: Float = Float(self.higherValue/Float(100))
            self.progressBar.setProgress(floatValue, animated: true)
        }
    }
    
    
}

