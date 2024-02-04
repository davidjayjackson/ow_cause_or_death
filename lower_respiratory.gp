# Gnuplot script for plotting CSV data

# Setting the datafile separator as comma for CSV
set datafile separator ','

# Setting the title of the plot
set title 'World Cause of Death: Lower respiratory (By Income Brackets)'

# Setting labels for axes
set xlabel 'Year'
set ylabel 'Deaths'

# Setting the output format (change as needed, e.g., png, pdf, etc.)
set terminal jpeg
set output 'lower_respiratory.jpeg'
set grid

# Positioning the legend at the top left
set key top right

# Plotting the data
plot 'data/highinc.csv' using 3:16 with lines title "High" linewidth 2,\
     'data/uppermid.csv' using 3:16 with lines title "Upper Middle" linewidth 2,\
     'data/lowermid.csv' using 3:16 with lines title "Lower Middle" linewidth 2,\
     'data/lowhinc.csv' using 3:16 with lines title "Lower" linewidth 2,\
     'data/usa.csv' using 3:16 with lines title "USA" linewidth 2
     # 'data/world.csv' using 3:15 with lines title "World" linewidth 2,\
      'data/usa.csv' using 3:15 with lines title "USA" linewidth 2
