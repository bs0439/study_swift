//
//  ViewController.swift
//  MyUiKit
//
//  Created by 김범수 on 10/29/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        // Do any additional setup after loading the view.
    }

    @IBAction func didMyButtonTapped(_ sender: Any) {
//        print("Hello leeo!!!")
        myLabel.text = "Hello UIKit"
    }
    
}

    
