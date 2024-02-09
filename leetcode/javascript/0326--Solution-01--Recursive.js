/**
 * @param {number} n
 * @return {boolean}
 */
var isPowerOfThree = function(n) {
	if (n <= 0) {
		return false;
	}

	if (n === 1) {
		return true;
	}

	if (n % 3 !== 0) {
		return false;
	}

	return isPowerOfThree(Math.floor(n / 3))
};


// Example 1
console.log(isPowerOfThree(27))

// Example 2
console.log(isPowerOfThree(0))

// Example 3
console.log(isPowerOfThree(-1))
