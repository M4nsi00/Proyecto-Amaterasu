extends CharacterBody2D

# --- Variables del Proyectil ---
@export var speed: float = 400.0   # Velocidad de movimiento.
@export var lifetime: float = 2.0  # Se borra después de 2 segundos si no choca.
@export var damage_amount: int = 10 # Daño que inflige.

var direction: Vector2 = Vector2.RIGHT # La dirección de movimiento.

# --- Función ready: Autodestrucción ---
func _ready():
	# Inicia un temporizador. Después de 'lifetime' segundos, se borra.
	await get_tree().create_timer(lifetime).timeout
	queue_free()

# --- Función physics_process: Movimiento y Colisión ---
func _physics_process(delta: float):
	# 1. Establecer la velocidad.
	velocity = direction * speed
	
	# 2. Mover el cuerpo y obtener la colisión (si existe).
	var collision = move_and_slide()
	
	# 3. Revisar si move_and_slide detectó algún choque.
	if get_slide_collision_count() > 0:
		# Obtenemos la información del primer objeto chocado.
		var collision_data = get_slide_collision(0)
		var body = collision_data.get_collider()
		
		# 4. Intentar causar daño y borrar el proyectil.
		# ¡El jugador DEBE tener la función 'take_damage' y estar configurado para colisionar!
		if body and body.has_method("take_damage"):
			body.take_damage(damage_amount)
			
		# En el caso más básico, borramos el proyectil sin importar con qué chocó.
		queue_free()

# --- Función de Configuración (Llamada al ser lanzado) ---
# El enemigo llamará a esta función para darle una dirección (ej. hacia el jugador).
func setup(dir: Vector2):
	direction = dir.normalized()
