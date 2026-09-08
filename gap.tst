gap> s := [0,1,2,3];;
gap> m := NullMat(4,4);;
gap> for x in s do
> for y in s do
> m[x+1][y+1] := (x+y) mod 4;
> od;
> od;
gap> Display(m);
[ [  0,  1,  2,  3 ],
  [  1,  2,  3,  0 ],
  [  2,  3,  0,  1 ],
  [  3,  0,  1,  2 ] ]
gap> S3 := SymmetricGroup(3);;
gap> a := (1,2);;
gap> b := (2,3);;
gap> a*b;
(1,3,2)
gap> r := [[0,-1],[1,0]];;
gap> s := [[1,0],[0,-1]];;
gap> G := Group(r,s);;
gap> Order(G);
8
gap> r^3*s;
[ [ 0, -1 ], [ -1, 0 ] ]
gap> z := Sqrt(3);;
gap> z^2;
3
gap> r := [[-1/2,-z/2],[z/2,-1/2]];;
gap> s := [[1,0],[0,-1]];;
gap> G := Group(r,s);;
gap> Order(G);
6
gap> i := E(4);;
gap> a := [[i,0],[0,-i]];;
gap> b := [[0,1],[-1,0]];;
gap> G := Group(a,b);;
gap> StructureDescription(G);
"Q8"
gap> R := Integers mod 8;;
gap> G := Units(R);;
gap> Set(G, Int);
[ 1, 3, 5, 7 ]
gap> H := Subgroup(G, [ZmodnZObj(3,8)]);;
gap> Set(H, Int);
[ 1, 3 ]
gap> S16 := SymmetricGroup(16);;
gap> a := (1,3)(2,4);;
gap> b := (5,7)(6,8);;
gap> c := (9,11)(10,12);;
gap> d := (13,15)(14,16);;
gap> e := (1,3)(5,7)(9,11);;
gap> f := (1,2)(3,4)(13,15);;
gap> g := (5,6)(7,8)(13,14)(15,16);;
gap> h := (9,10)(11,12);;
gap> G := Group(a,b,c,d,e,f,g,h);;
gap> D := DerivedSubgroup(G);;
gap> Size(D);
16
gap> comms := Set(Cartesian(G,G), p -> p[1]*p[2]*p[1]^-1*p[2]^-1);;
gap> Size(comms);
15
gap> c*d in Difference(Set(D), comms);
true
gap> SetOfCommutators := function(G)
> return Set(Cartesian(G,G), p -> Comm(p[1],p[2]));
> end;;
gap> S12 := SymmetricGroup(12);;
gap> a := (1,3,5)(2,4,6)(7,11,9)(8,12,10);;
gap> b := (3,9,4,10)(5,8)(6,7)(11,12);;
gap> G := Group(a,b);;
gap> Order(G);
96
gap> D := DerivedSubgroup(G);;
gap> Order(D);
32
gap> Size(SetOfCommutators(G));
29
gap> allsmall := Concatenation(List([1..95], AllSmallGroups));;
gap> Filtered(allsmall, G -> Size(DerivedSubgroup(G))
> <> Size(SetOfCommutators(G)));
[  ]
gap> G := CyclicGroup(IsPermGroup, 6);;
gap> gen := GeneratorsOfGroup(G)[1];;
gap> Set([0..5], k -> [k, Order(gen^k)]);
[ [ 0, 1 ], [ 1, 6 ], [ 2, 3 ], [ 3, 2 ], [ 4, 3 ], [ 5, 6 ] ]
gap> a := [[1,-1],[1,0]];;
gap> b := [[0,1],[-1,-1]];;
gap> Order(a);
6
gap> Order(b);
3
gap> IsFinite(Group(a*b));
false
gap> G := SymmetricGroup(3);;
gap> H := Subgroup(G,[(1,2)]);;
gap> K := Subgroup(G,[(1,2,3)]);;
gap> Set(H, h -> h*(1,2,3));
[ (1,2,3), (1,3) ]
gap> Set(H, h -> h*(2,3));
[ (2,3), (1,3,2) ]
gap> G := SL(2,3);;
gap> Size(Filtered(AllSubgroups(G), H -> Size(H) = 12));
0
gap> G := AlternatingGroup(4);;
gap> NormalSubgroups(G);
[ Alt( [ 1 .. 4 ] ), Group([ (1,4)(2,3), (1,2)(3,4) ]), Group(()) ]
gap> G := DihedralGroup(8);;
gap> gens := GeneratorsOfGroup(G);;
gap> s := gens[1];; r := gens[2];;
gap> Order(r);
4
gap> Order(s);
2
gap> N := Subgroup(G,[s,r^2]);;
gap> H := Subgroup(G,[s]);;
gap> IsNormal(N,H);
true
gap> IsNormal(G,N);
true
gap> IsNormal(G,H);
false
gap> G := SymmetricGroup(3);;
gap> H := Subgroup(G,[(1,2)]);;
gap> K := Subgroup(G,[(2,3)]);;
gap> Set(Cartesian(H,K), p -> p[1]*p[2])
> = Set(Cartesian(K,H), p -> p[1]*p[2]);
false
gap> G := SymmetricGroup(3);;
gap> H := Subgroup(G,[(1,2)]);;
gap> K := Subgroup(G,[(1,2,3)]);;
gap> IsNormal(G,K);
true
gap> Size(Set(Cartesian(H,K), p -> p[1]*p[2]));
6
gap> Size(Intersection(H,K));
1
gap> R := Integers mod 21;;
gap> G := Units(R);;
gap> Set(G, Int);
[ 1, 2, 4, 5, 8, 10, 11, 13, 16, 17, 19, 20 ]
gap> f := GroupHomomorphismByFunction(G, G, x -> x^3);;
gap> Set(Kernel(f), Int);
[ 1, 4, 16 ]
gap> Set(Image(f), Int);
[ 1, 8, 13, 20 ]
gap> SetInfoLevel(InfoWarning, 0);;
gap> U := Filtered([0..20], x -> Gcd(x,21) = 1);
[ 1, 2, 4, 5, 8, 10, 11, 13, 16, 17, 19, 20 ]
gap> G := Group(List(U, x -> ZmodnZObj(x,21)));;
gap> f := GroupHomomorphismByFunction(G, G, x -> x^3);;
gap> Set(Image(f), Int);
[ 1, 8, 13, 20 ]
gap> A := AbelianGroup([4]);;
gap> B := AbelianGroup([2,2]);;
gap> Size(Filtered(A, x -> Order(x) = 4));
2
gap> Size(Filtered(B, x -> Order(x) = 4));
0
gap> A := Units(Integers mod 5);;
gap> B := Units(Integers mod 10);;
gap> IsCyclic(A);
true
gap> IsCyclic(B);
true
gap> Size(A);
4
gap> Size(B);
4
gap> IsomorphismGroups(A,B) <> fail;
true
gap> A := Units(Integers mod 10);;
gap> B := Units(Integers mod 12);;
gap> IsomorphismGroups(A,B) = fail;
true
gap> StructureDescription(A);
"C4"
gap> StructureDescription(B);
"C2 x C2"
gap> n := 24;;
gap> G := CyclicGroup(IsPermGroup, n);;
gap> gen := GeneratorsOfGroup(G)[1];;
gap> e := function(k) return gen^(k mod n); end;;
gap> val := function(x) return First([0..n-1], k -> gen^k = x); end;;
gap> H := Subgroup(G, [e(4)]);;
gap> Set(H, val);
[ 0, 4, 8, 12, 16, 20 ]
gap> N := Subgroup(G, [e(6)]);;
gap> H = Subgroup(G,[e(4)]);
true
gap> N = Subgroup(G,[e(6)]);
true
gap> ClosureGroup(H,N) = Subgroup(G,[e(2)]);
true
gap> Set(Intersection(H,N), val);
[ 0, 12 ]
gap> Set(N, x -> val(e(0)*x));
[ 0, 6, 12, 18 ]
gap> Set(N, x -> val(e(2)*x));
[ 2, 8, 14, 20 ]
gap> Set(N, x -> val(e(4)*x));
[ 4, 10, 16, 22 ]
gap> HmeetN := Intersection(H,N);;
gap> Set(HmeetN, x -> val(e(0)*x));
[ 0, 12 ]
gap> Set(HmeetN, x -> val(e(4)*x));
[ 4, 16 ]
gap> Set(HmeetN, x -> val(e(8)*x));
[ 8, 20 ]
gap> G := QuaternionGroup(8);;
gap> ForAll(AllSubgroups(G), S -> IsNormal(G,S));
true
gap> C12 := CyclicGroup(IsPermGroup, 12);;
gap> C6 := CyclicGroup(IsPermGroup, 6);;
gap> f := GroupHomomorphismByImages(C12, C6,
> GeneratorsOfGroup(C12), GeneratorsOfGroup(C6));;
gap> K := Kernel(f);;
gap> IsGroupHomomorphism(f);
true
gap> a := function(x)
> return First([0..11], k -> GeneratorsOfGroup(C12)[1]^k = x);
> end;;
gap> for x in AllSubgroups(C12) do
> if IsSubset(x, K) then
> Set(x, a);
> fi;
> od;
gap> S3 := SymmetricGroup(3);;
gap> aut_S3 := AutomorphismGroup(S3);;
gap> StructureDescription(aut_S3);
"S3"
gap> P := Image(IsomorphismPermGroup(aut_S3));;
gap> bool := IsomorphismGroups(P,S3) <> fail;;
gap> bool;
true
gap> Q := CyclicGroup(IsPermGroup, 4);;
gap> K := CyclicGroup(3);;
gap> autK := AutomorphismGroup(K);;
gap> rho := GeneratorsOfGroup(autK)[1];;
gap> IsOne(rho);
false
gap> tau := GroupHomomorphismByImages(Q, autK,
> GeneratorsOfGroup(Q), [rho]);;
gap> T := SemidirectProduct(Q, tau, K);;
gap> Size(T);
12
gap> A4 := AlternatingGroup(4);;
gap> IsomorphismGroups(T,A4) = fail;
true
gap> F := FreeGroup("x","y");;
gap> x := F.1;; y := F.2;;
gap> G := F / [x^7, y^3, y*x/(x^2*y)];;
gap> one := Z(7)^0;; zero := 0*Z(7);; two := 2*one;;
gap> H := Group([[one,one],[zero,one]], [[two,zero],[zero,one]]);;
gap> IdGroup(G) = IdGroup(H);
true
gap> G := AbelianGroup([6,100,45]);;
gap> Filtered(ElementaryDivisorsMat(DiagonalMat([6,100,45])),
> d -> d > 1);
[ 30, 900 ]
gap> Number(AllSmallGroups(200), IsAbelian);
6
gap> NumberOfSylowSubgroups := function(G,p)
>   local P;
>   P := SylowSubgroup(G,p);
>   return Index(G,Normalizer(G,P));
> end;;
gap> Set(Filtered(AllSmallGroups(12),
> G -> NumberOfSylowSubgroups(G,3) <> 1), StructureDescription);
[ "A4" ]
