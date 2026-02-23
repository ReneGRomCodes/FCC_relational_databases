CREATE DATABASE universe;

CREATE TABLE galaxy(
    galaxy_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    age_million_years INT NOT NULL,
    diameter_ly INT,
    has_life BOOLEAN NOT NULL,
    distance_from_earth NUMERIC
);

CREATE TABLE star(
    star_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    galaxy_id INT REFERENCES galaxy(galaxy_id) NOT NULL,
    temperature_k INT NOT NULL,
    mass_solar NUMERIC,
    is_spherical BOOLEAN NOT NULL,
    color VARCHAR(255)
);

CREATE TABLE planet(
    planet_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    star_id INT REFERENCES star(star_id) NOT NULL ,
    radius_km INT NOT NULL,
    has_life BOOLEAN NOT NULL,
    is_habitable BOOLEAN,
    planet_type VARCHAR(255)
);

CREATE TABLE moon(
    moon_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    planet_id INT REFERENCES planet(planet_id) NOT NULL,
    radius_km INT NOT NULL,
    is_spherical BOOLEAN NOT NULL,
    surface_type VARCHAR(255),
    orbital_period NUMERIC
);

CREATE TABLE comet(
    comet_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    orbit_period_years INT NOT NULL,
    is_periodic BOOLEAN NOT NULL,
    composition TEXT
);
