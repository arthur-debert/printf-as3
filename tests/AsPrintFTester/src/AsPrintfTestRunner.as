import flexunit.framework.TestSuite;


                        
private function onCreationComplete():void
{
        testRunner.test = createSuite();
        testRunner.startTest(); 
}

private function createSuite():TestSuite
{
        var ts:TestSuite = new TestSuite();

        // utils
        ts.addTestSuite( PositionalTest );
        ts.addTestSuite(NamedSubsTests);        
        return ts;
}
