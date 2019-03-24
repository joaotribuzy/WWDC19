//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//
import UIKit
import PlaygroundSupport

enum Melody{
    case melody1
    case melody2
}
//#-end-hidden-code
/*:
 Ok, now you know a little more about the **Music World**, so let's make something more difficult...
 **I challenge you** to make something similar, but with some diferences.
 The process is the same...
 
 - Experiment:
 
     1. Select what melody you want...(For this, change the **'melody'** value).
     2. Tap **Run my Code**.
     3. Tap play to listen the melody.
     4. Try to reproduce it...
 
 ---
 
 - Note:
    Now, we have some difference, you won't have any visual response. Just listen and try to reproduce...yes, you can, you already are a bass player...😎 But remember, you can play just after you listen... calm down, let's do this step by step...
 */
let melody: Melody = /*#-editable-code*/.melody1/*#-end-editable-code*/
//#-hidden-code
//whatMelody = String(melody)
whatMelody = /*#-editable-code*/"\(melody)"/*#-end-editable-code*/
PlaygroundPage.current.liveView = instantiateLiveView()
//#-end-hidden-code
/*:
 After this, you can go to the [next page](@next)...😎😎
 */


