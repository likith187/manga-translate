.class public abstract Lk6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/oplus/anim/parser/moshi/c$a;

.field private static final b:Lcom/oplus/anim/parser/moshi/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "a"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lk6/b;->a:Lcom/oplus/anim/parser/moshi/c$a;

    const-string v0, "sw"

    const-string v1, "t"

    const-string v2, "fc"

    const-string v3, "sc"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lk6/b;->b:Lcom/oplus/anim/parser/moshi/c$a;

    return-void
.end method

.method public static a(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/k;
    .locals 3

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->k()V

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->B()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lk6/b;->a:Lcom/oplus/anim/parser/moshi/c$a;

    invoke-virtual {p0, v2}, Lcom/oplus/anim/parser/moshi/c;->v0(Lcom/oplus/anim/parser/moshi/c$a;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->x0()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->D0()V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lk6/b;->b(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/k;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->x()V

    if-nez v1, :cond_2

    new-instance p0, Lg6/k;

    invoke-direct {p0, v0, v0, v0, v0}, Lg6/k;-><init>(Lg6/a;Lg6/a;Lg6/b;Lg6/b;)V

    return-object p0

    :cond_2
    return-object v1
.end method

.method private static b(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/k;
    .locals 6

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->k()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->B()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lk6/b;->b:Lcom/oplus/anim/parser/moshi/c$a;

    invoke-virtual {p0, v4}, Lcom/oplus/anim/parser/moshi/c;->v0(Lcom/oplus/anim/parser/moshi/c$a;)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->x0()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->D0()V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lk6/d;->e(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/b;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lk6/d;->e(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/b;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lk6/d;->c(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/a;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lk6/d;->c(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/a;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->x()V

    new-instance p0, Lg6/k;

    invoke-direct {p0, v0, v1, v2, v3}, Lg6/k;-><init>(Lg6/a;Lg6/a;Lg6/b;Lg6/b;)V

    return-object p0
.end method
