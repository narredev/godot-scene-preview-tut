@tool
extends Node3D

@export var request: bool = false:
	set(v):
		if v: request_screen()
		request = false

@export var texture: Texture

func request_screen() -> void:
	ScenePreviewExtractor.get_preview(scene_file_path, self, "set_texture")

func set_texture(path: String, preview: Texture2D, thumbnail: Texture2D, userdata) -> void:
	texture = preview
	
