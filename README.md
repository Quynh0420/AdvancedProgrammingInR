# AdvancedProgrammingInR
Design 2 versions of a function to apply double breakout volatility model on a time series. Use apply-family functions, for loop, mapping functions, C++ code in R. Compare the efficiency between 2 versions and use code profiling to find out bottlenecks.

We have 2 main files:
1. AdvR_Working_Code_QUYNH_BUI_393519.R : this script file includes 2 versions of the function, as well as the code to test the efficicency of each version and code profiling.
2. AdvR_PRESENTATION_QUYNH_BUI_3931519.Rmd : this markdown file is the presentation of the project. It summaries all the information containing in the project including Introduction (the purpose of the functions, function arguments and what function returns), Function description (similariy and difference between 2 versions), The use of function and efficiency comparision, Code profiling, Conclusion. When we knit this R-markdown file, it will generate a slide presentation in html format.

We have 4 supporting files:
1. function_install.RtoolsPkgbuild.R : this file assists in installing the necessary library in the 2 main files above.
2. all_myresult.RData: this file contains all the results generated  from  "AdvR_Working_Code_QUYNH_BUI_393519.R" file. These result will be loaded in the "AdvR_PRESENTATION_QUYNH_BUI_3931519.Rmd"
3. Microbench_Autoplot.png and Microbench_Boxplot.png: these 2 image files are generated from "AdvR_Working_Code_QUYNH_BUI_393519.R" file. It is included in the markdown file "AdvR_PRESENTATION_QUYNH_BUI_3931519.Rmd" to be shown in the presentation.
