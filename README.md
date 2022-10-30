# sysadmins
## 1.Używając terraforma postaw kubernetesa na AWS.

Użyłem modółów do postawienia EKS wraz z autoscallerami i LB tak jak w kodzie TF:
![image](https://user-images.githubusercontent.com/117044994/198903448-a3c94778-1df8-4c95-a4fc-d0ab841b8baf.png)
* Typo w nazwie klastra :) 

## 2.Stwórz Dockerfile’a który będzie budował kontener z nginx i stroną o treści ‘Hello SysAdmins’.
Jak w kodzie źródłowym, zdecydowałem się na dodanie wg oficjalnego image statycznej strony Index.html
Nie skupiałem się za bardzo na optymalizacji rozmiaru kontenera
![image](https://user-images.githubusercontent.com/117044994/198903540-4ca91501-82a4-4660-a83f-8b9c9828e34f.png)


## 3.W gitlab lub github napisz prosty pipeline budujący kontener i pushujący kontener do dowolnego registry.
Zrobiłem prosty 1 stage z integracja do ECR bez multistage i przekazywania artefaktów itp
![image](https://user-images.githubusercontent.com/117044994/198903574-272b7648-334d-4b43-ae85-f330588c4cdf.png)

## 4.Na kubernetesie odpal ArgoCD który będzie deployował aplikację z powyższym kontenerem gdy obraz w container registry się zmieni
Użyłem standardowej procedury deploymentu ArgoCD oraz GUI do stworzenia rozwiązania:
![image](https://user-images.githubusercontent.com/117044994/198903639-12fdcd51-d60d-4005-a5ba-6568577f3ef9.png)
Błąd który mam (tiemout) jest znany i wynika z konfiguracji network policy dla Apllication Controlera, niestety z braku czasu nie ma możliwości poprawienia go. Nie podpinałem również żadej domeny pod ingressy mam nadzieje ,ze nie bedzie to problem.
Stworzyłem podstawową strukture 1 pod orchestrowany przez deploymeny file -> service -> Ingress/Egress 

Co do moich innych projektów upublicznie dla Was moje GitLab repo na najblizsze 48h gdybyście chcieli sprawdzić

https://gitlab.com/rklimczak

, pozostaje również do dyspozycji w razie dalszych pytań

Pozdrawiam
Rafał Klimczak 
