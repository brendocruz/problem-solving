/**
 * @param {string[]} tokens
 * @return {number}
 */
var evalRPN = function(tokens) {
	let length = tokens.length;
	let index = tokens.length - 1;

	while (length > 1) {
		const token = tokens[index];

		// Test if the token is a number.
		if (!isNaN(Number(token))) {
			index += 1;
			continue;
		}

		// Cast the tokens to numbers to use them as operands.
		const left = Number(tokens[index - 2]);
		const right = Number(tokens[index - 1]);

		// Test if the operands are really numbers.
		if (!isNaN(left) && !isNaN(right)) {
			// Operate the values.
			let result;
			if (token === '+') {
				result = left + right;
			} else if (token === '-') {
				result = left - right;
			} else if (token === '*') {
				result = left * right;
			} else if (token === '/') {
				result = Math.trunc(left / right);
			}

			// Remove used operands and operator (-3 values)
			// and add the operation result (+1 value), then
			// decrease the array length.
			tokens.splice(index - 2, 3, result);
			length -= 2;
		}
		index -= 2;
	}

	// Return the only element of the list.
	return tokens[0];
};


// Examples.
let tokens, result;
tokens = ["2", "1", "+", "3", "*"]
result = evalRPN(tokens);
console.log(result);

tokens = ['4', '13', '5', '/', '+'];
result = evalRPN(tokens);
console.log(result);

tokens = ['10', '6', '9', '3', '+', '-11', '*', '/', '*', '17', '+', '5', '+']
result = evalRPN(tokens);
console.log(result);
