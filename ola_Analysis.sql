-- 1. retrieve all successful bookings
select * 
from ola
where `Booking Status` = 'Completed';

-- 2. find the average ride distance for each vehicle type
select `Vehicle Type`, avg(`Ride Distance`) as avg_distance
from ola
group by `Vehicle Type`;

-- 3. get the total number of cancelled rides by customers
select count(*) as total_cancelled_by_customer
from ola
where `Cancelled Rides by Customer` = 1;

-- 4. list the top 5 customers who booked the highest number of rides
select `Customer ID`, count(`Booking ID`) as total_rides
from ola
group by `Customer ID`
order by total_rides desc
limit 5;

-- 5. get the number of rides cancelled by drivers due to personal and car-related issues
select count(*) as total_cancelled_by_driver
from ola
where `Driver Cancellation Reason` = 'Personal & Car related issues';

-- 6. find the maximum and minimum driver ratings for prime sedan bookings
select max(`Driver Ratings`) as max_rating,
       min(`Driver Ratings`) as min_rating
from ola
where `Vehicle Type` = 'Premier Sedan';

-- 7. retrieve all rides where payment was made using UPI
select * 
from ola
where `Payment Method` = 'UPI';

-- 8. find the average customer rating per vehicle type
select `Vehicle Type`, avg(`Customer Rating`) as avg_customer_rating
from ola
group by `Vehicle Type`;

-- 9. calculate the total booking value of rides completed successfully
select sum(`Booking Value`) as total_successful_value
from ola
where `Booking Status` = 'Completed';

-- 10. list all incomplete rides along with the reason
select `Booking ID`, `Incomplete Rides Reason`
from ola
where `Incomplete Rides` = 1;   -- assuming 1 = Yes, 0 = No
