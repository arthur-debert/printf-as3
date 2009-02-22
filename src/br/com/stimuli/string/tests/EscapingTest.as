package br.com.stimuli.string.tests
{
    import flexunit.framework.TestCase;
    import br.com.stimuli.string.printf;

    public class EscapingTest extends TestCase
    {
        public function EscapingTest(methodName:String=null)
        {
            super(methodName);
        }
        
        public function testScaping() : void{
            assertEquals("hello %% ", printf("hello %% ", 65));
        }
        
        public function testScapingWithOthers() : void{
            assertEquals("hello %% 65", printf("hello %% %s", 65));
        }
    }
}