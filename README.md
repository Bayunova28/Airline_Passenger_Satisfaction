# Airline Passenger Satisfaction
<img src="https://github.com/Bayunova28/Airline_Passenger_Satisfaction/blob/master/cover.jpg" height="450" width="1100">

## Background
<p align="justify">The crowds are back at the airport, those empty middle seats are occupied again and airlines in North America are raising ticket prices in response to 
soaring fuel costs and continued strong leisure travel demand all at the expense of passenger satisfaction. While dramatically higher prices could harm airline brands in 
the long term, for now, load volume is continuing to climb and passengers are willing to be assigned a middle seat in exchange for getting out of their houses, according 
to the J.D. Power 2022 North America Airline Satisfaction Study, released today.<p> 

<p align="justify">"Customer satisfaction with North American airlines climbed to unprecedented highs for all of the wrong reasons during the past two years," said 
Michael Taylor, travel intelligence lead at J.D. Power. "Fewer passengers meant more space on airplanes, less waiting in line and more attention from flight attendants. 
But that business model was simply not sustainable. Now, with volumes surging and some remnants of pandemic-era constraints still in place, passenger satisfaction is in 
decline but that’s not really bad news. If airlines can find ways to manage these growing volumes while making some small adjustments to help passengers feel more valued,
they should be able to manage this return to normal".<p>

## Data Analysis Expressions (DAX) Calculation
* <b>Cleanliness Ratings</b>
```
Cleanliness Rating = 
VAR __MAX_NUMBER_OF_STARS = 5
VAR __MIN_RATED_VALUE = 0
VAR __MAX_RATED_VALUE = 5
VAR __BASE_VALUE = AVERAGE('airline_passenger_satisfaction'[Cleanliness])
VAR __NORMALIZED_BASE_VALUE =
	MIN(
		MAX(
			DIVIDE(
				__BASE_VALUE - __MIN_RATED_VALUE,
				__MAX_RATED_VALUE - __MIN_RATED_VALUE
			),
			0
		),
		1
	)
VAR __STAR_RATING = ROUND(__NORMALIZED_BASE_VALUE * __MAX_NUMBER_OF_STARS, 0)
RETURN
	IF(
		NOT ISBLANK(__BASE_VALUE),
		REPT(UNICHAR(9733), __STAR_RATING)
			& REPT(UNICHAR(9734), __MAX_NUMBER_OF_STARS - __STAR_RATING)
	)
  ```
* <b>Ease Online Booking Ratings</b>
 ```
 Ease Online Booking Rating =
 VAR __MAX_NUMBER_OF_STARS = 5
VAR __MIN_RATED_VALUE = 0
VAR __MAX_RATED_VALUE = 5
VAR __BASE_VALUE = AVERAGE('airline_passenger_satisfaction'[Ease of Online Booking])
VAR __NORMALIZED_BASE_VALUE =
	MIN(
		MAX(
			DIVIDE(
				__BASE_VALUE - __MIN_RATED_VALUE,
				__MAX_RATED_VALUE - __MIN_RATED_VALUE
			),
			0
		),
		1
	)
VAR __STAR_RATING = ROUND(__NORMALIZED_BASE_VALUE * __MAX_NUMBER_OF_STARS, 0)
RETURN
	IF(
		NOT ISBLANK(__BASE_VALUE),
		REPT(UNICHAR(9733), __STAR_RATING)
			& REPT(UNICHAR(9734), __MAX_NUMBER_OF_STARS - __STAR_RATING)
	)
  ```
* <b>Food and Drink Ratings</b>
```
Food and Drink Rating = 
VAR __MAX_NUMBER_OF_STARS = 5
VAR __MIN_RATED_VALUE = 0
VAR __MAX_RATED_VALUE = 5
VAR __BASE_VALUE = AVERAGE('airline_passenger_satisfaction'[Food and Drink])
VAR __NORMALIZED_BASE_VALUE =
	MIN(
		MAX(
			DIVIDE(
				__BASE_VALUE - __MIN_RATED_VALUE,
				__MAX_RATED_VALUE - __MIN_RATED_VALUE
			),
			0
		),
		1
	)
VAR __STAR_RATING = ROUND(__NORMALIZED_BASE_VALUE * __MAX_NUMBER_OF_STARS, 0)
RETURN
	IF(
		NOT ISBLANK(__BASE_VALUE),
		REPT(UNICHAR(9733), __STAR_RATING)
			& REPT(UNICHAR(9734), __MAX_NUMBER_OF_STARS - __STAR_RATING)
	)
```

* <b>Gate Location</b>
```
Gate Location Rating = 
VAR __MAX_NUMBER_OF_STARS = 5
VAR __MIN_RATED_VALUE = 0
VAR __MAX_RATED_VALUE = 5
VAR __BASE_VALUE = AVERAGE('airline_passenger_satisfaction'[Gate Location])
VAR __NORMALIZED_BASE_VALUE =
	MIN(
		MAX(
			DIVIDE(
				__BASE_VALUE - __MIN_RATED_VALUE,
				__MAX_RATED_VALUE - __MIN_RATED_VALUE
			),
			0
		),
		1
	)
VAR __STAR_RATING = ROUND(__NORMALIZED_BASE_VALUE * __MAX_NUMBER_OF_STARS, 0)
RETURN
	IF(
		NOT ISBLANK(__BASE_VALUE),
		REPT(UNICHAR(9733), __STAR_RATING)
			& REPT(UNICHAR(9734), __MAX_NUMBER_OF_STARS - __STAR_RATING)
	)
  ```
  
  * <b>In-flight Service</b>
  ```
  In-flight Service Rating = 
  VAR __MAX_NUMBER_OF_STARS = 5
VAR __MIN_RATED_VALUE = 0
VAR __MAX_RATED_VALUE = 5
VAR __BASE_VALUE = AVERAGE('airline_passenger_satisfaction'[In-flight Service])
VAR __NORMALIZED_BASE_VALUE =
	MIN(
		MAX(
			DIVIDE(
				__BASE_VALUE - __MIN_RATED_VALUE,
				__MAX_RATED_VALUE - __MIN_RATED_VALUE
			),
			0
		),
		1
	)
VAR __STAR_RATING = ROUND(__NORMALIZED_BASE_VALUE * __MAX_NUMBER_OF_STARS, 0)
RETURN
	IF(
		NOT ISBLANK(__BASE_VALUE),
		REPT(UNICHAR(9733), __STAR_RATING)
			& REPT(UNICHAR(9734), __MAX_NUMBER_OF_STARS - __STAR_RATING)
	)
  ```
  
  * <b>Total Passenger</b>
  ```
  Total Passenger =
  COUNT(airline_passenger_satisfaction[ID])
  ```
  
  ## Dashboard
  <img src="https://github.com/Bayunova28/Airline_Passenger_Satisfaction/blob/master/dashboard-report.png" height="500" width="1100">
  
  ## Acknowledgement
  Dataset Source : [Kaggle](https://www.kaggle.com/datasets/teejmahal20/airline-passenger-satisfaction?select=train.csv) 
