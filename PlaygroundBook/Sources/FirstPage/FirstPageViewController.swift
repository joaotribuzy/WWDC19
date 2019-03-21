//
//  FirstPageViewController.swift
//  Book_Sources
//
//  Created by João Tribuzy on 20/03/19.
//

import UIKit

class FirstPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    //MARK: - VARIABLES
    
    // ----- Button Shake -----
    let duration: TimeInterval = 0.25
    let delay: TimeInterval = 0
    let usingSpringVelocity: CGFloat = 0.4
    let xValue: CGFloat = 20
    let yValue: CGFloat = 0
    let initialSpringVelocity: CGFloat = 1.2
    
    // ----- Button Swipe -----
    let swipeRecognizer = UISwipeGestureRecognizer()
    
    /// MARK: - OUTLETS
    @IBOutlet weak var firstStringOutlet: UIButton!
    @IBOutlet weak var secondStringOutlet: UIButton!
    @IBOutlet weak var thirdStringOutlet: UIButton!
    @IBOutlet weak var fourthStringOutlet: UIButton!
    
    @IBOutlet weak public var playButton: UIButton!
    /// MARK: - ACTIONS
    
    // String actions.
    @IBAction func fistString(_ sender: UIButton) {
        PlayerController.sharedInstance.playSound(soundFileName: "C")
        
        sender.shake(duration: self.duration, delay: self.delay, usingSpringWithDamping: self.usingSpringVelocity, xValue: self.xValue, yValue: self.yValue, initialSpringVelocity: self.initialSpringVelocity)
        
        //playButton.titleLabel?.text = whatMelody
    }
    @IBAction func secondString(_ sender: UIButton) {
        
        PlayerController.sharedInstance.playSound(soundFileName: "D")
        
        sender.shake(duration: self.duration, delay: self.delay, usingSpringWithDamping: self.usingSpringVelocity, xValue: self.xValue, yValue: self.yValue, initialSpringVelocity: self.initialSpringVelocity)
    }
    
    @IBAction func thirdString(_ sender: UIButton) {
        PlayerController.sharedInstance.playSound(soundFileName: "D#")
        
        sender.shake(duration: self.duration, delay: self.delay, usingSpringWithDamping: self.usingSpringVelocity, xValue: self.xValue, yValue: self.yValue, initialSpringVelocity: self.initialSpringVelocity)
    }
    
    @IBAction func fourthString(_ sender: UIButton) {
        PlayerController.sharedInstance.playSound(soundFileName: "F")
        
        sender.shake(duration: self.duration, delay: self.delay, usingSpringWithDamping: self.usingSpringVelocity, xValue: self.xValue, yValue: self.yValue, initialSpringVelocity: self.initialSpringVelocity)
    }
    
    @IBAction func playButtonAction(_ sender: Any) {
        PlayerController.sharedInstance.playSound(soundFileName: "\(whatMelody)")
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
