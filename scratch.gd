extends Node

const TypeAliasGlobal = preload("res://scratch_resource.gd")

var resource_preloaded_global: ScratchResource = preload("res://scratch_resource.tres")
var resource_loaded_global: ScratchResource = load("res://scratch_resource.tres")
var resource_created_global: ScratchResource = ScratchResource.new()

var scene_preloaded_global: PackedScene = preload("res://scratch.tscn")
var scene_loaded_global: PackedScene = load("res://scratch.tscn")

func _ready() -> void:
		const TypeAliasLocal = preload("res://scratch_resource.gd")
		
		var resource_preloaded_local: TypeAliasGlobal = preload("res://scratch_resource.tres")
		var resource_loaded_local: TypeAliasGlobal = load("res://scratch_resource.tres")
		# TypeAliasLocal usages produces warning with "Unrecognized name"
		var resource_created_local: TypeAliasLocal = ScratchResource.new()
		if resource_created_local is TypeAliasLocal:
				print("Equals!")
		
		var scene_preloaded_local: PackedScene = preload("res://scratch.tscn")
		var scene_loaded_local: PackedScene = load("res://scratch.tscn")

		# "Go To Declaration"/"Show Usages Of" of these has two targets:
		#  - GDScript property
		#  - GDScript type alias
		resource_preloaded_global
		resource_loaded_global
		scene_preloaded_global
		scene_loaded_global
		# These resolve fine:
		resource_created_global
		scene_preloaded_local
		scene_loaded_local
		resource_preloaded_local
		resource_created_local
