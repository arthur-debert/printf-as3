// ActionScript file
package br.com.stimuli.string.tests 
{
import br.com.stimuli.string.printf;

import flexunit.framework.*;
public class NamedSubsTests extends TestCase
{
	public var dict : Object = {
		"name":"Arthur",
		"occupation":"developer",
		"num cats":"two",
		"PI" : 3.1424,
		"birth": new Date(1978, 2, 10)
	}
    public static function suite() : TestSuite
    {
        var suite : TestSuite = new TestSuite();
        suite.addTest(new PositionalTest("testOneNamedItem"));
        
        
        return suite;
    }

    public function NamedSubsTests(name : String = null)
    {
        super(name);
    }
    

    public function testOneNamedItem():void{
 		assertEquals( "hello Arthur.", printf("hello %(name)s.", dict));
    }

	public function testTwoNamedItem():void{
 		assertEquals( "I am Arthur and I am a developer.", printf("I am %(name)s and I am a %(occupation)s.", dict));
    }
    
    public function testMissingVar():void{
    	// this should raise an error:
    	assertEquals( "I am  and I am a developer.", printf("I am %(something)s and I am a %(occupation)s.", dict));
    }
    
    public function testNullVar():void{
    	// this should raise an error:
    	assertEquals( "I am  and I am a .", printf("I am %(something)s and I am a %(occupation)s.", {}));
    }
    
}
}