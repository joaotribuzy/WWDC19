//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//
import UIKit
import PlaygroundSupport

enum VisualMelody{
    case visualMelody1
    case visualMelody2
}
//#-end-hidden-code
/*:
 To help us play bass on our band pratice you need to...play a **bass** ...😂😂😂,
 **But let's start explaining the some fundamentals!!**
 
 On music, we have something called **melody**, which is a combination of musical notes, building a little **musical idea**. Each **melody** has a single peculiarity, established by the music in which it is inserted.
 ### See and listen the melody...
 - Experiment:
    To learn how to play bass...
 
    1.  Select what melody you want...(For this, we'll use a variable called **'melody'**. Change the variable value to change what melody will play.)
    2.  Tap **Run my Code**.
    3.  Tap play to listen and "see" the melody.
    4.  Try to reproduce it...
 */
let melody: VisualMelody = /*#-editable-code*/.visualMelody1/*#-end-editable-code*/
//#-hidden-code
//whatMelody = String(melody)
whatMelody = /*#-editable-code*/"\(melody)"/*#-end-editable-code*/
PlaygroundPage.current.liveView = instantiateLiveView()
//#-end-hidden-code
/*:
 - Note:
    Don't forget...that's a figurative representation of a bass, it doesn't represent the real life fidelity.
    When you tap the **Play Button**▶️, wait to listen to the melody. You can listen to the melody whenever you want.
    I will help you with some visual effects...but don't get used to it...😏😏
    When you want to change the melody, remember to tap **Run my Code** again.
 ### I challenge you to reproduce this on the bass!😎
 
 ...
 
 After this, you can go to the [next page](@next)...😎😎
 */


