/*
	Mathematical functions in SQL Server.
*/

/* ABS */

SELECT ABS(35); -- Absolut value of a positive integer.

SELECT ABS(-8347); -- Absolut value of a negative integer.

SELECT ABS(0); -- Absolut value of zero.

SELECT ABS(NULL); -- Absolut value of NULL.

SELECT ABS(3.1456456); -- Absolut value of a positive decimal number.

SELECT ABS(3.1415926535); -- Absolut value of a positive decimal number.

SELECT ABS(-3.14159265358979323846); -- Absolut value of a negativ decimal number.



/* ACOS */

SELECT ACOS(1); -- Arccosine of 1.

SELECT ACOS(-1); -- Arccosine of -1.

SELECT ACOS(0); -- Arccosine of 0.

SELECT ACOS(0.1415926535); -- Arccosine of a positive decimal number smaller then 1.

SELECT ACOS(-0.14159265358979323846); -- Arccosine of a negative decimal number greater then -1.

SELECT ACOS(NULL); -- Arccosine of NULL.

SELECT ACOS(COS(PI())); -- Arccosine of cosine expression.

/*

Errors for the following cases:

SELECT ACOS(2); -- Arccosine of a positive integer greater then 1.

SELECT ACOS(867.4564); -- Arccosine of a positive decimal number greater then 1.

SELECT ACOS(-98); -- Arccosine of a negative integer smaller then -1.

SELECT ACOS(-3.14159265358979323846); -- Arccosine of a negative decimal number smaller then -1.

*/



/* ASIN */

SELECT ASIN(1); -- Arcsine of 1.

SELECT ASIN(-1); -- Arcsine of -1.

SELECT ASIN(0); -- Arcsine of 0.

SELECT ASIN(0.718281828); -- Arcsine of a positive decimal number smaller then 1.

SELECT ASIN(-0.7182818284590452); -- Arcsine of a negative decimal number greater -1.

SELECT ASIN(NULL); -- Arcsine of NULL.

SELECT ASIN(SIN(PI())); -- Arcsine of a sine expression.

/*

Errors for the following cases:

SELECT ASIN(75); -- Arcsine of a positive integer greater then 1.

SELECT ASIN(2.718281828459); -- Arcsine of a positive decimal number greater then 1.

SELECT ASIN(-1000); -- Arcsine of a negative integer smaller then -1.

SELECT ASIN(-2.7); -- Arcsine of a negative decimal number smaller then -1.

*/



/* ATAN */

SELECT ATAN(13); -- Arctangent of a positive integer.

SELECT ATAN(-5464); -- Arctangent of a negative integer.

SELECT ATAN(0); -- Arctangent of 0.

SELECT ATAN(0.718281828); -- Arctangent of a positive decimal number.

SELECT ATAN(65456.718281828); -- Arctangent of a positive decimal number.

SELECT ATAN(-0.7182818284590452); -- Arctangent of a negative decimal number.

SELECT ATAN(-252.718); -- Arctangent of a negative decimal number.

SELECT ATAN(NULL); -- Arctangent of NULL.

SELECT ATAN(TAN(PI() / 2)); -- Arctangent of a tangent expression. Returns the argument of tangent, when argument between - Pi / 2 and Pi / 2.

SELECT ATAN(TAN(PI())); -- Arctangent of a tangent expression.



/* ATN2 */

SELECT ATN2(1, 0.718281828); -- Positive integer in the first argument, decimal number in the second argument.

SELECT ATN2(-3.14, 0.718281828) -- Negative decimal number in the first argument, positive decimal number in the second argument.

SELECT ATN2(0, 0.718281828718281828) -- 0 in the first argument, some number in the second argument.

SELECT ATN2(0, 35) -- 0 in the first argument, some number in the second argument.

SELECT ATN2(0, -45.1111) -- 0 in the first argument, some number in the second argument.

SELECT ATN2(0, -1234) -- 0 in the first argument, some number in the second argument.

SELECT ATN2(12, 0) -- Some number in the first argument, 0 in the second argument.

SELECT ATN2(3.14, 0) -- Some number in the first argument, 0 in the second argument.

SELECT ATN2(-13, 0) -- Some number in the first argument, 0 in the second argument.

SELECT ATN2(-0.81237, 0) -- Some number in the first argument, 0 in the second argument.

SELECT ATN2(NULL, 0.718281828); -- NULL in the first argument, some number in the second argument.

