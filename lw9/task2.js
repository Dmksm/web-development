function calc(a) {
    if (typeof a === 'string') {
        let result;
	let counter = 0;
	for (let i = 0; i < a.length; i++) {
	    if (a[i] === '(') {
		if (!((i > 0) && ((a[i - 1] === '*') || (a[i - 1] === '/') || (a[i - 1] === '+') || (a[i - 1] === '-')))) {
	             return ('перед скобкой должен быть оператор');
	        }
	        counter++;
	    }
	    if (a[i] === ')') {
	        counter--;
	    }	
	    
	}
	if (counter) {
            return('Не совпадение количества скобочек')   
	}
        a = (a.replace(/[(, )]/g, ' '));
        a = (a.replace(/\s+/g, ' ')).trim();
        a = a.split(' ');
        let l = a.length;
        for (i = 0; i < l; i++) {
            if ((i > 1) && (isFinite(parseFloat(a[i - 1]))) && (isFinite(parseFloat(a[i]))) &&
                ((a[i - 2] === '*') || (a[i - 2] === '/') || (a[i - 2] === '+') || (a[i - 2] === '-'))) {
                let content;
                if (a[i - 2] === '*') {
                    content = parseFloat(a[i - 1]) * parseFloat(a[i]);
                }
                if (a[i - 2] === '/') {
                    content = parseFloat(a[i - 1]) / parseFloat(a[i]);
                }
                if (a[i - 2] === '-') {
                    content = parseFloat(a[i - 1]) - parseFloat(a[i]);
                }
                if (a[i - 2] === '+') {
                    content = parseFloat(a[i - 1]) + parseFloat(a[i]);
                }
                a.splice(i - 2, 3, content);
                i = 0;
                l = l - 2;
            }

        }
        if (a.length === 1) {
            return parseFloat(a);
        }
        return 'Ошибка неверная запись выражения в польской нотации!';
    }
    return('Введите строку');
}