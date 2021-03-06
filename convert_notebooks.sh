
declare -a arr=(
                #"00-jupyter_introduction.ipynb"
                #"01-basic.ipynb"
                #"02-control_flow.ipynb"
                #"03-functions.ipynb"
                #"04-reusing_code.ipynb"
                #"05-numpy.ipynb"
                #"python_rehearsal"
                #"pandas_01_data_structures.ipynb"
                #"pandas_02_basic_operations.ipynb" 
                #"pandas_03_selecting_data.ipynb"
                #"pandas_04_time_series_data.ipynb"
                #"pandas_05_combining_datasets.ipynb"
                #"pandas_06_groupby_operations.ipynb"
                #"pandas_07_reshaping_data.ipynb"
                #"case1_bike_count.ipynb"
                #"case2_biodiversity_cleaning.ipynb"
                #"case2_biodiversity_analysis.ipynb"
                "00-jupyter_introduction.ipynb"
                "01-python-introduction.ipynb"
                "02-scientific-python-introduction.ipynb"
                "03-geopandas-appetizer.ipynb"
                "04-gis-python-vectors.ipynb"
                "05-the-power-of-gdal.ipynb"
                "06-gis-python-rasters.ipynb"
                )

#jupyter nbconvert 02-scientific-python-introduction.ipynb --to notebook --config ../nbconvert_config.py --output "../notebooks/02-scientific-python-introduction.ipynb"
for i in "${arr[@]}"
do
   echo "$i"
   # or do whatever with individual element of the array
   
   jupyter nbconvert "$i" --to notebook --config ../nbconvert_config.py --output "../notebooks/$i"
done