SELECT ATN2(-314, NULL); -- Some number in the first argument, NULL in second the argument.



/* CEILING */

SELECT CEILING(43); -- CEILING of a positive integer.

SELECT CEILING(3.1415926535); -- CEILING of a positive decimal number.

SELECT CEILING(0); -- CEILING of 0.

SELECT CEILING(-3141); -- CEILING of a negative integer.

SELECT CEILING(-3.1415926535); -- CEILING of a negative decimal number.

SELECT CEILING(NULL); -- CEILING of NULL.

SELECT CEILING(3 * 4 - (1.234 + 25)); -- CEILING of some mathematical expression.



/* COS */

SELECT COS(0); -- Cosine of 0.

SELECT COS(8847); -- Cosine of some positive integer.

SELECT COS(14.271); -- Cosine of some positive decimal number.

SELECT COS(0.94819); -- Cosine of some positive decimal number.

SELECT COS(-54); -- Cosine of some negative integer.

SELECT COS(-0.781561); -- Cosine of some negative decimal number.

SELECT COS(NULL); -- Cosine of NULL.

SELECT COS(PI() / 2 + 43.16 - PI()); -- Cosine of some mathematical expression.

SELECT COS(ACOS(0.64)); -- Cosine of a arccosine expression.



/* COT */

SELECT COT(14); -- Cotangent of some positive integer.

SELECT COT(0.117434); -- Cotangent of some positive decimal number.

SELECT COT(9801.117434); -- Cotangent of some positive decimal number.

SELECT COT(-414); -- Cotangent of some negative integer.

SELECT COT(-0.117434); -- Cotangent of some negative decimal number.

SELECT COT(-9801.117434); -- Cotangent of some negative decimal number.

SELECT COT(NULL); -- Cotangent of NULL.


/*

Errors for the following cases:

SELECT COT(0); -- Cotangent of 0.

*/



/* DEGREES */

SELECT DEGREES(7813); -- Degrees of some positive integer.

SELECT DEGREES(12); -- Degrees of some positive integer.

SELECT DEGREES(12.0); -- Degrees of some positive integer (as a float datatype).

SELECT DEGREES(3.99162); -- Degrees of some positive decimal number.

SELECT DEGREES(0); -- Degrees of 0.

SELECT DEGREES(-0.8177); -- Degrees of some negative decimal number.

SELECT DEGREES(-9801); -- Degrees of some negative integer.

SELECT DEGREES(-9801.0); -- Degrees of some negative integer (as a float datatype).

SELECT DEGREES(PI() / 2); -- Degrees of Pi / 2.

SELECT DEGREES(PI()); -- Degrees of Pi.

SELECT DEGREES(2 * PI()); -- Degrees of 2 * Pi.

SELECT DEGREES(-PI() / 2); -- Degrees of minus Pi / 2.

SELECT DEGREES(-PI()); -- Degrees of minus Pi.

SELECT DEGREES(NULL); -- Degrees of NULL.



/* EXP */

SELECT EXP(0); -- Exponential value 0.

SELECT EXP(10); -- Exponential value of some positive integer.

SELECT EXP(10.0); -- Exponential value of some positive integer (as a float datatype).

SELECT EXP(5.918); -- Exponential value of some positive decimal number.

SELECT EXP(0.5918); -- Exponential value of some positive decimal number.

SELECT EXP(-0.031); -- Exponential value of some negative decimal number.

SELECT EXP(-2.13144); -- Exponential value of some negative decimal number.

SELECT EXP(-10); -- Exponential value of some negative integer.

SELECT EXP(-567); -- Exponential value of some negative integer.

SELECT EXP(-745.14); -- Returns 0 for numbers smaller than approximately -745.14.

SELECT EXP(-746); -- Returns 0 for numbers smaller than approximately -745.14.

SELECT EXP(-1611.9817); -- Returns 0 for numbers smaller than approximately -745.14.

SELECT EXP(NULL); -- Exponential value of NULL.

SELECT EXP(6 * 0.1355 + 0.11 * PI()); -- Exponential value of some mathematical expression.

SELECT EXP(LOG(10)); -- Exponential value of some natural logarithmic expression.


/*

Errors for the following cases:

SELECT EXP(1000); 

*/



/* FLOOR */

SELECT FLOOR(100); -- Floor of some positive integer number.

SELECT FLOOR(78.191); -- Floor of some positive decimal number.

