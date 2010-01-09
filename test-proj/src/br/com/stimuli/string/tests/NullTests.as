// ActionScript file
package br.com.stimuli.string.tests 
{


import flexunit.framework.*;
public class NullTests extends TestCase
{


    public function NullTests(name : String = null)
    {
        super(name);
    }
    

	public function testNullWithSubst():void
	{
		
		assertNotNull( printf( "%s", null ) );	
		assertEquals( printf( "%s", null ), "" );
	}
	
    public function testNull():void{
    	assertNotNull( printf( null, "something" ) );
    }

}
}