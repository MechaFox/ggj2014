package lime.gl;



#if lime_html5

	typedef GLProgram = js.html.webgl.Program;

#else //lime_html5

	class GLProgram extends GLObject {
		
		public var shaders:Array<GLShader>;
		
		public function new (version:Int, id:Dynamic) {
			super (version, id);
			shaders = new Array<GLShader> ();
		}
		
		public function attach (shader:GLShader):Void {
			shaders.push (shader);
		}
		
		public function getShaders ():Array<GLShader> {
			return shaders.copy ();
		}
		
		override private function getType ():String {
			return "Program";
		}
	}

#end //lime_native
