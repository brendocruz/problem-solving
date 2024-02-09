/**
 * @param {number} n
 * @return {boolean}
 */
var isPowerOfFour = function(n) {
	if (n <= 0) {
		return false;
	}

	if (n === 1) {
		return true;
	}

	if (n % 4 !== 0) {
		return false;
	}

	return isPowerOfFour(Math.floor(n / 4))
};


// Example 1
console.log(isPowerOfFour(16))

// Example 2
console.log(isPowerOfFour(5))

// Example 3
console.log(isPowerOfFour(-1))
