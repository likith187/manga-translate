.class public final Lu1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lv1/d;

.field private final b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv1/d;

    invoke-direct {v0}, Lv1/d;-><init>()V

    iput-object v0, p0, Lu1/b;->a:Lv1/d;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lu1/b;->b:Ljava/util/HashMap;

    const-string v1, "pi"

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-virtual {p0, v1, v2, v3}, Lu1/b;->b(Ljava/lang/String;D)Lu1/b;

    const-string v1, "e"

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    invoke-virtual {p0, v1, v2, v3}, Lu1/b;->b(Ljava/lang/String;D)Lu1/b;

    new-instance v1, Lu1/b$k;

    invoke-direct {v1}, Lu1/b$k;-><init>()V

    const-string v2, "abs"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$v;

    invoke-direct {v1}, Lu1/b$v;-><init>()V

    const-string v2, "acos"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$z;

    invoke-direct {v1}, Lu1/b$z;-><init>()V

    const-string v2, "acosh"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$a0;

    invoke-direct {v1}, Lu1/b$a0;-><init>()V

    const-string v2, "asin"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$b0;

    invoke-direct {v1}, Lu1/b$b0;-><init>()V

    const-string v2, "asinh"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$c0;

    invoke-direct {v1}, Lu1/b$c0;-><init>()V

    const-string v2, "atan"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$d0;

    invoke-direct {v1}, Lu1/b$d0;-><init>()V

    const-string v2, "atanh"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$e0;

    invoke-direct {v1}, Lu1/b$e0;-><init>()V

    const-string v2, "cbrt"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$f0;

    invoke-direct {v1}, Lu1/b$f0;-><init>()V

    const-string v2, "ceil"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$a;

    invoke-direct {v1}, Lu1/b$a;-><init>()V

    const-string v2, "cos"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$b;

    invoke-direct {v1}, Lu1/b$b;-><init>()V

    const-string v2, "cosh"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$c;

    invoke-direct {v1}, Lu1/b$c;-><init>()V

    const-string v2, "exp"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$d;

    invoke-direct {v1}, Lu1/b$d;-><init>()V

    const-string v2, "expm1"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$e;

    invoke-direct {v1}, Lu1/b$e;-><init>()V

    const-string v2, "floor"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$f;

    invoke-direct {v1}, Lu1/b$f;-><init>()V

    const-string v2, "ln"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$g;

    invoke-direct {v1}, Lu1/b$g;-><init>()V

    const-string v2, "log10"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$h;

    invoke-direct {v1}, Lu1/b$h;-><init>()V

    const-string v2, "log2"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$i;

    invoke-direct {v1}, Lu1/b$i;-><init>()V

    const-string v2, "log1p"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$j;

    invoke-direct {v1}, Lu1/b$j;-><init>()V

    const-string v2, "not"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$l;

    invoke-direct {v1}, Lu1/b$l;-><init>()V

    const-string v2, "round"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$m;

    invoke-direct {v1}, Lu1/b$m;-><init>()V

    const-string v2, "sign"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$n;

    invoke-direct {v1}, Lu1/b$n;-><init>()V

    const-string v2, "sin"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$o;

    invoke-direct {v1}, Lu1/b$o;-><init>()V

    const-string v2, "sinh"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$p;

    invoke-direct {v1}, Lu1/b$p;-><init>()V

    const-string v2, "sqrt"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$q;

    invoke-direct {v1}, Lu1/b$q;-><init>()V

    const-string v2, "tan"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$r;

    invoke-direct {v1}, Lu1/b$r;-><init>()V

    const-string v2, "tanh"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$s;

    invoke-direct {v1}, Lu1/b$s;-><init>()V

    const-string v2, "trunc"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$t;

    invoke-direct {v1}, Lu1/b$t;-><init>()V

    const-string v2, "sum"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$u;

    invoke-direct {v1}, Lu1/b$u;-><init>()V

    const-string v2, "min"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$w;

    invoke-direct {v1}, Lu1/b$w;-><init>()V

    const-string v2, "max"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$x;

    invoke-direct {v1}, Lu1/b$x;-><init>()V

    const-string v2, "if"

    invoke-virtual {v0, v2, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    new-instance v1, Lu1/b$y;

    invoke-direct {v1, p0}, Lu1/b$y;-><init>(Lu1/b;)V

    const-string p0, "random"

    invoke-virtual {v0, p0, v1}, Lv1/d;->i(Ljava/lang/String;Lv1/g;)Lv1/d;

    return-void
.end method

.method public static final synthetic a(Lu1/b;)Lv1/d;
    .locals 0

    iget-object p0, p0, Lu1/b;->a:Lv1/d;

    return-object p0
.end method

.method private final e(Ljava/lang/String;)Lv1/e;
    .locals 1

    iget-object v0, p0, Lu1/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lu1/b;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast p0, Lv1/e;

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lu1/b;->f(Ljava/lang/String;)Lv1/e;

    move-result-object v0

    iget-object p0, p0, Lu1/b;->b:Ljava/util/HashMap;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final f(Ljava/lang/String;)Lv1/e;
    .locals 0

    invoke-direct {p0, p1}, Lu1/b;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lu1/b;->g(Ljava/util/List;)Lv1/e;

    move-result-object p0

    return-object p0
.end method

.method private final g(Ljava/util/List;)Lv1/e;
    .locals 0

    new-instance p0, Lv1/k;

    invoke-direct {p0, p1}, Lv1/k;-><init>(Ljava/util/List;)V

    invoke-virtual {p0}, Lv1/k;->q()Lv1/e;

    move-result-object p0

    return-object p0
.end method

.method private final h(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    new-instance v0, Lv1/l;

    iget-object p0, p0, Lu1/b;->a:Lv1/d;

    invoke-virtual {p0}, Lv1/d;->n()Ljava/math/MathContext;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lv1/l;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    invoke-virtual {v0}, Lv1/l;->p()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;D)Lu1/b;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lu1/b;->c(Ljava/lang/String;Ljava/lang/String;)Lu1/b;

    return-object p0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Lu1/b;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expression"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lu1/b;->f(Ljava/lang/String;)Lv1/e;

    move-result-object p2

    iget-object v0, p0, Lu1/b;->a:Lv1/d;

    invoke-virtual {v0, p1, p2}, Lv1/d;->k(Ljava/lang/String;Lv1/e;)Lv1/d;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1

    const-string v0, "expression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lu1/b;->e(Ljava/lang/String;)Lv1/e;

    move-result-object p1

    iget-object p0, p0, Lu1/b;->a:Lv1/d;

    invoke-virtual {p0, p1}, Lv1/d;->m(Lv1/e;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method
