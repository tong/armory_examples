package arm;

import iron.math.Vec4;

class LockTrait extends iron.Trait {
	public function new() {
		super();

		notifyOnUpdate(function() {
			var mouse = iron.system.Input.getMouse();
			var kb = iron.system.Input.getKeyboard();

			if (mouse.started("left")) {
				mouse.lock();
			}
			else if (kb.started("escape")) {
				mouse.unlock();
			}

			var cube = iron.Scene.active.getChild("Cube");
			if (cube != null) {
				cube.transform.rotate(Vec4.zAxis(), mouse.movementX * 0.002);
				cube.transform.rotate(Vec4.xAxis(), mouse.movementY * 0.002);
			}
		});
	}
}
