//
//  ViewController.swift
//  Birthday
//
//  Created by Diwakar patel on 21/06/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var bbb: UIImageView!
    
    
    @IBOutlet weak var b2b2: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1.5) {
            self.bbb.alpha = 1.0
            self.b2b2.alpha = 1.0
            self.bbb.alpha = 1.0
        }
    }
    
    @IBAction func buttonCLick(_ sender: Any) {
// Perform animation when the button is clicked
        UIView.animate(withDuration: 0.5, animations: {
          
            self.bbb.alpha = 0.0
        }) { (finished) in
            // Animation completion handler (optional)
            if finished {
                // Change the image of bbb
                self.bbb.image = UIImage(named: "newImage") // Replace with your image name
                // Example animation: fade in bbb with new image
                UIView.animate(withDuration: 0.5) {
                    self.bbb.alpha = 1.0
                }
            }
        }
        
        
        
    }
}
