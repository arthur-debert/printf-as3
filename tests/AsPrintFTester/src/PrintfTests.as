package br.com.stimuli.string.tests
{
	import flexunit.framework.*;
	public class PrintfTests
	{
		
		public static function suite() : TestSuite
	{
		var testSuite:TestSuite = new TestSuite();		
		
		testSuite.addTestSuite( PositionalTest );
		
		
		return testSuite;
	}

	}
}