//
//  HucreClassim.swift
//  LandMarkBookApp
//
//  Created by Özcan Özdemir on 5.04.2024.
//

import UIKit

class HucreClassim: UITableViewCell {
    
    let imageViewHucre = UIImageView()
    let labelHucre1 = UILabel()
//    var textFieldHucre = UITextField()

    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        imageViewHucre.frame = CGRect(x: 240, y: 10, width: 130, height: 100)
        
        labelHucre1.frame = CGRect(x: 40, y: 30, width: 120, height: 25)
        labelHucre1.textAlignment = .center
        labelHucre1.font = UIFont(name: "Hoefler Text", size: 20)
        
        
//        textFieldHucre.frame = CGRect(x: 30, y: 60, width: 160, height: 30)
//        textFieldHucre.layer.borderWidth =  0.4
//        textFieldHucre.placeholder = "İsim giriniz : "
//        
//        addSubview(textFieldHucre)
        addSubview(imageViewHucre)
        addSubview(labelHucre1)
    }

}
