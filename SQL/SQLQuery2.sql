SELECT DISTINCT
	MIN(NumericalColumn) AS Minimum,
	MAX(NumericalColumn) AS Maximum,
	Round(AVG(NumericalColumn), 2) AS Mean,
	Round(VAR(NumericalColumn), 2) AS Variance,
	Round(STDEV(NumericalColumn), 2) AS StandardDeviation,
	MAX(NumericalColumn) - MIN(NumericalColumn) AS Range,
	(
    	SELECT
        	COUNT(NumericalColumn)
       FROM Table
       ) AS NumericalColumnCount,
	(
	SELECT 
    		COUNT(NumericalColumn)
     	FROM (
     		SELECT DISTINCT 
        		NumericalColumn 
        	FROM Table
		)
        ) AS DistinctValues,
	(
			SELECT 
				COUNT(NumericalColumn)
			FROM (
				SELECT
					COUNT(NumericalColumn) AS NumericalColumnCount
                FROM Table
                GROUP BY NumericalColumn
                )
                WHERE NumericalColumnCount = 1
                ) AS UniqueValues,
	(
    	SELECT
        	COUNT(NumericalColumn)
		FROM Table
        WHERE NumericalColumn IS NULL
        ) AS NullCount,
	(
        	SELECT
            	NumericalColumnCount - NullCount
            FROM (
            	SELECT 
                	COUNT(NumericalColumn) AS NumericalColumnCount,
                    (
    				SELECT
        				COUNT(NumericalColumn)
						FROM Table
        			WHERE NumericalColumn IS NULL
        			) AS NullCount 
                	FROM Table
                    )
                ) AS NotNullCount,
	(
    	SELECT
        	COUNT(NumericalColumn)
		FROM Table
        WHERE NumericalColumn > 0
        ) AS PositiveCount,
	(
    	SELECT
        	COUNT(NumericalColumn)
		FROM Table
        WHERE NumericalColumn < 0
        ) AS NegativeCount,
	(
    	SELECT
        	COUNT(NumericalColumn)
		FROM Table
        WHERE NumericalColumn = 0
        ) AS ZeroCount
FROM Table
