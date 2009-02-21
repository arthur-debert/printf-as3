// ActionScript file
package br.com.stimuli.string.tests
{
import br.com.stimuli.string.printf;

import flexunit.framework.*;
public class PositionalTest extends TestCase
{
    public static function suite() : TestSuite
    {
        var suite : TestSuite = new TestSuite();
        suite.addTest(new PositionalTest("testTwoItems"));
        suite.addTest(new PositionalTest("testOneItem"));
        suite.addTest(new PositionalTest("testMoreArgumentsThanWholes"));
        suite.addTest(new PositionalTest("testMoreWholesThanArguments"));
        
        return suite;
    }

    public function PositionalTest(name : String = null)
    {
        super(name);
    }
    

    public function testOneItem():void{
 		assertEquals( "hello arthur.", printf("hello %s.", "arthur"));
 		
    }

    public function testTwoItems():void{
 		assertEquals(printf("hello %s, %s", "arthur", "mafe"), "hello arthur, mafe");   	
    }
        
    public function testMoreArgumentsThanWholes():void{
 		assertEquals(printf("hello %s.", "arthur", "useless"), "hello arthur.");   	
    }
 
    public function testMoreWholesThanArgumentsWillNotThrowError():void{
    	var e : Error ;
    	try{
    		printf("hello %s and %s .", "arthur");
    	}catch(er : Error){
    		e = er;
    	}
 		 assertNull(e);  	
    }
    
    public function testMoreWholesThanArgumentsIgnoreFormats():void{
    		assertEquals("hello arthur and  .", printf("hello %s and %s .", "arthur"));	
    }
    
    public function testNoVars():void{
    		assertEquals("hello  and  .", printf("hello %s and %s ."));	
    }
}
}