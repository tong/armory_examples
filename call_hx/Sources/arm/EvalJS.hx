package arm;

class EvalJS {

	public function new() {
		// Evaluate bundled JS, usually you would embed JS into .html file instead
		iron.data.Data.getBlob("my_plugin.js", function(blob:kha.Blob) {
			js.Syntax.code("(1, eval)({0})", blob.toString());
		});
	}
}
