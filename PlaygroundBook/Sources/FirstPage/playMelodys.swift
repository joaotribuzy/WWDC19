//
//  playMelodys.swift
//  Book_Sources
//
//  Created by João Tribuzy on 22/03/19.
//

import Foundation
import UIKit

extension FirstPageViewController{
    
    func callMelody(){
        switch whatMelody {
        case "melody1":
            callMelody1()
            break
        default:
            break
        }
    }
    
    @objc func c(){
        self.fistString(self.firstStringOutlet)
    }
    @objc func d(){
        self.secondString(self.secondStringOutlet)
    }
    @objc func dsus(){
        self.thirdString(self.thirdStringOutlet)
    }
    @objc func f(){
        self.fourthString(self.fourthStringOutlet)
    }
    
    func callMelody1(){
        self.firstStringOutlet.isUserInteractionEnabled = false
        self.secondStringOutlet.isUserInteractionEnabled = false
        self.thirdStringOutlet.isUserInteractionEnabled = false
        self.fourthStringOutlet.isUserInteractionEnabled = false
        
        DispatchQueue.main.asyncAfter(deadline: .now()) {
            self.fistString(self.firstStringOutlet)
            self.perform(#selector(self.d), with: nil, afterDelay: 0.6)
            self.perform(#selector(self.dsus), with: nil, afterDelay: 0.8)
            self.perform(#selector(self.c), with: nil, afterDelay: 1.45)
            self.perform(#selector(self.c), with: nil, afterDelay: 1.85)
            self.perform(#selector(self.d), with: nil, afterDelay: 2.3)
            self.perform(#selector(self.dsus), with: nil, afterDelay: 2.5)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.3) {
            self.fistString(self.firstStringOutlet)
            self.perform(#selector(self.d), with: nil, afterDelay: 0.6)
            self.perform(#selector(self.dsus), with: nil, afterDelay: 0.8)
            self.perform(#selector(self.c), with: nil, afterDelay: 1.45)
            self.perform(#selector(self.c), with: nil, afterDelay: 1.85)
            self.perform(#selector(self.d), with: nil, afterDelay: 2.3)
            self.perform(#selector(self.dsus), with: nil, afterDelay: 2.5)
            self.perform(#selector(self.d), with: nil, afterDelay: 2.7)
            self.perform(#selector(self.dsus), with: nil, afterDelay: 2.9)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 6.1) {
            self.firstStringOutlet.isUserInteractionEnabled = true
            self.secondStringOutlet.isUserInteractionEnabled = true
            self.thirdStringOutlet.isUserInteractionEnabled = true
            self.fourthStringOutlet.isUserInteractionEnabled = true
            
            self.playButton.isEnabled = true
        }
    }
}
