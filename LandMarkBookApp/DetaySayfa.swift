//
//  DetaySayfa.swift
//  LandMarkBookApp
//
//  Created by Özcan Özdemir on 5.04.2024.
//

import UIKit

class DetaySayfa: UIViewController {
    
    var imageViewDetay = UIImageView()
    var labelDetay = UILabel()
    
    var ImagesclassNesnesi : ImagesClass?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
   
        if let x = ImagesclassNesnesi {
            imageViewDetay.image = UIImage(named: x.nameOfImages!)
            labelDetay.text = x.nameOfImages
        }
        
        imageViewDetay.frame = CGRect(x: 40, y: 190, width: (screenWidth-80), height: (screenHeight - 400 ))
//        imageViewDetay.layer.cornerRadius = CGFloat(50)
        view.addSubview(imageViewDetay)
 
        labelDetay.frame = CGRect(x: (screenWidth-200) / 2, y: 710, width: 200, height: 35)
        labelDetay.textAlignment = .center
        labelDetay.font = UIFont(name: "Arial", size: 25)
        view.addSubview(labelDetay)
        
        
    }

}
