as yet unclassified
example1Code
	"Just in case I need this"

	^ '
''use strict'';

const username = ''doge'';
const n = 10;

let factorial = (f => f(f))((self) => ((n) => n*self(n-1)));

function main(){
  var result;
  console.log(`Hi ${username}, the factorial of ${n} is...`);
  result = factorial(n);
  console.log(`${result}!!!`);
}

main();'