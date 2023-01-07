# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![image](https://user-images.githubusercontent.com/109488343/211123637-418ff5b2-8d9e-45cf-acfc-12b761fc10a1.png)

- According to the analysis, the variables/coefficients that proviede a non-random amout of varience to the mpg values are; vehicle weight (0.0776), spoiler angle (0.3069) and AWD (0.1852).
- The slope of the linear model is not considered to be zero since the p value is under .05.
- This linear model predicts the mpg of the MechaCar prototypes effectivly because the Multiple R-squared value is 0.7149.

## Sumary Statiscits on Suspension Coils

The manufacturing data meets the design specification of not excedding 100 pounds PSI for the overall lots (Varience PSI: 62.29356). 
Individually, lot 1 (Varience PSI: 0.9795918) and lot 2 (Varience PSI: 7.493878) meet the design specification, while lot 3 (Varience PSI: 170.2861224) does not.


## T-Tests on Suspension Coils
P-value summary:
  - Overall (0.06028)
  - Lot 1 (1.00)
  - Lot 2 (0.6072)
  - Lot 3 (0.04168)
Overall, the p-value is above the 0.05 significance level. Individually, Lots 1 and 2 are above 0.05 while Lot 3 is the only lot to fall below 0.05.



