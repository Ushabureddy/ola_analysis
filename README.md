# Ola_analysis

## Ola Ride Analytics Dashboard

This repository contains a Power BI (.pbix) file featuring an interactive **Ola Ride Analytics Dashboard** along with SQL queries on the `ola` dataset. The dashboard provides insights into ride bookings, cancellations, revenue, and ratings for the year 2024.

## Dashboard Overview
- **Key Metrics**: Total Bookings: 148.77K, Success Bookings: 92.55K, Cancelled Bookings: 37.43K, Cancellation Rate: 25%
- **Booking Status Breakdown**: Pie chart showing distribution of bookings (Completed, Cancelled by Customer, Cancelled by Driver, No Driver Found)
- **Ride Volume Over Time**: Line chart tracking ride volume from January to December 2024 (peak: 12,987 rides in August)
- **Cancellation Analysis**: Pie charts showing reasons for customer and driver cancellations
- **Revenue Insights**: Revenue by payment method (UPI, Cash, Credit Card, Debit Card, Uber Wallet) and ride distance distribution bar chart
- **Ratings**: Driver and customer ratings by vehicle type
- **Vehicle Type Performance**: Table showing total booking value, success booking value, average distance, and total distance traveled by vehicle type
- **Navigation & Interactivity**: Includes date slider (01-01-2024 to 30-12-2024), bookmarks, and page navigation buttons (Overall, Vehicle Type, Revenue, Cancellation, Ratings)

## How to Use
- Download the `.pbix` file from this repository
- Open it in **Power BI Desktop** to explore the interactive dashboard
- Use the date slider, navigation buttons, and bookmarks to explore data dynamically
- Drill-through and hover tooltips provide deeper insights into vehicle types, revenue, and cancellation reasons

## SQL Analysis on Ola Dataset
1. **Retrieve all successful bookings**
```sql
SELECT * FROM ola WHERE `Booking Status` = 'Completed';
````

2. **Average ride distance per vehicle type**

```sql
SELECT `Vehicle Type`, AVG(`Ride Distance`) AS avg_distance FROM ola GROUP BY `Vehicle Type`;
```

3. **Total number of rides cancelled by customers**

```sql
SELECT COUNT(*) AS total_cancelled_by_customer FROM ola WHERE `Cancelled Rides by Customer` = 1;
```

4. **Top 5 customers by number of rides booked**

```sql
SELECT `Customer ID`, COUNT(`Booking ID`) AS total_rides FROM ola GROUP BY `Customer ID` ORDER BY total_rides DESC LIMIT 5;
```

5. **Rides cancelled by drivers due to personal/car-related issues**

```sql
SELECT COUNT(*) AS total_cancelled_by_driver FROM ola WHERE `Driver Cancellation Reason` = 'Personal & Car related issues';
```

6. **Maximum and minimum driver ratings for Premier Sedan**

```sql
SELECT MAX(`Driver Ratings`) AS max_rating, MIN(`Driver Ratings`) AS min_rating FROM ola WHERE `Vehicle Type` = 'Premier Sedan';
```

7. **Rides paid using UPI**

```sql
SELECT * FROM ola WHERE `Payment Method` = 'UPI';
```

8. **Average customer rating per vehicle type**

```sql
SELECT `Vehicle Type`, AVG(`Customer Rating`) AS avg_customer_rating FROM ola GROUP BY `Vehicle Type`;
```

9. **Total booking value of successfully completed rides**

```sql
SELECT SUM(`Booking Value`) AS total_successful_value FROM ola WHERE `Booking Status` = 'Completed';
```

10. **Incomplete rides along with the reason**

```sql
SELECT `Booking ID`, `Incomplete Rides Reason` FROM ola WHERE `Incomplete Rides` = 1;
```

## Credits

This project was inspired by the YouTube tutorial:  
**[Power BI Dashboard Tutorial]([https://youtu.be/1uPUyT9LoHQ](https://youtu.be/1uPUyT9LoHQ?si=cfjTtS1NMMp4FrNU))**  
Channel: [Top Varsity](www.youtube.com/@TopVarSity)  
The tutorial was used as a reference to understand dashboard design and visualization techniques.


Channel: Learn Power BI

## Contact

 for any queries: ushabureddy@gmail.com



