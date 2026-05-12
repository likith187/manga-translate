.class public Lcom/google/mlkit/common/internal/CommonComponentRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 11

    sget-object v0, Lf5/j;->b:Lo4/c;

    const-class p0, Lg5/a;

    invoke-static {p0}, Lo4/c;->a(Ljava/lang/Class;)Lo4/c$b;

    move-result-object p0

    const-class v1, Lf5/g;

    invoke-static {v1}, Lo4/o;->g(Ljava/lang/Class;)Lo4/o;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo4/c$b;->b(Lo4/o;)Lo4/c$b;

    move-result-object p0

    new-instance v2, Lc5/a;

    invoke-direct {v2}, Lc5/a;-><init>()V

    invoke-virtual {p0, v2}, Lo4/c$b;->d(Lo4/g;)Lo4/c$b;

    move-result-object p0

    invoke-virtual {p0}, Lo4/c$b;->c()Lo4/c;

    move-result-object p0

    const-class v2, Lf5/h;

    invoke-static {v2}, Lo4/c;->a(Ljava/lang/Class;)Lo4/c$b;

    move-result-object v3

    new-instance v4, Lc5/b;

    invoke-direct {v4}, Lc5/b;-><init>()V

    invoke-virtual {v3, v4}, Lo4/c$b;->d(Lo4/g;)Lo4/c$b;

    move-result-object v3

    invoke-virtual {v3}, Lo4/c$b;->c()Lo4/c;

    move-result-object v3

    const-class v4, Le5/c;

    invoke-static {v4}, Lo4/c;->a(Ljava/lang/Class;)Lo4/c$b;

    move-result-object v4

    const-class v5, Le5/c$a;

    invoke-static {v5}, Lo4/o;->i(Ljava/lang/Class;)Lo4/o;

    move-result-object v6

    invoke-virtual {v4, v6}, Lo4/c$b;->b(Lo4/o;)Lo4/c$b;

    move-result-object v4

    new-instance v6, Lc5/c;

    invoke-direct {v6}, Lc5/c;-><init>()V

    invoke-virtual {v4, v6}, Lo4/c$b;->d(Lo4/g;)Lo4/c$b;

    move-result-object v4

    invoke-virtual {v4}, Lo4/c$b;->c()Lo4/c;

    move-result-object v4

    const-class v6, Lf5/d;

    invoke-static {v6}, Lo4/c;->a(Ljava/lang/Class;)Lo4/c$b;

    move-result-object v6

    invoke-static {v2}, Lo4/o;->h(Ljava/lang/Class;)Lo4/o;

    move-result-object v2

    invoke-virtual {v6, v2}, Lo4/c$b;->b(Lo4/o;)Lo4/c$b;

    move-result-object v2

    new-instance v6, Lc5/d;

    invoke-direct {v6}, Lc5/d;-><init>()V

    invoke-virtual {v2, v6}, Lo4/c$b;->d(Lo4/g;)Lo4/c$b;

    move-result-object v2

    invoke-virtual {v2}, Lo4/c$b;->c()Lo4/c;

    move-result-object v6

    const-class v2, Lf5/a;

    invoke-static {v2}, Lo4/c;->a(Ljava/lang/Class;)Lo4/c$b;

    move-result-object v7

    new-instance v8, Lc5/e;

    invoke-direct {v8}, Lc5/e;-><init>()V

    invoke-virtual {v7, v8}, Lo4/c$b;->d(Lo4/g;)Lo4/c$b;

    move-result-object v7

    invoke-virtual {v7}, Lo4/c$b;->c()Lo4/c;

    move-result-object v7

    const-class v8, Lf5/b;

    invoke-static {v8}, Lo4/c;->a(Ljava/lang/Class;)Lo4/c$b;

    move-result-object v8

    invoke-static {v2}, Lo4/o;->g(Ljava/lang/Class;)Lo4/o;

    move-result-object v2

    invoke-virtual {v8, v2}, Lo4/c$b;->b(Lo4/o;)Lo4/c$b;

    move-result-object v2

    new-instance v8, Lc5/f;

    invoke-direct {v8}, Lc5/f;-><init>()V

    invoke-virtual {v2, v8}, Lo4/c$b;->d(Lo4/g;)Lo4/c$b;

    move-result-object v2

    invoke-virtual {v2}, Lo4/c$b;->c()Lo4/c;

    move-result-object v8

    const-class v2, Ld5/a;

    invoke-static {v2}, Lo4/c;->a(Ljava/lang/Class;)Lo4/c$b;

    move-result-object v9

    invoke-static {v1}, Lo4/o;->g(Ljava/lang/Class;)Lo4/o;

    move-result-object v1

    invoke-virtual {v9, v1}, Lo4/c$b;->b(Lo4/o;)Lo4/c$b;

    move-result-object v1

    new-instance v9, Lc5/g;

    invoke-direct {v9}, Lc5/g;-><init>()V

    invoke-virtual {v1, v9}, Lo4/c$b;->d(Lo4/g;)Lo4/c$b;

    move-result-object v1

    invoke-virtual {v1}, Lo4/c$b;->c()Lo4/c;

    move-result-object v9

    invoke-static {v5}, Lo4/c;->g(Ljava/lang/Class;)Lo4/c$b;

    move-result-object v1

    invoke-static {v2}, Lo4/o;->h(Ljava/lang/Class;)Lo4/o;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo4/c$b;->b(Lo4/o;)Lo4/c$b;

    move-result-object v1

    new-instance v2, Lc5/h;

    invoke-direct {v2}, Lc5/h;-><init>()V

    invoke-virtual {v1, v2}, Lo4/c$b;->d(Lo4/g;)Lo4/c$b;

    move-result-object v1

    invoke-virtual {v1}, Lo4/c$b;->c()Lo4/c;

    move-result-object v10

    move-object v1, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    invoke-static/range {v0 .. v8}, Lcom/google/android/gms/internal/mlkit_common/e;->zzi(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/e;

    move-result-object p0

    return-object p0
.end method
