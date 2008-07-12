import br.com.stimuli.string.printf;

// create objects for exaples
var date :Date= new Date(1978, 2, 10);
var userInfo : Object = {
	"name": "Arthur Debert",
	"email": "arthur@stimuli.com.br",
	"website":"http://www.stimuli.com.br/",
	"ocupation": "developer"
}

// will supply the first item in the array and the rest of them as parameters
var testSusbs : Array = [
    ["Hi, this is the %s function, which is licensed under the %s.", "printf", "MIT license"] /* basic substition by positioning */,
    ["I was born on %d of %m of %Y", date, date, date] /* date properties */,
    ["My name is %(name)s and I am a %(ocupation)s. You can read more on my personal %(website)s, or reach me through my %(email)s", userInfo] /* By variable substituion, only pass ONE object to be searched. */,
    ["You can also display numbers like PI: %f, and format them to a fixed precision, such as PI with 3 decimal places %.3f, but this should neved be subs \%s", Math.PI, Math.PI]/* Decimal precision examples*/
]

for each(var line : Array in testSusbs){
    trace("\nbefore:", line[0], "\nafter: ", printf.apply(null, line));
}
