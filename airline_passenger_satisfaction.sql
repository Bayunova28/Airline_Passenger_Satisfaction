/* Load airline passenger satisfaction dataset */
SELECT *
FROM Transportation..airline_passenger_satisfaction;

/* How many dataset rows */
SELECT COUNT(*) AS total_rows 
FROM Transportation..airline_passenger_satisfaction;

/* How many total passenger of each gender */
SELECT Gender,
	   COUNT(ID) AS total_passenger
FROM Transportation..airline_passenger_satisfaction
GROUP BY Gender
ORDER BY total_passenger DESC;

/* How many total passenger of each customer type */
SELECT [Customer Type],
	   COUNT(ID) AS total_passenger
FROM Transportation..airline_passenger_satisfaction
GROUP BY [Customer Type]
ORDER BY total_passenger DESC;

/* How many total passenger of each type of travel */
SELECT [Type of Travel],
	   COUNT(ID) AS total_passenger
FROM Transportation..airline_passenger_satisfaction
GROUP BY [Type of Travel]
ORDER BY total_passenger DESC;

/* How many total passenger of each class */
SELECT Class,
	   COUNT(ID) AS total_passenger
FROM Transportation..airline_passenger_satisfaction
GROUP BY Class
ORDER BY total_passenger DESC;

/* How many total passenger of each satisfaction */
SELECT Satisfaction,
	   COUNT(ID) AS total_passenger
FROM Transportation..airline_passenger_satisfaction
GROUP BY Satisfaction
ORDER BY total_passenger DESC;

/* How many total passenger and average flight distance where the age less than 20 */
SELECT Class,
	   [Customer Type],
	   [Type of Travel],
	   Gender,
	   Satisfaction,
	   ROUND(AVG([Flight Distance]), 2) AS avg_flight_distance,
	   COUNT(ID) AS total_passenger
FROM Transportation..airline_passenger_satisfaction
WHERE Age < 20
GROUP BY Class,
	     [Customer Type],
		 [Type of Travel],
		 Gender,
		 Satisfaction
ORDER BY total_passenger DESC;

/* How many total passenger and average flight distance where the age between 20 until 30 */
SELECT Class,
	   [Customer Type],
	   [Type of Travel],
	   Gender,
	   Satisfaction,
	   ROUND(AVG([Flight Distance]), 2) AS avg_flight_distance,
	   COUNT(ID) AS total_passenger
FROM Transportation..airline_passenger_satisfaction
WHERE Age BETWEEN 20 AND 30
GROUP BY Class,
	     [Customer Type],
		 [Type of Travel],
		 Gender,
		 Satisfaction
ORDER BY total_passenger DESC;

/* How many total passenger and average flight distance where the age greater than 30 */
SELECT Class,
	   [Customer Type],
	   [Type of Travel],
	   Gender,
	   Satisfaction,
	   ROUND(AVG([Flight Distance]), 2) AS avg_flight_distance,
	   COUNT(ID) AS total_passenger
FROM Transportation..airline_passenger_satisfaction
WHERE Age > 30
GROUP BY Class,
	     [Customer Type],
		 [Type of Travel],
		 Gender,
		 Satisfaction
ORDER BY total_passenger DESC;

/* How many total passenger and average departure delay minutes delay where the age less than 20 */
SELECT Class,
	   [Customer Type],
	   [Type of Travel],
	   Gender,
	   Satisfaction,
	   COUNT(ID) AS total_passenger,
	   ROUND(AVG([Departure Delay]), 2) AS avg_departure_delay_minutes
FROM Transportation..airline_passenger_satisfaction
WHERE Age < 20
GROUP BY Class,
		 [Customer Type],
		 [Type of Travel],
		 Gender,
		 Satisfaction
ORDER BY avg_departure_delay_minutes DESC;

/* How many total passenger and average departure delay minutes where the age between 20 until 30 */
SELECT Class,
	   [Customer Type],
	   [Type of Travel],
	   Gender,
	   Satisfaction,
	   COUNT(ID) AS total_passenger,
	   ROUND(AVG([Departure Delay]), 2) AS avg_departure_delay_minutes
