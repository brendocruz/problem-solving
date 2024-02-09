/**
 * @param {number} n
 * @return {boolean}
 */
var isPowerOfTwo = function(n) {
	if (n <= 0) {
		return false;
	}

	if (n === 1) {
		return true;
	}

	if (n % 2 === 1) {
		return false;
	}

	return isPowerOfTwo(Math.floor(n / 2))
};


// Example 1
console.log(isPowerOfTwo(1))

// Example 2
console.log(isPowerOfTwo(16))

// Example 3
console.log(isPowerOfTwo(3))
