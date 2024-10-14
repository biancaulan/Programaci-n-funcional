
# Generar mes y dibujarlo
printDibujo (dibujomes ("Enero", 2024, 1, 30))

```
Enero 2024##########
Lu Ma Mi Ju Vi Sa Do
#########01 02 03 04
05 06 07 08 09 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30######
```

# Comprobar si un dibujo es correcto (misma longitud)
- [TRUE] dibEsCorrecto ["Enero 2024##########","Lu Ma Mi Ju Vi Sa Do","#########01 02 03 04","05 06 07 08 09 10 11","12 13 14 15 16 17 18","19 20 21 22 23 24 25","26 27 28 29 30 31 32","33 34###############"]
```
Enero 2024##########
Lu Ma Mi Ju Vi Sa Do
#########01 02 03 04
05 06 07 08 09 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31 32
33 34###############
```

- [FALSE] dibEsCorrecto ["Enero 2024","Lu Ma Mi Ju Vi Sa Do","01 02 03 04","05 06 07 08 09 10 11","12 13 14 15 16 17 18","19 20 21 22 23 24 25","26 27 28 29 30 31 32","33 34"]
```
Enero 2024
Lu Ma Mi Ju Vi Sa Do
         01 02 03 04
05 06 07 08 09 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31 32
33 34
```