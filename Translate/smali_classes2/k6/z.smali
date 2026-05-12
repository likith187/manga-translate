.class abstract Lk6/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Ld6/i;
    .locals 7

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->b0()Lcom/oplus/anim/parser/moshi/c$b;

    move-result-object v0

    sget-object v1, Lcom/oplus/anim/parser/moshi/c$b;->BEGIN_OBJECT:Lcom/oplus/anim/parser/moshi/c$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static {}, Ll6/h;->e()F

    move-result v3

    sget-object v4, Lk6/a0;->INSTANCE:Lk6/a0;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lk6/u;->c(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;FLk6/n0;ZZ)Lm6/c;

    move-result-object p0

    new-instance v0, Ld6/i;

    invoke-direct {v0, p1, p0}, Ld6/i;-><init>(Lcom/oplus/anim/a;Lm6/c;)V

    return-object v0
.end method
