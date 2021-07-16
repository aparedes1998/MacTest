//
//  ViewController.swift
//  Exercise1
//
//  Created by Administrador on 7/15/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bannerImage: UIImageView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var profileDescription: UILabel!
    @IBOutlet weak var callButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named: "profile")!
        let banner = UIImage(named: "banner")!
        // Do any additional setup after loading the view.
        let person = makeProfile(name: "Luis Suarez", profileImage: image, bannerImage: banner, description: "Jugador del Club atlètico de Madrid", phone: nil)
        profileName.text = person.name
        profileDescription.text = person.description
        profileImage.image = person.image
        bannerImage.image = person.banner
        profileImage.contentMode = UIView.ContentMode.scaleAspectFill
        profileImage.layer.masksToBounds = false
        profileImage.layer.masksToBounds = false
        profileImage.clipsToBounds = true
        profileImage.layer.cornerRadius = profileImage.frame.size.width/2
        if (( person.phone ) != nil)
        {
            callButton.isHidden = false
        }
        
        
        
        
    }
    
    func makeProfile(name: String, profileImage: UIImage, bannerImage: UIImage, description: String, phone: Int?) -> Profile{
        let profile = Profile(name: name, description: description, image: profileImage, banner: bannerImage, phone: phone)
        return profile
    }
    


}

