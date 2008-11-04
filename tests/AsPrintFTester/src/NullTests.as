// ActionScript file
package 
{
import br.com.stimuli.string.printf;

import flexunit.framework.*;
public class NullTests extends TestCase
{
    public static function suite() : TestSuite
    {
        var suite : TestSuite = new TestSuite();
        suite.addTest(new NullTests("testNullWithSubst"));
        suite.addTest(new NullTests("testNull"));
        
        
        return suite;
    }

    public function NullTests(name : String = null)
    {
        super(name);
    }
    

	public function testNullWithSubst():void
	{
		assertNotNull( printf( "%(something)s", null ) );	
		assertEquals( printf( "%(something)s", null ), "%(something)s" );
		
		assertNotNull( printf( "%s", null ) );	
		assertEquals( printf( "%s", null ), "%s" );
	}
	
    public function testNull():void{
    	assertNotNull( printf( null, "something" ) );
    }

}
}