package br.com.stimuli.string.tests
{
	import flexunit.framework.TestCase;
        
    
	public class FloatTest extends TestCase
	{
		public function FloatTest(methodName:String=null)
		{
			super(methodName);
		}

        public function testFloat() : void{
            assertEquals("testFloat this is 4.", printf("testFloat this is %f.",4));
        }
        
        public function testFloatWithPoint() : void{
            assertEquals("testFloatWithPoint this is 4.4", printf("testFloatWithPoint this is %f", 4.4));
        }       
        
        public function testFloatWithPrecision() : void{
            assertEquals("testFloatWithPrecision this is 4.4234", printf("testFloatWithPrecision this is %.4f", 4.42343232));
        }
        
        public function testUntypedWithPrecision() : void{
            var v : * = 4.444444;
            assertEquals("testUntypedWithPrecision this is 4.44", printf("testUntypedWithPrecision this is %.2f", v));
        }
		
		public function testLargerThenInputPrecision() : void{
		    assertEquals("testLargerThenInputPrecision 0.00", printf("testLargerThenInputPrecision %.2f", 0));
		    assertEquals("testLargerThenInputPrecision 0.00", printf("testLargerThenInputPrecision %.2f", 0.0000));
		}
	}
}
