.class abstract Lk6/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/oplus/anim/parser/moshi/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "fStyle"

    const-string v1, "ascent"

    const-string v2, "fFamily"

    const-string v3, "fName"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lk6/o;->a:Lcom/oplus/anim/parser/moshi/c$a;

    return-void
.end method

.method static a(Lcom/oplus/anim/parser/moshi/c;)Lf6/d;
    .locals 6

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->k()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move v3, v1

    move-object v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->B()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lk6/o;->a:Lcom/oplus/anim/parser/moshi/c$a;

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
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->G()D

    move-result-wide v3

    double-to-float v3, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->X()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->X()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->X()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->x()V

    new-instance p0, Lf6/d;

    invoke-direct {p0, v0, v1, v2, v3}, Lf6/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    return-object p0
.end method
