#[allow(unused_use)]
module a::m {
    public struct X {}

    use fun Self::foo as X.f1;
    use fun a::m::foo as X.f2;

    use fun foo as Self::X.f3;
    use fun foo as a::m::X.f4;

    use fun foo as X.f5;

    public use fun Self::foo as X.g1;
    public use fun a::m::foo as X.g2;

    public use fun foo as Self::X.g3;
    public use fun foo as a::m::X.g4;

    public use fun foo as X.g5;

    fun foo(_: X) { abort 0 }
}
