.class public final Lk9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk9/a$a;
    }
.end annotation


# static fields
.field public static final a:Lk9/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk9/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk9/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lk9/a;->a:Lk9/a$a;

    return-void
.end method

.method public constructor <init>(Lokhttp3/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/v$a;)Lokhttp3/b0;
    .locals 5

    const-string p0, "chain"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lokhttp3/v$a;->call()Lokhttp3/e;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lk9/b$b;

    invoke-interface {p1}, Lokhttp3/v$a;->a()Lokhttp3/z;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Lk9/b$b;-><init>(JLokhttp3/z;Lokhttp3/b0;)V

    invoke-virtual {v2}, Lk9/b$b;->b()Lk9/b;

    move-result-object v0

    invoke-virtual {v0}, Lk9/b;->b()Lokhttp3/z;

    move-result-object v1

    invoke-virtual {v0}, Lk9/b;->a()Lokhttp3/b0;

    move-result-object v0

    instance-of v2, p0, Lokhttp3/internal/connection/e;

    if-eqz v2, :cond_0

    move-object v2, p0

    check-cast v2, Lokhttp3/internal/connection/e;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lokhttp3/internal/connection/e;->l()Lokhttp3/q;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    sget-object v2, Lokhttp3/q;->b:Lokhttp3/q;

    :cond_2
    if-nez v1, :cond_3

    if-nez v0, :cond_3

    new-instance v0, Lokhttp3/b0$a;

    invoke-direct {v0}, Lokhttp3/b0$a;-><init>()V

    invoke-interface {p1}, Lokhttp3/v$a;->a()Lokhttp3/z;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/b0$a;->r(Lokhttp3/z;)Lokhttp3/b0$a;

    move-result-object p1

    sget-object v0, Lokhttp3/y;->HTTP_1_1:Lokhttp3/y;

    invoke-virtual {p1, v0}, Lokhttp3/b0$a;->p(Lokhttp3/y;)Lokhttp3/b0$a;

    move-result-object p1

    const/16 v0, 0x1f8

    invoke-virtual {p1, v0}, Lokhttp3/b0$a;->g(I)Lokhttp3/b0$a;

    move-result-object p1

    const-string v0, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {p1, v0}, Lokhttp3/b0$a;->m(Ljava/lang/String;)Lokhttp3/b0$a;

    move-result-object p1

    sget-object v0, Li9/d;->c:Lokhttp3/c0;

    invoke-virtual {p1, v0}, Lokhttp3/b0$a;->b(Lokhttp3/c0;)Lokhttp3/b0$a;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lokhttp3/b0$a;->s(J)Lokhttp3/b0$a;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lokhttp3/b0$a;->q(J)Lokhttp3/b0$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/b0$a;->c()Lokhttp3/b0;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Lokhttp3/q;->z(Lokhttp3/e;Lokhttp3/b0;)V

    return-object p1

    :cond_3
    if-nez v1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/b0;->b0()Lokhttp3/b0$a;

    move-result-object p1

    sget-object v1, Lk9/a;->a:Lk9/a$a;

    invoke-static {v1, v0}, Lk9/a$a;->b(Lk9/a$a;Lokhttp3/b0;)Lokhttp3/b0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/b0$a;->d(Lokhttp3/b0;)Lokhttp3/b0$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/b0$a;->c()Lokhttp3/b0;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Lokhttp3/q;->b(Lokhttp3/e;Lokhttp3/b0;)V

    return-object p1

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v2, p0, v0}, Lokhttp3/q;->a(Lokhttp3/e;Lokhttp3/b0;)V

    :cond_5
    invoke-interface {p1, v1}, Lokhttp3/v$a;->b(Lokhttp3/z;)Lokhttp3/b0;

    move-result-object p0

    if-eqz v0, :cond_8

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lokhttp3/b0;->x()I

    move-result p1

    const/16 v1, 0x130

    if-eq p1, v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lokhttp3/b0;->b0()Lokhttp3/b0$a;

    move-result-object p1

    sget-object v1, Lk9/a;->a:Lk9/a$a;

    invoke-virtual {v0}, Lokhttp3/b0;->N()Lokhttp3/t;

    move-result-object v2

    invoke-virtual {p0}, Lokhttp3/b0;->N()Lokhttp3/t;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lk9/a$a;->a(Lk9/a$a;Lokhttp3/t;Lokhttp3/t;)Lokhttp3/t;

    move-result-object v2

    invoke-virtual {p1, v2}, Lokhttp3/b0$a;->k(Lokhttp3/t;)Lokhttp3/b0$a;

    move-result-object p1

    invoke-virtual {p0}, Lokhttp3/b0;->E0()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lokhttp3/b0$a;->s(J)Lokhttp3/b0$a;

    move-result-object p1

    invoke-virtual {p0}, Lokhttp3/b0;->x0()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lokhttp3/b0$a;->q(J)Lokhttp3/b0$a;

    move-result-object p1

    invoke-static {v1, v0}, Lk9/a$a;->b(Lk9/a$a;Lokhttp3/b0;)Lokhttp3/b0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/b0$a;->d(Lokhttp3/b0;)Lokhttp3/b0$a;

    move-result-object p1

    invoke-static {v1, p0}, Lk9/a$a;->b(Lk9/a$a;Lokhttp3/b0;)Lokhttp3/b0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/b0$a;->n(Lokhttp3/b0;)Lokhttp3/b0$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/b0$a;->c()Lokhttp3/b0;

    invoke-virtual {p0}, Lokhttp3/b0;->c()Lokhttp3/c0;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lokhttp3/c0;->close()V

    invoke-static {v4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    throw v4

    :cond_7
    :goto_1
    invoke-virtual {v0}, Lokhttp3/b0;->c()Lokhttp3/c0;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-static {p1}, Li9/d;->l(Ljava/io/Closeable;)V

    :cond_8
    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lokhttp3/b0;->b0()Lokhttp3/b0$a;

    move-result-object p1

    sget-object v1, Lk9/a;->a:Lk9/a$a;

    invoke-static {v1, v0}, Lk9/a$a;->b(Lk9/a$a;Lokhttp3/b0;)Lokhttp3/b0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/b0$a;->d(Lokhttp3/b0;)Lokhttp3/b0$a;

    move-result-object p1

    invoke-static {v1, p0}, Lk9/a$a;->b(Lk9/a$a;Lokhttp3/b0;)Lokhttp3/b0;

    move-result-object p0

    invoke-virtual {p1, p0}, Lokhttp3/b0$a;->n(Lokhttp3/b0;)Lokhttp3/b0$a;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/b0$a;->c()Lokhttp3/b0;

    move-result-object p0

    return-object p0
.end method
