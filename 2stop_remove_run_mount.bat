docker stop dx_pyspark_root

docker rm dx_pyspark_root

docker run -dp 8889:8888 -p 4040:4040 ^
  -p 37899:37899 ^
  -p 5050:5050 ^
  -p 8080:8080 ^
  -p 33139-33155:33139-33155 ^
  -p 45029-45045:45029-45045 ^
-it --mount type=bind,source=%cd%,target=/home/VOLUMES ^
--name dx_pyspark_root ^
dx/pyspark_root ^
jupyter lab --ip=0.0.0.0 --port=8888 --NotebookApp.token='' --allow-root
pause
