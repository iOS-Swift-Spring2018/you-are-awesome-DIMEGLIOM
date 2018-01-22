//
//  ViewController.swift
//  YOU ARE AWESOME
//
//  Created by Mark on 1/22/18.
//  Copyright © 2018 Mark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var messageLabel: UITextView!
    
    var index = 0
    
    let messages = ["You Are Fantastic!", "You Are Great!", "You Are Amazing!", "When the Genius Bar needs help, they call you!", "You Brighten My Day!", "You Are Da Bomb!", "I can't wait to use your app!"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonDidTapped(_ sender: Any) {
        
        messageLabel.text = messages[index]
        index = index + 1
        
        if (index == messages.count) {
            index = 0
        }
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

