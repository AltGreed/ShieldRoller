extends Node2D

export (PackedScene) var Bullet

func _ready():
	new_game()
	randomize()
	

func _on_spawnTimer_timeout():
	$bulletSpawnPath/bulletSpawnLocation.offset = randi()
	var bullet = Bullet.instance()
	add_child(bullet)
	
	var direction = $bulletSpawnPath/bulletSpawnLocation.rotation + PI / 2
	
	bullet.position = $bulletSpawnPath/bulletSpawnLocation.position
	
	direction += rand_range(-PI / 4 , PI / 4 )
	bullet.rotation = direction
	
	bullet.linear_velocity = Vector2(rand_range(bullet.min_speed, bullet.max_speed),0)
	bullet.linear_velocity = bullet.linear_velocity.rotated(direction)


func _on_startTimer_timeout():
	$spawnTimer.start()
	
func new_game():
	$startTimer.start()
