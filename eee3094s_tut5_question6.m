kbt=sym('kbt'); 
kt=sym('kt');
mt=sym('mt');
mb=sym('mb'); 
bbt=sym('bbt');
bt=sym('bt');


A=[-bbt/mb bbt/mb -kbt/mb kbt/mb; bbt/mt -(bbt+bt)/mt kbt/mt -(kbt+kt)/mt; 1 0 0 0; 0 1 0 0];
sym_A=sym(A);

b=[bbt*bt/mb/mt; kt/mt-(bbt+bt)/mt*bt/mt; 0; bt/mt];
sym_b=sym(b);

c=[0 0 1 0];
sym_c=sym(c);

s=sym('s');
P=c*inv(s*eye(4)-A)*b;
P=simplify(P);


mb=400; mt=15;
kbt=20e3; kt=1e5;
bt=1000; bbt=100000;

A=[-bbt/mb bbt/mb -kbt/mb kbt/mb; bbt/mt -(bbt+bt)/mt kbt/mt -(kbt+kt)/mt; 1 0 0 0; 0 1 0 0];
sym_A=sym(A)

b=[bbt*bt/mb/mt; kt/mt-(bbt+bt)/mt*bt/mt; 0; bt/mt];
sym_b=sym(b)

c=[0 0 1 0];
sym_c=sym(c)


s = tf('s');
P=c*inv(s*eye(4)-A)*b;

rlocus(P)
axis([-300 50 -150 150])