//
//  ViewController.swift
//  LandMark Book
//
//  Created by önder güler on 30.05.2019.
//  Copyright © 2019 önder güler. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource=self
        tableView.delegate = self
        
        landmarkNames.append("Colleceum")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Great Wall")
        
        landmarkImages.append(UIImage(named: "colleseum.jpg")!)
        landmarkImages.append(UIImage(named: "kremlin.jpg")!)
        landmarkImages.append(UIImage(named: "greatwall.jpg")!)
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageVw"{
            let destinationVc = segue.destination as! ImageViewController
            destinationVc.landmarkImage = selectedLandmarkImage
            destinationVc.landmarkName = selectedLandmarkName
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedLandmarkName = landmarkNames[indexPath.row]
        selectedLandmarkImage = landmarkImages[indexPath.row]
        
        performSegue(withIdentifier: "toImageVw", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }


}

