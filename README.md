# MechaCar Statistical Analysis
## Linear Regression to Predict MPG
Vehicle length and ground clearance help explain some of the mpg variance evident by very small p-values.  The small p-value suggests that we can reject the null hypothesis and say with sufficient evidence that the slope of the linear model is not zero.  Multiple R-squared is above 0.7 so it is evident that this particular linear model does a good job helping us predict what is happening in our current dataset.  However, AWD and spoiler_angle do not contribute or help us in any way so we may have an overfitting problem.  It is worth finding more significant variables if possible since we may not be able to generalize this dataset for future use.   
![linear_regression](/Images/linear_regression.png "linear_regression")  
## Summary Statistics on Suspension Coils
Out of all 3 lots, only Lot 3 exceeds a 100 PSI variance, which is above specification.  Across all lots combined, PSI is under 100.  
### Snapshot
![Snapshot](/Images/summarize_images.png "Snapshot")  
## T-Tests on Suspension Coils
### Density Plot Suspension Coils
![Density Plot](/Images/density_plot.png "Density Plot")  
### Lot 1, 2, 3 Findings
As expected, the one sample t-test on Lot 3 PSI vs. the overall mean returns a p-value higher than 0.05 so we can reject the null hypothesis and say with 95% confidence that the true mean is not equal to the overall population.      
![lot3ttest](/Images/lot3ttest.png "lot3ttest")  
  
Lot 2 and 3 return very low p-values, and running this same test, we would fail to reject the null hypothesis.
## Study Design: MechaCar vs Competition
First, gather "performance" data points from MechaCar:  
1. Horse power  
2. Torque  
3. Time 0-60 MPH  
  
Do the same for a competitor.  You can then test this hypothesis: If we assume that these three performance data points are what customers want, MechaCar will outperform the chosen competitor.  To reject the null hypothesis in favor of the alternative, we could see if a two-sample t-test generates a p-value of 0.05 or lower.  If so, we can say with 95% confidence that there is a statistical difference between the metrics that we test.  We would, of course, have to test each of these 3 metrics separately (I.E. MechaCar Horsepower vs. Competitor Horsepower, etc.) and would also want to make sure of the following:  
1. There is a difference   
2. The MechaCar mean is higher  
  
Taking this a step further, if in our second test, we find out the mean sample of Torque for MechaCar cars is 400 lb-ft vs. a competitor mean of 200, we can reject the null hypothesis assuming that the t-test yields a p-value of 0.05 or lower (assuming 95% confidence level).
