package br.com.stimuli.string.tests
{
    import flexunit.framework.TestCase;
    import br.com.stimuli.string.printf;
    
    public class HexTest extends TestCase
    {
        public function HexTest(methodName:String=null)
        {
            super(methodName);
        }

        public function testHex() : void{
			assertEquals("this is 0x14.", printf("this is %x.",20));
		}
    }
}