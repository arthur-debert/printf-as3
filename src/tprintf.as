// ActionScript file
package{
	
	/**
	 * Small wrapper around printf when you just want to print it to stand out.
		 @example
        *   <pre>
        *   
        *   // objects are substitued in the other they appear
        *   
        *   tprintf("This is an %s lybrary for creating %s", "Actioscript 3.0", "strings");
        *   // is short for:
        *  trace(printf("This is an %s lybrary for creating %s", "Actioscript 3.0", "strings")); 
        *   </pre>
        **/
	public function tprintf(...args) : void{
		trace(printf.apply(null, args));
	}
}