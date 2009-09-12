import flexunit.framework.TestSuite;
import br.com.stimuli.string.tests.*;

                        
private function onCreationComplete():void
{
        testRunner.test = createSuite();
        testRunner.startTest(); 
}

private function createSuite():TestSuite
{
        var ts:TestSuite = new TestSuite();

        // utils
        ts.addTestSuite(FloatTest);  
        ts.addTestSuite(DateTest);  
        ts.addTestSuite(EscapingTest);  
        ts.addTestSuite(HexTest);  
        ts.addTestSuite(NamedSubsTests);      
        ts.addTestSuite(NullTests);  
        ts.addTestSuite(OctalTest);  
        ts.addTestSuite(PositionalTest);
        ts.addTestSuite(TestPadding);  
        return ts;
}
