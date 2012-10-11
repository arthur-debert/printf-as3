# printf-as3

Function for doing string variable substitutions in AS3.
Inspired by python's print and strtime.

### Usage

    import br.com.stimuli.string.printf;
    // objects are substitued in the other they appear

    printf("This is an %s library for creating %s", "Actioscript 3.0", "strings");
    // outputs: "This is an Actioscript 3.0 lybrary for creating strings";
    // you can also format numbers:

    printf("You can also display numbers like PI: %f, and format them to a fixed precision, such as PI with 3 decimal places %.3f", Math.PI, Math.PI);
    // outputs: " You can also display numbers like PI: 3.141592653589793, and format them to a fixed precision, such as PI with 3 decimal places 3.142"
    // Instead of positional (the order of arguments to print f, you can also use propertie of an object):
    var userInfo : Object = {
    "name": "Arthur Debert",
    "email": "arthur@stimuli.com.br",
    "website":"http://www.stimuli.com.br/",
    "ocupation": "developer"
    }

    printf("My name is %(name)s and I am a %(ocupation)s. You can read more on my personal %(website)s, or reach me through my %(email)s", userInfo);
    // outputs: "My name is Arthur Debert and I am a developer. You can read more on my personal http://www.stimuli.com.br/, or reach me through my arthur@stimuli.com.br"
    // you can also use date parts:
    var date : Date = new Date();
    printf("Today is %d/%m/%Y", date, date, date);

For more examples, see the test suit in [test-proj/src][tests]...

### License
[MIT][mit] licensed.

[arthur-debert]:http://www.stimuli.com.br
[mit]:http://mit-license.org
[tests]:./test-proj/src