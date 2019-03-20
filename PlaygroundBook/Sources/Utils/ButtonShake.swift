//
//  ButtonShake.swift
//  Book_Sources
//
//  Created by João Tribuzy on 20/03/19.
//

import Foundation
import UIKit

extension UIView{
    
    /// Button shake using SpringWithDamping
    func shake(duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping: CGFloat, xValue: CGFloat, yValue: CGFloat, initialSpringVelocity: CGFloat) {
        self.transform = CGAffineTransform(translationX: xValue, y: yValue)
        UIView.animate(withDuration: duration, delay: delay, usingSpringWithDamping: usingSpringWithDamping, initialSpringVelocity: initialSpringVelocity, options: .curveEaseInOut, animations: {
            self.transform = CGAffineTransform.identity
        }, completion: nil)
        
    }
}
