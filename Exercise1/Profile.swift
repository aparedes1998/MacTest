//
//  Profile.swift
//  Exercise1
//
//  Created by Administrador on 7/15/21.
//

import UIKit

// UIImage(name: )

class Profile {
    let name: String
    let description: String
    let image: UIImage
    let banner: UIImage
    let phone: Int?
    
    init(name: String, description: String, image: UIImage, banner: UIImage, phone: Int?){
        self.name = name
        self.description = description
        self.image = image
        self.banner = banner
        self.phone = phone
    }
}
