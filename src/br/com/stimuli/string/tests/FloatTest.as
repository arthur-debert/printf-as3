package br.com.stimuli.string.tests
{
	import flexunit.framework.TestCase;
    import br.com.stimuli.string.printf;
    
	public class FloatTest extends TestCase
	{
		public function FloatTest(methodName:String=null)
		{
			super(methodName);
		}

		public function testFloat() : void{
			assertEquals("this is 4.", printf("this is %f.",4));
		}
		
		public function testFloatWithPoint() : void{
			assertEquals("this is 4.4", printf("this is %f", 4.4));
		}		
		
		public function testFloatWithPrecision() : void{
			assertEquals("this is 4.4234", printf("this is %f.4", 4.42343232));
		}
		
		public function testUntypedWithPrecision() : void{
		    var v : * = 4.444444;
		    assertEquals("this is 4.44", printf("this is %f.2", v));
		}
		
	}
}