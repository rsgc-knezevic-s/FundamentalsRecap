/*:
 [Previous](@previous)
 
 # Challenge
 
 Mr. Gordon was at IKEA a few weeks ago and noticed this pattern:
 
 ![pattern.jpg](pattern.jpg "pattern")
 
 Use any of the concepts you have learned so far in this course to reproduce the wallpaper pattern shown above.
 
 - note: The photo was not taken "straight on" against the wall, so the image has perspective.  You do not need to reproduce that part of the image.  In other words, no need to create the appearance of "depth", just reproduce colours and shapes.
 
 - callout(Hint): Look for elements of repetition in the pattern. Try to reproduce a portion of the image, then simply *repeat* the pattern.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 400)
canvas.drawShapesWithBorders = false
canvas.defaultLineWidth = 8


for y in stride(from: 0, through: 222, by: 220){

//top circles
for x in stride(from: 0, through: 500, by: 64){
    canvas.fillColor = Color.blue
    canvas.drawEllipse(centreX: x, centreY: 50+y, width: 56, height: 56)
    
    canvas.fillColor = Color.black
    canvas.drawEllipse(centreX: x, centreY: 50+y, width: 40, height: 40)
    
    canvas.fillColor = Color.red
    canvas.drawEllipse(centreX: x, centreY: 50+y, width: 24, height: 24)

    canvas.fillColor = Color.white
    canvas.drawEllipse(centreX: x, centreY: 50+y, width: 8, height: 8)
    
}


for x in stride(from: 32, through: 500, by: 64){
    canvas.fillColor = Color.red
    canvas.drawEllipse(centreX: x, centreY: 95+y, width: 56, height: 56)
    
    canvas.fillColor = Color.black
    canvas.drawEllipse(centreX: x, centreY: 95+y, width: 40, height: 40)
    
    canvas.fillColor = Color.blue
    canvas.drawEllipse(centreX: x, centreY: 95+y, width: 24, height: 24)
    
    canvas.fillColor = Color.white
    canvas.drawEllipse(centreX: x, centreY: 95+y, width: 8, height: 8)
    
}

//top lines
for x in stride(from: 0, to: 500, by: 64){
    
    canvas.lineColor = Color.white
    canvas.drawLine(fromX: x, fromY: 55+y , toX: x, toY: 90+y)
    canvas.drawLine(fromX: x+32, fromY: 55+y, toX: x+32, toY: 90+y)
    
    canvas.lineColor = Color.red
    canvas.drawLine(fromX: x-8, fromY: 55+y, toX: x-8, toY: 90+y)
    canvas.drawLine(fromX: x+8, fromY: 55+y, toX: x+8, toY: 90+y)
    
    
    canvas.lineColor = Color.black
    canvas.drawLine(fromX: x-16, fromY: 55+y, toX: x-16, toY: 90+y)
    canvas.drawLine(fromX: x+16, fromY: 55+y, toX: x+16, toY: 90+y)
    
    
    canvas.lineColor = Color.blue
    canvas.drawLine(fromX: x-24, fromY: 55+y, toX: x-24, toY: 90+y)
    canvas.drawLine(fromX: x+24, fromY: 55+y, toX: x+24, toY: 90+y)
}
}













for y in stride(from: 0, through: 220, by: 220){

//bottom circles
for x in stride(from: 0, through: 500, by: 64){
    canvas.fillColor = Color.blue
    canvas.drawEllipse(centreX: x, centreY: 200+y, width: 56, height: 56)
    
    canvas.fillColor = Color.black
    canvas.drawEllipse(centreX: x, centreY: 200+y, width: 40, height: 40)
    
    canvas.fillColor = Color.red
    canvas.drawEllipse(centreX: x, centreY: 200+y, width: 24, height: 24)
    
    canvas.fillColor = Color.white
    canvas.drawEllipse(centreX: x, centreY: 200+y, width: 8, height: 8)
    
}


for x in stride(from: 32, through: 500, by: 64){
    canvas.fillColor = Color.red
    canvas.drawEllipse(centreX: x, centreY: 155+y, width: 56, height: 56)
    
    canvas.fillColor = Color.black
    canvas.drawEllipse(centreX: x, centreY: 155+y, width: 40, height: 40)
    
    canvas.fillColor = Color.blue
    canvas.drawEllipse(centreX: x, centreY: 155+y, width: 24, height: 24)
    
    canvas.fillColor = Color.white
    canvas.drawEllipse(centreX: x, centreY: 155+y, width: 8, height: 8)
    
}

//bottom lines
for x in stride(from: 0, to: 500, by: 64){
    
    canvas.lineColor = Color.white
    canvas.drawLine(fromX: x, fromY: 160+y, toX: x, toY: 195+y)
    canvas.drawLine(fromX: x+32, fromY: 160+y, toX: x+32, toY: 195+y)
    
    canvas.lineColor = Color.red
    canvas.drawLine(fromX: x-8, fromY: 160+y, toX: x-8, toY: 195+y)
    canvas.drawLine(fromX: x+8, fromY: 160+y, toX: x+8, toY: 195+y)
    
    
    canvas.lineColor = Color.black
    canvas.drawLine(fromX: x-16, fromY: 160+y, toX: x-16, toY: 195+y)
    canvas.drawLine(fromX: x+16, fromY: 160+y, toX: x+16, toY: 195+y)
    
    
    canvas.lineColor = Color.blue
    canvas.drawLine(fromX: x-24, fromY: 160+y, toX: x-24, toY: 195+y)
    canvas.drawLine(fromX: x+24, fromY: 160+y, toX: x+24, toY: 195+y)
}
}


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
