package br.com.stimuli.string.tests
{
	import flexunit.framework.TestCase;
	import br.com.stimuli.string.printf;
	
	public class TestPadding extends TestCase
	{
		public function TestPadding(methodName:String=null)
		{
			super(methodName);
		}

		public function testNoPaddingOnIntegers() : void{
			assertEquals("this is 4.", printf("this is %f.",4));
		}
		
		public function testPaddingOnIntegersNoPaddingChar() : void{
			assertEquals("this is_  4", printf("this is_%3f",4));
		}
		
		public function testPaddingOnIntegersWhiteMultipler() : void{
			assertEquals("this is_     4", printf("this is_%23f",4));
		}
		
		public function testZeroUneededPaddingOnIntegers() : void{
			assertEquals("this is 499", printf("this is %03f",499));
		}	
		
		public function testUneededPaddingOnIntegers() : void{
			assertEquals("this is 499", printf("this is %3f",499));
		}
		
		public function testZeroPaddingFloat() : void{
			assertEquals("this is 08.5", printf("this is %04f",8.5));
		}	
		
		
	}
}