FROM Transportation..airline_passenger_satisfaction
WHERE Age BETWEEN 20 AND 30
GROUP BY Class,
		 [Customer Type],
		 [Type of Travel],
		 Gender,
		 Satisfaction
ORDER BY avg_departure_delay_minutes DESC;

/* How many total passenger and average departure delay minutes where the age greater than 30 */
SELECT Class,
	   [Customer Type],
	   [Type of Travel],
	   Gender,
	   Satisfaction,
	   COUNT(ID) AS total_passenger,
	   ROUND(AVG([Departure Delay]), 2) AS avg_departure_delay_minutes
FROM Transportation..airline_passenger_satisfaction
WHERE Age > 30
GROUP BY Class,
		 [Customer Type],
		 [Type of Travel],
		 Gender,
		 Satisfaction
ORDER BY avg_departure_delay_minutes DESC;

/* How many total passenger and average arrival delay minutes where the age less than 20 */
SELECT Class,
	   [Customer Type],
	   [Type of Travel],
	   Gender,
	   Satisfaction,
	   COUNT(ID) AS total_passenger,
	   ROUND(AVG([Arrival Delay]), 2) AS avg_arrival_delay_minutes
FROM Transportation..airline_passenger_satisfaction
WHERE Age < 20
GROUP BY Class,
		 [Customer Type],
		 [Type of Travel],
		 Gender,
		 Satisfaction
ORDER BY avg_arrival_delay_minutes DESC;

/* How many total passenger and average arrival delay minutes where the age between 20 until 30 */
SELECT Class,
	   [Customer Type],
	   [Type of Travel],
	   Gender,
	   Satisfaction,
	   COUNT(ID) AS total_passenger,
	   ROUND(AVG([Arrival Delay]), 2) AS avg_arrival_delay_minutes
FROM Transportation..airline_passenger_satisfaction
WHERE Age BETWEEN 20 AND 30
GROUP BY Class,
		 [Customer Type],
		 [Type of Travel],
		 Gender,
		 Satisfaction
ORDER BY avg_arrival_delay_minutes DESC;

/* How many total passenger and average arrival delay minutes where the age greater than 30 */
SELECT Class,
	   [Customer Type],
	   [Type of Travel],
	   Gender,
	   Satisfaction,
	   COUNT(ID) AS total_passenger,
	   ROUND(AVG([Arrival Delay]), 2) AS avg_arrival_delay_minutes
FROM Transportation..airline_passenger_satisfaction
WHERE Age > 30
GROUP BY Class,
		 [Customer Type],
		 [Type of Travel],
		 Gender,
		 Satisfaction
ORDER BY avg_arrival_delay_minutes DESC;

/* How many ease online booking rating and total passenger where customer type is returning */
SELECT Class, 
       Gender, 
       [Type of Travel], 
	   Age,
       COUNT(ID) AS total_passenger, 
       ROUND(AVG([Ease of Online Booking]), 2) AS online_booking_rating
FROM Transportation..airline_passenger_satisfaction
WHERE [Customer Type] = 'Returning'
GROUP BY Class, 
         Gender, 
         [Type of Travel],
		 Age
ORDER BY online_booking_rating DESC;


/* How many ease online booking rating and total passenger where customer type is first time */
SELECT Class, 
       Gender, 
       [Type of Travel], 
	   Age,
       COUNT(ID) AS total_passenger, 
       ROUND(AVG([Ease of Online Booking]), 2) AS online_booking_rating
FROM Transportation..airline_passenger_satisfaction
WHERE [Customer Type] = 'First-time'
GROUP BY Class, 
         Gender, 
         [Type of Travel],
		 Age
ORDER BY online_booking_rating DESC;

/* How many total passenger based on class and satisfaction */
SELECT Class, 
	   Satisfaction,
	   COUNT(ID) AS total_passenger
FROM Transportation..airline_passenger_satisfaction
GROUP BY Class,
		 Satisfaction
ORDER BY total_passenger DESC;





