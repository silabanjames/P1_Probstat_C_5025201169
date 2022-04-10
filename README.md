# P1_Probstat_C_5025201169

| Nama | Kelas|
|------|------|
|James Silaban | Probstat C |

# Soal 1

**a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi
sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?
(distribusi Geometrik)**
```
n = 3
p = 0.20
dgeom(x = n, prob = p)
```
Output :
```
[1] 0.1024
```

**b. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )**

```
mean(rgeom(n = 10000, prob = p) == 3)
```
Output :
```
[1] 0.102
```

**c. c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?**

Jika dibandingkan, hasilnya tidak terpaut jauh. Hasil pada poin a akan selalu tetap, sedangkan pada poin b akan
berubah ubah karena menggunakan fungsi random (rgeom).

**d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama**
```
set.seed(10)
x=10000
y=rgeom(x,.2)
hist(y)
```
Output :
![image](https://user-images.githubusercontent.com/78299006/162623393-df39fe2e-ed9a-4d12-900c-c7126ceb229f.png)


**e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.**

Rataan
```
1/p
```
  Output :
```
[1] 5
```
Varian
```
(1-p)/ p^2
```
  Output:
```
[1] 20
```


#Soal 2

**Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2.**

**a. Peluang terdapat 4 pasien yang sembuh**
```
dbinom(x=4, size=20, prob=.2)
```
Output:
```
[1] 0.2181994
```

**b. Gambarkan grafik histogram berdasarkan kasus tersebut.**
```
x = 10000
pa = 20
pr = .2
y = rbinom(x, pa, pr)
hist(y)
```
Output: 
 
![image](https://user-images.githubusercontent.com/78299006/162623628-404f21aa-1c5e-47cb-a9dc-79503baba3b9.png)

**c. Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.**
Rataan
```
pa*pr
```
Output:
```
[1] 4
```
Varian
```
pa*pr*(1-pr)
```
Output:
```
[1] 3.2
```


## Soal 3

**a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?**
```
dpois(6, 4.5)
```
Ouput:
```
[1] 0.1281201
```

**b. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama
setahun (n = 365)**
```
p1 = rpois(365, 4.5)
hist(p1)
```
Output :

![image](https://user-images.githubusercontent.com/78299006/162625007-05ec92c2-4158-4d82-902b-8be52bee057a.png)

Menggunakan percobaan
```
p2 = (rpois(365, 4.5) == 6)
mean(p2)
```
Output:
```
[1] 0.1232877
```

**c. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan**

Hasil yang dimiliki poin a dan b tidak berbeda jauh

**d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.**
Rataa

Rataan dan Varian besarnya sama, yaitu 4.5

## Soal 4
**Diketahui nilai x = 2 dan v = 10. Tentukan:**

**a. Fungsi Probabilitas dari Distribusi Chi-Square.**
```
dchisq(2, 10)
```
Output:
```
[1] 0.007664155
```

**b. Histogram dari Distribusi Chi-Square dengan 100 data random**
```
hist(rchisq(100,10))
```
Output:

![image](https://user-images.githubusercontent.com/78299006/162625551-0302d1dd-0b03-4936-9d28-ff7f4721ef49.png)

**c. Nilai Rataan (μ) dan Varian (σ²) dari DistribusiChi-Square.**

Rataan sebesar 10, dan Varian sebesar rataa*2 = 20


##Soal 5

***Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3).*

**a. Fungsi Probabilitas dari Distribusi Exponensial**
```
dexp(3)
```
Output:
```
[1] 0.04978707
```

**b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random**
10 bilangan randaom
```
hist(rexp(10,5))
```
Output :

![image](https://user-images.githubusercontent.com/78299006/162625951-feb8cd0d-882d-4a80-921d-fd47bae04f13.png)

100 bilangan random
```
hist(rexp(100,5))
```
Ouput:

![image](https://user-images.githubusercontent.com/78299006/162625970-4ed5b1dc-d5cb-49e8-94be-76ca98530417.png)

1000 bilangan random
```
hist(rexp(1000,5))
```
Output:

![image](https://user-images.githubusercontent.com/78299006/162625988-ce597253-2826-4679-be78-09822243a248.png)


10000 bilangan random
```
hist(rexp(10000,5))
```
Output:

![Uploading image.png…]()


**c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3**
Rataan sebesar 3 (lambda)
Varian sebesar rataan*rataan = 9
