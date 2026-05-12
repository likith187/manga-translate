.class public abstract Lk6/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/oplus/anim/parser/moshi/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "r"

    const-string v1, "hd"

    const-string v2, "nm"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lk6/f0;->a:Lcom/oplus/anim/parser/moshi/c$a;

    return-void
.end method

.method static a(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lh6/m;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->B()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lk6/f0;->a:Lcom/oplus/anim/parser/moshi/c$a;

    invoke-virtual {p0, v4}, Lcom/oplus/anim/parser/moshi/c;->v0(Lcom/oplus/anim/parser/moshi/c$a;)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->D0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->D()Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, v5}, Lk6/d;->f(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;Z)Lg6/b;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->X()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lh6/m;

    invoke-direct {v0, v2, v3}, Lh6/m;-><init>(Ljava/lang/String;Lg6/m;)V

    :goto_1
    return-object v0
.end method
