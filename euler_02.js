var fibs = [1, 1]
function fib() {
var first,second,add;
for(var i=0;i<31;i++){
    if(i === 0){
        first = 1;
        second = 2;
    }

    fibs.push(second);
    add = first + second;
    first = second;
    second = add;


}

console.log(add);

}

fib();
fibs;

var evens = []
for (var i = 0; i < fibs.length; i++) {
    if(fibs[i] % 2 === 0) {
        evens.push(fibs[i]);
    }
}

var total = evens.reduce(function(a, b) {
    return a + b
}
