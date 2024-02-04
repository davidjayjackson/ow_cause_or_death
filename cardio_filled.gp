# Gnuplot script for plotting CSV data with transparent filled areas

# Setting the datafile separator as comma for CSV
set datafile separator ','

# Setting the title of the plot
set title 'Leading Cause of Deaths(including USA)? Cardiovascular'

# Setting labels for axes
set xlabel 'Year'
set ylabel 'Deaths'

# Setting the output format (change as needed, e.g., png, pdf, etc.)
set terminal jpeg
set output 'cardio_filled.jpeg'
set grid

# Positioning the legend at the top left
set key top left
set key title "**Income Bracket**"
set key font ",8"

# Setting the style for transparent fill
set style fill transparent solid 0.2 noborder

# Plotting the data with filled curves
plot 'data/highinc.csv' using 3:15 with lines title "High" linewidth 2,\
     '' using 3:15 with filledcurves x1 title "",\
     'data/uppermid.csv' using 3:15 with lines title "Upper Middle" linewidth 2,\
     '' using 3:15 with filledcurves x1 title "",\
     'data/lowermid.csv' using 3:15 with lines title "Lower Middle" linewidth 2,\
     '' using 3:15 with filledcurves x1 title "",\
     'data/lowhinc.csv' using 3:15 with lines title "Lower" linewidth 2,\
     '' using 3:15 with filledcurves x1 title "",\
     'data/usa.csv' using 3:15 with lines title "USA" linewidth 2,\
     '' using 3:15 with filledcurves x1 title ""
     # 'data/world.csv' using 3:15 with lines title "World" linewidth 2,\
     # '' using 3:15 with filledcurves x1 title ""
