//
//  ViewController.swift
//  YOU ARE AWESOME
//
//  Created by Mark on 1/22/18.
//  Copyright © 2018 Mark. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var messageLabel: UITextView!
    @IBOutlet var imageOutlet: UIImageView!
    var awesomeplayer = AVAudioPlayer()
    
    var index = -1
    var imageIndex = -1
    let imagesCount = 10
    let messages = ["You Are Fantastic!", "You Are Great!", "You Are Amazing!", "When the Genius Bar needs help, they call you!", "You Brighten My Day!", "You Are Da Bomb!", "I can't wait to use your app!, Fabulous? That's You!"]

    override func viewDidLoad() {
        super.viewDidLoad()
        imageOutlet.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func playsound(Soundname: String) {
        
        var soundName = "1"
        if let sound = NSDataAsset(name: soundName) {
            
            do {
                try awesomeplayer = AVAudioPlayer(data: sound.data)
                awesomeplayer.play()
            } catch {
                print("Error: data in \(sound) could not be played.")
            }
            
        } else {
            
            print("ERROR: sound \(soundName) wouldn't play.")
            
        }
        
    }
    
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex = -1
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(maxValue)))
        } while lastNumber == newIndex
        
        return newIndex
    }

    @IBAction func buttonDidTapped(_ sender: Any) {
        
        imageOutlet.isHidden = false
        
        var newIndex = -1
        
         repeat {
            newIndex = Int(arc4random_uniform(UInt32(messages.count)))
            print(String(newIndex))
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        newIndex = -1
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(imagesCount)))
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        imageOutlet.image! = UIImage(named: "\(imageIndex)")!
        
        var soundNumber = Int(arc4random_uniform(UInt32(3)))
        soundNumber = soundNumber + 1
        let soundMaine = String(soundNumber)
        playsound(Soundname: soundMaine)
    
        
//        var rando = Int(arc4random_uniform(UInt32(messages.count)))
//        messageLabel.text = messages[rando]
        
        
//        messageLabel.text = messages[index]
//        index = index + 1
//
//        if (index == messages.count) {
//            index = 0
//        }
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

