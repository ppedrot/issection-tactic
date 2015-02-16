Require Import IsSection.IsSection.

Section Foo.

Variable x : nat.

Goal forall y : nat, True.
Proof.
intros y.
is_section x.
is_section y.
