
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
 To help us play bass on our band pratice you need to...play a **bass** ...😂😂😂,
 **But let's start explaining the fundamentals!!**
 
 On music, we have something called **melody**, wich is a combination of musical notes, building a litle **musical idea**. Each **melody** has a single peculiarity, established by the music in which it is inserted.
 
 ---
 
 ### Change the melody...
 To learn how to play bass, choose a melody and try to reproduce it...
 For this, we'll use a variable.
 Select what melody you want to reproduce and tap on **Run my Code**▶️.
 */
let melody: Melody = /*#-editable-code*/.melody1/*#-end-editable-code*/


//#-hidden-code
//whatMelody = String(melody)
whatMelody = /*#-editable-code*/"\(melody)"/*#-end-editable-code*/
PlaygroundPage.current.liveView = instantiateLiveView()
//#-end-hidden-code

/*:
 To listen to the selected melody you can tap the Play Button.
 I challenge you reproduce this on the bass!😎😎
 
 ...
 
 After this, you can go to the next page...😎😎
 */


