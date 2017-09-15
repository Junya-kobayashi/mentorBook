//
//  ViewController.swift
//  mentorBook
//
//  Created by 小林純也 on 2017/09/14.
//  Copyright © 2017年 Junya Kobayashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mentorArray.append(Mentor(name: "はしお", imageName: "hashio.JPG", course: "iPhone"))
        mentorArray.append(Mentor(name: "あぐり", imageName: "aguri.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.JPG", course: "WebS,WebS"))
        
        setUI()
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUI() {
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    @IBAction func mae(){
        index = index - 1
        setUI()
    }
    
    @IBAction func tugi(){
        index = index + 1
        setUI()
    }

}

