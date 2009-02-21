package br.com.stimuli.string.tests
{
    import flexunit.framework.TestCase;
    import br.com.stimuli.string.printf;
   
    
    public class DateTest extends TestCase
    {
         public var d : Date = new Date(1978, 2, 10, 14, 35, 5, 6);
        public function DateTest(methodName:String=null)
        {
            super(methodName);
        }
    
        public function testFullYear() : void{
            assertEquals("1978", printf("%Y", d));
        }
        
        public function testYear() : void{
            assertEquals("78", printf("%y", d));
        }
        
        public function testMonth() : void{
            assertEquals("3", printf("%m", d));
        }
        
        public function testDay() : void{
            assertEquals("10", printf("%D", d));
        }
        
        public function testHour24() : void{
            assertEquals("14", printf("%H", d));
        }
        
        public function testHour12() : void{
            assertEquals("2", printf("%I", d));
        }
        
        public function testHourAMPM() : void{
            assertEquals("p.m", printf("%p", d));
        }
        
        public function testMinutes() : void{
            assertEquals("35", printf("%M", d));
        }
        
        public function testSeconds() : void{
            assertEquals("5", printf("%S", d));
        }
    }
}