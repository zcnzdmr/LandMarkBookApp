//
//  ViewController.swift
//  LandMarkBookApp
//
//  Created by Özcan Özdemir on 5.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var tableView = UITableView()
    var landMarks = [ImagesClass]()
    
    var detaySayfaNesnesi = DetaySayfa()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tableView
        tableView.frame = view.frame
        view.addSubview(tableView)
        tableView.rowHeight = CGFloat(130)
        
        tableView.register(HucreClassim.self, forCellReuseIdentifier: "hucre")
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
        let s1 = ImagesClass(nameOfPlace: "Russia", nameOfImages: "Kremlin")
        let s2 = ImagesClass(nameOfPlace: "Italy", nameOfImages: "Colosseium")
        let s3 = ImagesClass(nameOfPlace: "India", nameOfImages: "TajMahal")
        let s4 = ImagesClass(nameOfPlace: "England", nameOfImages: "StoneHenge")
        let s5 = ImagesClass(nameOfPlace: "China", nameOfImages: "GreatWall")
        let s6 = ImagesClass(nameOfPlace: "Turkey", nameOfImages: "Anitkabir")
        let s7 = ImagesClass(nameOfPlace: "France", nameOfImages: "EiffelTower")
        
        landMarks = [s1,s2,s3,s4,s5,s6,s7]
    }
}


extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landMarks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let city = landMarks[indexPath.row]
        
        let hucre = tableView.dequeueReusableCell(withIdentifier: "hucre", for: indexPath) as! HucreClassim
        
        hucre.imageViewHucre.image = UIImage(named: city.nameOfImages!)
        hucre.labelHucre1.text = city.nameOfPlace
        
        return hucre
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let city = landMarks[indexPath.row]
        performSegue(withIdentifier: "toDetaySayfa", sender: city)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetaySayfa" {
            if let secondViewContoller = segue.destination as? DetaySayfa {
                let mySender = sender as? ImagesClass
                    secondViewContoller.ImagesclassNesnesi = mySender  
            }
        }
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.landMarks.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        
//        if editingStyle == .insert {
//            self.landMarks.append(ImagesClass(nameOfPlace: "Egypt", nameOfImages: "Pyramids"))
//            let indexPatha = IndexPath(row: landMarks.count-1, section: 0)
//            self.tableView.beginUpdates()
//            tableView.insertRows(at: [indexPatha], with: .automatic)
//            self.tableView.endUpdates()
//            
//            view.endEditing(true)
//        }
    }
}

