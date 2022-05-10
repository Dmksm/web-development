function DeterminePrime(n) {
    if (!(Number.isInteger(n) && n > 0)) {
        return n + ' is not a natural number';
    }
    if (TestNumber(n)) {
        return n + ' is prime';
    }	
    return n + ' is not prime';
}

function TestNumber(n) {
    if (n === 1) {
        return false;
    }
    for (let i = 2; i < Math.sqrt(n) + 1; i++) { 
        if (n % i === 0 && n !== i) {
            return false;
        }
    }
    return true;
}

function isPrimeNumber(a) {
    if (Array.isArray(a)) {
        for (let i = 0; i < a.length; i++) {
            if (typeof a[i] === 'number') {
                console.log(DeterminePrime(a[i]));
            } else {
                console.log(a[i] + ' is not a number');
            }
        }
    } else {
        if (typeof a === 'number') {
            return DeterminePrime(a);
        } else {
            return 'Enter an number array or a number!';
        }
    }
}