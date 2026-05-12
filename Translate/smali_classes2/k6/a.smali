.class public abstract Lk6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/oplus/anim/parser/moshi/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "x"

    const-string v1, "y"

    const-string v2, "k"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lk6/a;->a:Lcom/oplus/anim/parser/moshi/c$a;

    return-void
.end method

.method public static a(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/e;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->b0()Lcom/oplus/anim/parser/moshi/c$b;

    move-result-object v1

    sget-object v2, Lcom/oplus/anim/parser/moshi/c$b;->BEGIN_ARRAY:Lcom/oplus/anim/parser/moshi/c$b;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->i()V

    :goto_0
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lk6/z;->a(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Ld6/i;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->v()V

    invoke-static {v0}, Lk6/v;->b(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lm6/c;

    invoke-static {}, Ll6/h;->e()F

    move-result v1

    invoke-static {p0, v1}, Lk6/t;->e(Lcom/oplus/anim/parser/moshi/c;F)Landroid/graphics/PointF;

    move-result-object p0

    invoke-direct {p1, p0}, Lm6/c;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance p0, Lg6/e;

    invoke-direct {p0, v0}, Lg6/e;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method static b(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/m;
    .locals 7

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->k()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move v3, v1

    move-object v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->b0()Lcom/oplus/anim/parser/moshi/c$b;

    move-result-object v4

    sget-object v5, Lcom/oplus/anim/parser/moshi/c$b;->END_OBJECT:Lcom/oplus/anim/parser/moshi/c$b;

    if-eq v4, v5, :cond_5

    sget-object v4, Lk6/a;->a:Lcom/oplus/anim/parser/moshi/c$a;

    invoke-virtual {p0, v4}, Lcom/oplus/anim/parser/moshi/c;->v0(Lcom/oplus/anim/parser/moshi/c$a;)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->x0()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->D0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->b0()Lcom/oplus/anim/parser/moshi/c$b;

    move-result-object v4

    sget-object v6, Lcom/oplus/anim/parser/moshi/c$b;->STRING:Lcom/oplus/anim/parser/moshi/c$b;

    if-ne v4, v6, :cond_1

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->D0()V

    :goto_1
    move v3, v5

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lk6/d;->e(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/b;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->b0()Lcom/oplus/anim/parser/moshi/c$b;

    move-result-object v4

    sget-object v6, Lcom/oplus/anim/parser/moshi/c$b;->STRING:Lcom/oplus/anim/parser/moshi/c$b;

    if-ne v4, v6, :cond_3

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->D0()V

    goto :goto_1

    :cond_3
    invoke-static {p0, p1}, Lk6/d;->e(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/b;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-static {p0, p1}, Lk6/a;->a(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/e;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->x()V

    if-eqz v3, :cond_6

    const-string p0, "EffectiveAnimation doesn\'t support expressions."

    invoke-virtual {p1, p0}, Lcom/oplus/anim/a;->a(Ljava/lang/String;)V

    :cond_6
    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance p0, Lg6/i;

    invoke-direct {p0, v1, v2}, Lg6/i;-><init>(Lg6/b;Lg6/b;)V

    return-object p0
.end method
