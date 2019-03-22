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
    //case melody2
}
//#-end-hidden-code
/*:
 Ok, now you know a litle more about the **Music World**,so  let's make something more dificult...
 **I challenge you** to make something similar, but with some diferences.
 The process is the same...
 
 - Experiment:
 
     1. Select what melody you want...(For this, change the **'melody'**.
     2. Tap on **Run my Code**.
     3. Tap play to listen the melody.
     4. Try to reproduce it...
 
 ---
 
 - Note:
    Now, we have some diference, you'll don't have any visual responce. Just listen and try to reproduce...yes, you can, you are a bass player yet...😎
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


