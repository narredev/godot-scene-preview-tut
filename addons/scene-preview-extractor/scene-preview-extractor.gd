@tool
extends EditorPlugin
class_name ScenePreviewExtractor

var editor: EditorInterface
static var preview: EditorResourcePreview

func _ready() -> void:
	editor = get_editor_interface()
	preview = editor.get_resource_previewer()

static func get_preview(scene: String, receiver: Object, function: StringName) -> void:
	preview.queue_resource_preview(scene, receiver, function, null)

