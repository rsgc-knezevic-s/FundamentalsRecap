/*:
 [Previous](@previous) / [Next](@next)
 
 # Iteration and Conditionals
 
 Use what you have learned about translation and rotation to reproduce this image:
 
 ![flower.png](flower.png "Flower")
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 400)

canvas.translate(byX: 200, byY: 200)
canvas.drawShapesWithBorders = false

for x in stride(from: 1, to: 10, by: 1){
    canvas.rotate(by: 20)
    canvas.fillColor = Color(hue: x * 40, saturation: 70, brightness: 80, alpha: 80)
    canvas.drawEllipse(centreX: 0, centreY: 0, width: 20, height: 360)
}

    canvas.rotate(by: 10)

for y in stride(from: 1, to: 10, by: 1){
    
    canvas.rotate(by: 20)
    canvas.fillColor = Color(hue: y * 40, saturation: 70, brightness: 80, alpha: 80)
    canvas.drawEllipse(centreX: 0, centreY: 0, width: 20, height: 300)
}



/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
