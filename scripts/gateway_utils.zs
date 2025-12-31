// This script stops entities from gateways being able to sit in boats, seats, and
// other blocks

events.register<crafttweaker.forge.api.event.entity.EntityMountEvent>(event => {
    // There's probably a better way of doing this, but it works :)
    for tag in event.entity.getTags() {
        if tag == "gateway_entity" {
            event.cancel();
        }
    }
});
