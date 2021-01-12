%keluarga berjenis kelamin laki-laki
laki(warjito).
laki(ali).
laki(santoni).
laki(rohmat).

%keluarga berjenis kelamin perempuan
perempuan(lina).
perempuan(haliana).
perempuan(rosada).

%orang tua dari masing-masing anak
orangtua(ali,santoni).
orangtua(haliana,santoni).
orangtua(warjito,rosada).
orangtua(lina,rosada).

orangtua(santoni,rohmat).
orangtua(santoni,rohmat).
orangtua(rosada,rohmat).
orangtua(rosada,rohmat).

%query untuk mencari anggota keluarga dalam silsilah
ibu(X,Y):-orangtua(X,Y),perempuan(X).
ayah(X,Y):-orangtua(X,Y),laki(X).

anak(X,Y):-orangtua(Y,X).

suami(X,Y):-anak(P,X),anak(P,Y),laki(X).
istri(Y,X):-anak(P,X),anak(P,Y),perempuan(Y).

kakek(X,Z):-orangtua(X,Y),orangtua(Y,Z),laki(X).
nenek(X,Z):-orangtua(X,Y),orangtua(Y,Z),perempuan(X).

cucu(X,Z):-orangtua(Z,Y),anak(X,Y).
