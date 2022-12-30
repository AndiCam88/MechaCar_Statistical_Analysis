R version 4.2.2 (2022-10-31 ucrt) -- "Innocent and Trusting"
Copyright (C) 2022 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> install.packages("tidyverse")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/andic/AppData/Local/R/win-library/4.2’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.2/tidyverse_1.3.2.zip'
Content type 'application/zip' length 428985 bytes (418 KB)
downloaded 418 KB

package ‘tidyverse’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\andic\AppData\Local\Temp\RtmpEfmxLx\downloaded_packages
> install.packages("jsonlite")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/andic/AppData/Local/R/win-library/4.2’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.2/jsonlite_1.8.4.zip'
Content type 'application/zip' length 1105056 bytes (1.1 MB)
downloaded 1.1 MB

package ‘jsonlite’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\andic\AppData\Local\Temp\RtmpEfmxLx\downloaded_packages
> setwd("C:/Users/andic/School Stuff/R_Analysis/MechaCar_Statistical_Analysis")
> library('dplyr')

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:
  
  filter, lag

The following objects are masked from ‘package:base’:
  
  intersect, setdiff, setequal, union

> install.library('dplyr')
Error in install.library("dplyr") : 
  could not find function "install.library"
> MechaCar_Df <- read.cvs('MechaCar_mpg')
Error in read.cvs("MechaCar_mpg") : could not find function "read.cvs"
> MechaCar_table <- read.csv(file ='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
> View(MechaCar_table)
> lm(qsec ~hp,MechaCar_table) #create linear model
Error in eval(predvars, data, env) : object 'qsec' not found
> lm(vehicle_Length ~ mpg, data = MechaCar_table)
Error in eval(predvars, data, env) : object 'vehicle_Length' not found
> lm(vehicle_length ~ mp, data = MechaCar_table)
Error in eval(predvars, data, env) : object 'mp' not found
> lm(vehicle_length ~ mpg, data = MechaCar_table)

Call:
  lm(formula = vehicle_length ~ mpg, data = MechaCar_table)

Coefficients:
  (Intercept)          mpg  
11.43247      0.07949  

> summary(lm(vehicle_length ~ mpg, MechCar_table))
Error in is.data.frame(data) : object 'MechCar_table' not found
> summary(lm(vehicle_length ~ mpg, MechaCar_table))

Call:
  lm(formula = vehicle_length ~ mpg, data = MechaCar_table)

Residuals:
  Min      1Q  Median      3Q     Max 
-2.7607 -1.0762 -0.2082  0.8851  3.2956 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept) 11.43247    0.71170  16.064  < 2e-16 ***
  mpg          0.07949    0.01492   5.326 2.63e-06 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.627 on 48 degrees of freedom
Multiple R-squared:  0.3715,	Adjusted R-squared:  0.3584 
F-statistic: 28.37 on 1 and 48 DF,  p-value: 2.632e-06

> total_Summary <-read.csv('suspention_coil.csv', check.names = F, stringsAsFactors = F)
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
  In file(file, "rt") :
  cannot open file 'suspention_coil.csv': No such file or directory
> Suspension_coil <-read.csv('Suspention_Coil.csv', check.names = F, stringsAsFactors = F)
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
  In file(file, "rt") :
  cannot open file 'Suspention_Coil.csv': No such file or directory
> setwd("C:/Users/andic/School Stuff/R_Analysis/MechaCar_Statistical_Analysis")
> Suspention_Coils <-read.csv('Suspention_Coil.csv', check.names = F, stringsAsFactors = F)
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
  In file(file, "rt") :
  cannot open file 'Suspention_Coil.csv': No such file or directory
