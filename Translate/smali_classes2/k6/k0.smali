.class abstract Lk6/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/oplus/anim/parser/moshi/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "ks"

    const-string v1, "hd"

    const-string v2, "nm"

    const-string v3, "ind"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lk6/k0;->a:Lcom/oplus/anim/parser/moshi/c$a;

    return-void
.end method

.method static a(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lh6/q;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->B()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lk6/k0;->a:Lcom/oplus/anim/parser/moshi/c$a;

    invoke-virtual {p0, v4}, Lcom/oplus/anim/parser/moshi/c;->v0(Lcom/oplus/anim/parser/moshi/c$a;)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->D0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->D()Z

    move-result v3

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lk6/d;->k(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/h;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->I()I

    move-result v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->X()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance p0, Lh6/q;

    invoke-direct {p0, v0, v2, v1, v3}, Lh6/q;-><init>(Ljava/lang/String;ILg6/h;Z)V

    return-object p0
.end method
