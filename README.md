# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
### Linear Regression Model
![image](https://user-images.githubusercontent.com/109488343/211123702-57df7f3a-fba6-4f77-a689-94b3a6dc71d8.png)
### Linear Regression Model Summary
![image](https://user-images.githubusercontent.com/109488343/211123637-418ff5b2-8d9e-45cf-acfc-12b761fc10a1.png)

- According to the analysis, the variables/coefficients that proviede a non-random amout of varience to the mpg values are; vehicle weight (0.0776), spoiler angle (0.3069) and AWD (0.1852).
- The slope of the linear model is not considered to be zero since the p value is under .05.
- This linear model predicts the mpg of the MechaCar prototypes effectivly because the Multiple R-squared value is 0.7149.

## Sumary Statiscits on Suspension Coils

### Summary DataFrame
![image](https://user-images.githubusercontent.com/109488343/211124477-b1fae879-43e7-4fac-a71f-d9291768cf6b.png)

### Per Lot DataFrame
![image](https://user-images.githubusercontent.com/109488343/211124631-e5adbd96-270a-44ff-ab3f-edbed9d48e43.png)

The manufacturing data meets the design specification of not excedding 100 pounds PSI for the overall lots (Varience PSI: 62.29356). 
Individually, lot 1 (Varience PSI: 0.9795918) and lot 2 (Varience PSI: 7.493878) meet the design specification, while lot 3 (Varience PSI: 170.2861224) does not.


## T-Tests on Suspension Coils

### Overall
![image](https://user-images.githubusercontent.com/109488343/211123967-7e2b0068-5aaa-49f6-a605-5295bcb72013.png)
### Lot 1
![image](https://user-images.githubusercontent.com/109488343/211124020-2c09368f-6a9d-464f-aa68-e83a5087b16e.png)
### Lot 2
![image](https://user-images.githubusercontent.com/109488343/211124039-30c303f5-dd31-4527-8cf5-60afbd51e25d.png)
### Lot 3
![image](https://user-images.githubusercontent.com/109488343/211124082-9ed91c18-accd-4ed3-bfe6-98a6643d0077.png)

P-value summary:
  - Overall (0.06028)
  - Lot 1 (1.00)
  - Lot 2 (0.6072)
  - Lot 3 (0.04168)
Overall, the p-value is above the 0.05 significance level. Individually, Lots 1 and 2 are above 0.05 while Lot 3 is the only lot to fall below 0.05.



