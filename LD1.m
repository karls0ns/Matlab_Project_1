2+2
clc
clear
help cos
doc %palasinata palidziba

a=4 
a=4;

a=a+1

a^2

a=2; b=3;
c=exp(a)*sin(pi);

1 > 5 % 0 = False /1 = True

3~=4 % lo?isk? izteiksme nevien?ds

(3>1) && (4>1) % izmanto AND operatoru


x=[4 32 53 7 1] % Vekotora defin?šana. Ir nodefin?ts 5 dimensiju vektors

y=[1; 2; 3; 4] % vertik?la vektora izveidošana

% Indeks? no 1 !!!

x(2) % piek??st pie vektora otr? elementa

x(2:3) % izg?st apakšvektoru s?k ar 2. elementu beidz ar 3. elementu

x % izvada main?g? v?rt?bu

ind = 2:4 % nodefin? vektoru ar v?t?b?m 2-4

x(ind) % nodefin?to vektoru izmanto k? indeksus, lai izvad?tu apakšvektorus

ind = [1 3 5] % nodefin? noteiktu elementu vektoru 

x(ind) % izvada apakš vektoru ar noteiktiem elementiem

x(2:end) % ar END apz?me p?d?j? elementa indeksu

size(x) % nosaka matricas izm?ru katr? no t? dimensij?s

size(x,1) % nosaka matircas rindi?u skaitu

size(x,2) % nosaka matricas kolonnu skaitu

x=[x;x] % tiek veikta kontakin?cija, šaj? gad?jum? rindu veid?

x' % matricas transpon?šana 

x=1:2:10 % veic peiaugumu ar soli 2 s?kot ar 1 un beidzot ar 10

A = [1 2 3; 4 5 6; 7 8 9]

size(A)

A(2,3) %Matric?, lai piek??tu pie elementa nor?da rindi?as un kollonas indeksu

A(2,3) = 0 % maina matricas indeksa v?rt?bas

ind = A>4 % nosaka, kuri matricas elementi ir liel?ki par 4

A(ind) % izg?st v?rt?bas, kuras ir liel?kas par 4

A(2:3,2:3) % izg?st apakšmatricu

A(2:3,2) % var kombin?t skal?rus ar vektoriem, lai izg?tu apakšmatricu

A(:,1) % : nor?da to, ka interes? visas v?rt?bas attiec?gaj? dimensij?
A(1,:)

A(:, [3 1 2]) % izg?stot apakš matricu var ar? modific?t rindi?u/kollonu sec?bu

A' % transpon?ta matrica

A(1,:)=[] % veic 1 rindi?as visu kollonu izdz?šanu

A(:,1)=[]% veic 1 kollonnas izdz?šanu

A(:,1) = [1 1] % veic 1. kollonnas locek?u mai?u

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

v1 = [1 2 3 4]
v2 = [2 1 2 1]

v1*v2'  % vektorus reizina vienu vektoram esot rindas vektoram un otram kollonnas vektoram
        % un abu vektoru elementu skaits ir vien?ds

v1 .* v2 % vektora elementu reizin?jums (izmanto punktu pirms darb?basz?mes)

v1 ./ v2 % vektoru elementu dal?šana



A = [1 2 3; 4 5 6]
B = [2 2 2; 1 1 1]

A*B' % lai veiktu matrucu reizin?jumu ir j?b?t pirm?s matricas rindu skait?m t?dam pašam k?dam 
     %otr?s matricas kollonnu skaitam
     
A .* B % matricas elementu reizin?šana     

sqrt(A) % katras matricas elementa kvadr?tsakne

max(A) %mekl? maksimumu katr? kollon?

max(A(:,1)) %atrod maksimumu pirmaj? kollon?

min(A) % atrod minimumus

sum(A) % atrod matricas summu

sum(A,1) % atrod matricas kolonu summu

sum(A,2) % atrod matricas rindu summu




zeros(3,4) % izveido matricu 3x4, kura satur tikai 0

ones(3,4) % izveido matricu 3x4, kura satur tikai 1

v1 = [5 1 7 8 3 8 32 5 67 6]

sort (v1) % sak?rto vektora elementus augoš? sec?b?

[v2, ind] = sort(v1) % v2 saglab? sak?rtot vektoru ind saglab? indeksus, kur 
                     %or?in?laj? vektor? atrodas atbilstošais elements
                     
ind = randperm(size(v1,2)) % veic elementu sajaukšanu nor?ot lemenetu skaitu

v1=v1(ind)



x = 0 : pi/100 : 2*pi;
y = sin(x);

plot(x,y)  % grafika uzz?m?šana

plot(x,y,'.') % att?lo tikai punktus

plot(x,y,'r--') % att?lo grafiku k? ar raust?tu l?niju un sarkan? kr?s?

xlabel('X') % nor?da ass nosaukumu
ylabel('Y')
title('Funkciajs grafiks') % nor?d funkciajs virsrakstu
hold on; % nor?da, ka t?l?k? funkcijas j?z?m? kl?tneizdz?šot esošo

y2=cos(x)
plot(x,y2,':')

legend('sin','cos') % pievieno le?endu

figure % izveido jaunu tukšu att?lu

z = [4 2 5 3 2];
bar(z); % stabu diagramma

% n?kamo diagraamu pievieno p?d?j? akt?vaj? att?l?

[X,Y] = meshgrid(-2:0.2:2); % izveido 2 vien?da diapozona matricas
Z = X .* exp(-X .^ 2 - Y .^ 2);
surf(X, Y, Z) %z?m? 3D grafikus