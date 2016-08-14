//
//  ViewController.swift
//  SessionApp
//
//  Created by Pavel Balint on 05/08/2016.
//  Copyright © 2016 Pavel Balint. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var welcomeTextField: UITextField!
  @IBOutlet weak var welcomeLabel: UILabel!
  @IBOutlet weak var helloButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func welcomeClick(sender: UIButton) {
    if(welcomeTextField.text!.characters.count > 0){
      welcomeLabel.text = "Hello " + welcomeTextField.text! + "!"
    } else {
      welcomeLabel.text = "Hello!"
    }
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }


}

