//
//  ImageViewController.swift
//  LandMark Book
//
//  Created by önder güler on 30.05.2019.
//  Copyright © 2019 önder güler. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageLabel: UILabel!
    
    var landmarkName = " "
    var landmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = landmarkImage
        imageLabel.text = landmarkName
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
