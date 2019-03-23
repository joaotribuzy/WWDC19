//
//  VideoViewController.swift
//  Book_Sources
//
//  Created by João Tribuzy on 22/03/19.
//

import UIKit

class VideoViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let imgListArray :NSMutableArray = []
        
        for countValue in 1...30
        {
            let strImageName : String = "bass\(countValue).png"
            let image  = UIImage(named:strImageName)
            imgListArray.add(image!)
        }
        
        self.imageView.animationImages = (imgListArray as! [UIImage]);
        self.imageView.animationDuration = 1.0
        self.imageView.startAnimating()
    }
    

}
