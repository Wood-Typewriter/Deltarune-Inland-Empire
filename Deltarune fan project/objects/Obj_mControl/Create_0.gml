control_states = ds_map_create();
function enableControl(name) {
	ds_map_replace(control_states, name, true);
}
function disableControl(name){
	ds_map_replace(control_states, name, false)
}
function isControlEnabled(name){
	if (ds_map_exists(control_states, name)) {
		return control_states[? name];
	}
	return false;
}
function registerControl(name, initial_states = false){
}

//Debug
function printControls() {
	var keys = ds_map_keys(control_states);
	for (var i = 0; i < array_length(keys); i++) {
		var key = keys[i];
		var value = control_states[? key];
		show_debug_message(key + ": " + string(value));
	}
}