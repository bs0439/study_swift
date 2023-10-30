//
//  MyViewController.swift
//  MyUiKit
//
//  Created by 김범수 on 10/30/23.
//

import UIKit

class MyViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func didTabButton(_ sender: Any) {
        if let name = nameTextField.text{
            helloLabel.text = "Hello \(name)!"
        }
//        print("Hello BS")
       
    }
    
}
