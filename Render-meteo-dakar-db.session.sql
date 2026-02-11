CREATE TABLE meteo_dakar_2025 (
    date_day DATE NOT NULL PRIMARY KEY UNIQUE,
    temp_max FLOAT,
    temp_min FLOAT,
    apparent_temp_mean FLOAT,
    precip_sum FLOAT,
    wind_dir_dominant INT,
    sunshine_duration FLOAT,
    is_rainy BOOLEAN DEFAULT FALSE 
);