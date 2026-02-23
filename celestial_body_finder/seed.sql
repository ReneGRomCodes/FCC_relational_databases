INSERT INTO galaxy (name, age_million_years, diameter_ly, has_life, distance_from_earth)
    VALUES
    ('Milky Way', 13600, 105700, TRUE, 0),
    ('Andromeda', 10000, 220000, FALSE, 2537000),
    ('Triangulum', 12000, 60000, FALSE, 3000000),
    ('Messier 81', 12000, 90000, FALSE, 12000000),
    ('Whirlpool', 13000, 60000, FALSE, 23000000),
    ('Sombrero', 13000, 49000, FALSE, 29000000);

INSERT INTO star (name, galaxy_id, temperature_k, mass_solar, is_spherical, color)
    VALUES
    ('Sol', 1, 5778, 1.0, TRUE, 'Yellow'),
    ('Alpha Centauri A', 1, 5790, 1.1, TRUE, 'Yellow'),
    ('Proxima Centauri', 1, 3042, 0.12, TRUE, 'Red'),
    ('Andromeda Star 1', 2, 6000, 1.3, TRUE, 'White'),
    ('Andromeda Star 2', 2, 4500, 0.8, TRUE, 'Orange'),
    ('Triangulum Star', 3, 5000, 1.0, TRUE, 'Yellow');

INSERT INTO planet (name, star_id, radius_km, has_life, is_habitable, planet_type)
    VALUES
    ('Earth', 1, 6371, TRUE, TRUE, 'Terrestrial'),
    ('Mars', 1, 3389, FALSE, FALSE, 'Terrestrial'),
    ('Venus', 1, 6051, FALSE, FALSE, 'Terrestrial'),
    ('Mercury', 1, 2439, FALSE, FALSE, 'Terrestrial'),
    ('Jupiter', 1, 69911, FALSE, FALSE, 'Gas Giant'),
    ('Saturn', 1, 58232, FALSE, FALSE, 'Gas Giant'),
    ('Alpha Centauri Bb', 2, 10200, FALSE, FALSE, 'Terrestrial'),
    ('Alpha Centauri Bc', 2, 12000, FALSE, FALSE, 'Terrestrial'),
    ('Proxima b', 3, 7160, FALSE, TRUE, 'Terrestrial'),
    ('Proxima c', 3, 9000, FALSE, FALSE, 'Gas Giant'),
    ('Andromeda Planet 1', 4, 5000, FALSE, FALSE, 'Terrestrial'),
    ('Andromeda Planet 2', 4, 6000, FALSE, FALSE, 'Terrestrial');

INSERT INTO moon (name, planet_id, radius_km, is_spherical, surface_type, orbital_period)
    VALUES
    ('Moon', 1, 1737, TRUE, 'Rocky', 27.3),
    ('Phobos', 2, 11, TRUE, 'Rocky', 0.3),
    ('Deimos', 2, 6, TRUE, 'Rocky', 1.3),
    ('Europa', 5, 1560, TRUE, 'Ice', 3.5),
    ('Ganymede', 5, 2634, TRUE, 'Rocky/Ice', 7.1),
    ('Callisto', 5, 2410, TRUE, 'Rocky/Ice', 16.7),
    ('Titan', 6, 2575, TRUE, 'Rocky/Ice', 15.9),
    ('Rhea', 6, 763, TRUE, 'Rocky/Ice', 4.5),
    ('Iapetus', 6, 734, TRUE, 'Rocky/Ice', 79.3),
    ('Dione', 6, 561, TRUE, 'Rocky/Ice', 2.7),
    ('Alpha Centauri Bb Moon 1', 7, 1500, TRUE, 'Rocky', 30),
    ('Alpha Centauri Bb Moon 2', 7, 1200, TRUE, 'Rocky', 45),
    ('Proxima b Moon 1', 9, 1000, TRUE, 'Rocky', 20),
    ('Proxima b Moon 2', 9, 800, TRUE, 'Rocky', 25),
    ('Proxima c Moon 1', 10, 2000, TRUE, 'Ice', 50),
    ('Proxima c Moon 2', 10, 1500, TRUE, 'Ice', 40),
    ('Andromeda Planet 1 Moon 1', 11, 500, TRUE, 'Rocky', 10),
    ('Andromeda Planet 1 Moon 2', 11, 400, TRUE, 'Rocky', 12),
    ('Andromeda Planet 2 Moon 1', 12, 600, TRUE, 'Rocky', 15),
    ('Andromeda Planet 2 Moon 2', 12, 550, TRUE, 'Rocky', 18);

INSERT INTO comet (name, orbit_period_years, is_periodic, composition)
    VALUES
    ('Halley', 75, TRUE, 'Ice and dust'),
    ('Hale-Bopp', 2533, FALSE, 'Ice and dust'),
    ('Encke', 3.3, TRUE, 'Ice and dust');
