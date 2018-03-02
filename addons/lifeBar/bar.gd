tool
extends Node2D

func _enter_tree():
	pass

func _draw():
    var center = Vector2(200,200)
    var radius = 80
    var angle_from = 75
    var angle_to = 195
    var color = Color(1.0, 0.0, 0.0)
    var border = Color(0.0, 0.0, 0.0)
    var lifeColor = Color(0.0, 1.0, 0.0)
    #draw_circle_arc( center, radius, angle_from, angle_to, color ) 
    #draw_circle_arc_poly( center, radius, angle_from, angle_to, color )
    draw_square(center,border,lifeColor)

func draw_square(center, border, lifeColor):
	var squarePoints = Vector2Array()
	squarePoints.push_back( Vector2(0,0) ) #start
	squarePoints.push_back( Vector2(200,0) ) #target 1
	squarePoints.push_back( Vector2(200,20) ) #target 2
	squarePoints.push_back( Vector2(0,20) ) #target 3
	
	var colors = ColorArray([lifeColor])
	draw_polygon(squarePoints, colors)
	for i in range(3):
		draw_line(squarePoints[i],squarePoints[i+1], border)
	draw_line(squarePoints[3],squarePoints[0], border)
	
	
	pass