SELECT FLOOR(0); -- Floor of 0.

SELECT FLOOR(-1934); -- Floor of some negative integer number.

SELECT FLOOR(-100.917); -- Floor of some negative decimal number.

SELECT FLOOR(NULL); -- Floor of NULL.

SELECT FLOOR(0.5 * CEILING(6.12) - 1); -- Floor of some mathematical expression.



/* LOG */

SELECT LOG(12); -- Natural logarithm of 12.

SELECT LOG(12, 2); -- Logarithm of base 2 of 12.

SELECT LOG(NULL); -- Natural logarithm of NULL.

SELECT LOG(NULL, 15); -- Logarithm of base 15 (and for every other base) of NULL.

SELECT LOG(11, NULL); -- NULL, if the base of the logarithm is NULL.

SELECT LOG(0.99999999999999995); -- Return 0 for numbers really close to 1.

SELECT LOG(1.000000000000000091); -- Return 0 for numbers really close to 1.

SELECT LOG(EXP(2)); -- Natural logarithm of a exponential expression.

SELECT LOG(EXP(1.12 - 0.11 * 91)); -- Natural logarithm of a exponential expression.

SELECT LOG(POWER(5, 2), 5);

/*

Errors for the following cases:

SELECT LOG(-12); -- Natural logarithm (error for every other base) of a negative integer.

SELECT LOG(-0.01); -- Natural logarithm (error for every other base) of a negative decimal number.

SELECT LOG(0); -- Natural logarithm (error for every other base) of 0.

*/



/* LOG10 */

SELECT
	CASE 
		WHEN LOG10(22) = LOG(22, 10) THEN 'True' 
		ELSE 'False'
	END; -- Equal.

SELECT
	CASE 
		WHEN LOG10(41) = LOG(41, 10) THEN 'True' 
		ELSE 'False'
	END; -- Equal.

SELECT
	CASE 
		WHEN LOG10(12) = LOG(12, 10) THEN 'True' 
		ELSE 'False'
	END; -- Not equal!

SELECT
	CASE 
		WHEN LOG10(50) = LOG(50, 10) THEN 'True' 
		ELSE 'False'
	END; -- Not Equal.

SELECT LOG10(POWER(10, 6));



/* PI */

SELECT PI(); -- Returns Pi.

SELECT 2 * PI() - 1; -- Using Pi in mathematical expressions.

SELECT 0.5 * POWER(PI(), 2); -- Using Pi in mathematical expressions.

SELECT DEGREES(PI()); -- Pi in combination with degrees function.



/* RAND */

SELECT RAND(); -- Returns a pseudo-random number.

SELECT RAND(1); -- Returns a pseudo-random number with seed value 1.

SELECT RAND(1), RAND(1), RAND(1);

SELECT RAND(), RAND(), RAND(); -- Returns pseudo-random numbers.

SELECT 32 * RAND(); -- Returns a pseudo-random number greater then 1. 

SELECT 32 * RAND(2); -- Returns a pseudo-random number with seed value greater then 1. 



/* SIGN */

SELECT SIGN(110); -- Sign of some positive integer number.

SELECT SIGN(110.0); -- Sign of some positive integer number (as a float datatype).

SELECT SIGN(110.00); -- Sign of some positive integer number (as a float datatype).

SELECT SIGN(1.314); -- Sign of some positive decimal number.

SELECT SIGN(0); -- Sign of 0.

SELECT SIGN(-110); -- Sign of some negative integer number.

SELECT SIGN(-110.0); -- Sign of some negative integer number (as a float datatype).

SELECT SIGN(-110.00); -- Sign of some negative integer number (as a float datatype).

SELECT SIGN(-1.314); -- Sign of some negative decimal number.

SELECT SIGN(NULL); -- Sign of some negative decimal number.



/* SIN */

SELECT SIN(0); -- Sine of 0.

SELECT SIN(8847); -- Sine of some positive integer.

SELECT SIN(14.271); -- Sine of some positive decimal number.

SELECT SIN(0.94819); -- Sine of some positive decimal number.

SELECT SIN(-54); -- Sine of some negative integer.

SELECT SIN(-0.781561); -- Sine of some negative decimal number.

SELECT SIN(NULL); -- Sine of NULL.

SELECT SIN(PI() / 2 + 43.16 - PI()); -- Sine of some mathematical expression.

SELECT SIN(ASIN(0.64)); -- Sine of a arcsine expression.