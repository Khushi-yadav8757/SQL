SELECT geo_name,residents,surface
FROM geostats
WHERE  surface >= 3000000
OR residents >= 25000000;

