package game

import rl "vendor:raylib"
import hm "handle_map_growing"

Entity_Handle :: hm.Handle

Entity :: struct {
    handle: Entity_Handle,
    pos: [2]f32,
    tex: rl.Texture,
}

World :: struct {
    entities: hm.Handle_Map(Entity, Entity_Handle),
}

add_entity :: proc(w: ^World, e: Entity) {
    hm.add(&w.entities, e)
}

remove_entity :: proc(w: ^World, h: Entity_Handle) {
    hm.remove(&w.entities, h)
}

clear_world :: proc(w: ^World) {
    hm.delete(&w.entities)
}