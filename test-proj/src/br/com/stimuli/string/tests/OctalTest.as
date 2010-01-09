package br.com.stimuli.string.tests
{
    import flexunit.framework.TestCase;
    
    public class OctalTest extends TestCase
    {
        public function OctalTest(methodName:String=null)
        {
            super(methodName);
        }
        
        public function testOctal() : void{
			assertEquals("this is 040.", printf("this is %o.",32));
		}
    }
}