> total_Summary <-read.csv('suspension_coil.csv', check.names = F, stringsAsFactors = F)
> View(total_Summary)
> summarize(mean(PSI),Median(PSI), Variance(PSI), SD(PSI))
Error in mean(PSI) : object 'PSI' not found
> total_Summary_data <-total_Summary%<% summarize(mean(PSI), Median(PSI), variance(PSI), SD(PSI))
Error in total_Summary %<% summarize(mean(PSI), Median(PSI), variance(PSI),  : 
                                       could not find function "%<%"
                                     > total_Summary_data <-total_Summary%>% summarize(mean(PSI), Median(PSI), variance(PSI), SD(PSI))
                                     Error in `summarize()`:
                                       ! Problem while computing `..2 = Median(PSI)`.
                                     Caused by error in `Median()`:
                                       ! could not find function "Median"
                                     Run `rlang::last_error()` to see where the error occurred.
                                     > total_Summary_data <-total_Summary%>% summarize(mean(PSI), median(PSI), variance(PSI), SD(PSI))
                                     Error in `summarize()`:
                                       ! Problem while computing `..3 = variance(PSI)`.
                                     Caused by error in `variance()`:
                                       ! could not find function "variance"
                                     Run `rlang::last_error()` to see where the error occurred.
                                     > total_Summary_data <-total_Summary%<% summarize(mean(PSI), Median(PSI), var(PSI), SD(PSI))
                                     Error in total_Summary %<% summarize(mean(PSI), Median(PSI), var(PSI),  : 
                                                                            could not find function "%<%"
                                                                          > total_Summary_data <-total_Summary %>% summarize(mean(PSI), median(PSI), var(PSI), SD(PSI))
                                                                          Error in `summarize()`:
                                                                            ! Problem while computing `..4 = SD(PSI)`.
                                                                          Caused by error in `SD()`:
                                                                            ! could not find function "SD"
                                                                          Run `rlang::last_error()` to see where the error occurred.
                                                                          > total_Summary_data <-total_Summary %>% summarize(mean(PSI), median(PSI), var(PSI), sd(PSI))
                                                                          > View(total_Summary_data)
                                                                          > View(total_Summary)
                                                                          > lot_summary <- total_Summary %>% group_by(Manufacturing_Lot) %>% summarize(mean(PSI), median(PSI), var(PSI), sd(PSI))
                                                                          > View(lot_summary)
                                                                          > t.test(total_Summary, mu = 1500)
                                                                          Error in if (stderr < 10 * .Machine$double.eps * abs(mx)) stop("data are essentially constant") : 
                                                                            missing value where TRUE/FALSE needed
                                                                          In addition: Warning messages:
                                                                            1: In mean.default(x) : argument is not numeric or logical: returning NA
                                                                          2: In var(x) : NAs introduced by coercion
                                                                          > t.test(total_Summary, mu = 1500)
                                                                          Error in if (stderr < 10 * .Machine$double.eps * abs(mx)) stop("data are essentially constant") : 
                                                                            missing value where TRUE/FALSE needed
                                                                          In addition: Warning messages:
                                                                            1: In mean.default(x) : argument is not numeric or logical: returning NA
                                                                          2: In var(x) : NAs introduced by coercion
                                                                          > > t.test(total_Summary$PSI, mu = 1500)
                                                                          Error: unexpected '>' in ">"
                                                                          >  t.test(total_Summary$PSI, mu = 1500)
                                                                          
                                                                          One Sample t-test
                                                                          
                                                                          data:  total_Summary$PSI
                                                                          t = -1.8931, df = 149, p-value = 0.06028
                                                                          alternative hypothesis: true mean is not equal to 1500
                                                                          95 percent confidence interval:
                                                                            1497.507 1500.053
                                                                          sample estimates:
                                                                            mean of x 
                                                                          1498.78 
                                                                          
                                                                          > t.test(subset(total_Summary, Manufacuring_Lot == "Lot1")$PSI, mu = 1500)
                                                                          Error in eval(e, x, parent.frame()) : object 'Manufacuring_Lot' not found
                                                                          > t.test(subset(total_Summary, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)
                                                                          
                                                                          One Sample t-test
                                                                          
                                                                          data:  subset(total_Summary, Manufacturing_Lot == "Lot1")$PSI
                                                                          t = 0, df = 49, p-value = 1
                                                                          alternative hypothesis: true mean is not equal to 1500
                                                                          95 percent confidence interval:
                                                                            1499.719 1500.281
                                                                          sample estimates:
                                                                            mean of x 
                                                                          1500 
                                                                          
                                                                          > t.test(subset(total_Summary, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)
                                                                          
                                                                          One Sample t-test
                                                                          
                                                                          data:  subset(total_Summary, Manufacturing_Lot == "Lot2")$PSI
                                                                          t = 0.51745, df = 49, p-value = 0.6072
                                                                          alternative hypothesis: true mean is not equal to 1500
                                                                          95 percent confidence interval:
                                                                            1499.423 1500.977
                                                                          sample estimates:
                                                                            mean of x 
                                                                          1500.2 
                                                                          
                                                                          > t.test(subset(total_Summary, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)
                                                                          
                                                                          One Sample t-test
                                                                          
                                                                          data:  subset(total_Summary, Manufacturing_Lot == "Lot3")$PSI
                                                                          t = -2.0916, df = 49, p-value = 0.04168
                                                                          alternative hypothesis: true mean is not equal to 1500
                                                                          95 percent confidence interval:
                                                                            1492.431 1499.849
                                                                          sample estimates:
                                                                            mean of x 