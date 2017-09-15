//
//  Mentor.swift
//  mentorBook
//
//  Created by 小林純也 on 2017/09/14.
//  Copyright © 2017年 Junya Kobayashi. All rights reserved.
//

import UIKit

class Mentor {
    var name: String!
    var course: String!
    var imageName: String!
    
    init(name: String, imageName: String, course: String){
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    func getImage() -> UIImage{
        return UIImage(named: imageName)!
    }
}
