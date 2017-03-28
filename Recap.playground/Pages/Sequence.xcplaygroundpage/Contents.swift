/*:
 [Previous](@previous) / [Next](@next)
 
 # Sequence
 
 Some new shape types and options have been added to the Canvas class.
 
 Use this new functionality, and your [knowledge of colour](http://russellgordon.ca/rsgc/2016-17/ics2o/HSB_Colour_Model_-_Summary_-_Swift_3.pdf), to reproduce this abstract version of the eBay logo:
 
 ![new_ebay_logo.png](new_ebay_logo.jpg "Overlapping Shapes Logo")
 
 Color and alpha (transparency) matter.
 
 Try reproducing this image for practice.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport




// Create canvas
let canvas = Canvas(width: 500, height: 400)
canvas.drawShapesWithBorders = false

// Replace this comment and add your code below
var points: [NSPoint] = []
points.append(NSPoint(x: 400, y: 100))
points.append(NSPoint(x: 315, y: 350))
points.append(NSPoint(x: 485, y: 350))


canvas.fillColor = Color(hue: 120, saturation: 100, brightness: 80, alpha: 80)
canvas.drawCustomShape(with: points)

canvas.fillColor = Color(hue: 45, saturation: 100, brightness: 80, alpha: 80)
canvas.drawRoundedRectangle(centreX: 325, centreY: 225, width: 120, height: 150, borderWidth: 1, xRadius: 20, yRadius: 20)

canvas.fillColor = Color(hue: 230, saturation: 100, brightness: 80, alpha: 80)
canvas.drawRectangle(centreX: 225, centreY: 200, width: 125, height: 350)

canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 80, alpha: 80)
canvas.drawEllipse(centreX: 110, centreY: 175, width: 175, height: 175)




/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
