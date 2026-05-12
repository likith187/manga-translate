.class abstract Lk6/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/oplus/anim/parser/moshi/c$a;

.field private static final b:Lcom/oplus/anim/parser/moshi/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ef"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lk6/e;->a:Lcom/oplus/anim/parser/moshi/c$a;

    const-string v0, "ty"

    const-string v1, "v"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lk6/e;->b:Lcom/oplus/anim/parser/moshi/c$a;

    return-void
.end method

.method private static a(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lh6/a;
    .locals 5

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->k()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->B()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lk6/e;->b:Lcom/oplus/anim/parser/moshi/c$a;

    invoke-virtual {p0, v3}, Lcom/oplus/anim/parser/moshi/c;->v0(Lcom/oplus/anim/parser/moshi/c$a;)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->x0()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->D0()V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    new-instance v0, Lh6/a;

    invoke-static {p0, p1}, Lk6/d;->e(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/b;

    move-result-object v3

    invoke-direct {v0, v3}, Lh6/a;-><init>(Lg6/b;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->D0()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->I()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->x()V

    return-object v0
.end method

.method static b(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lh6/a;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->B()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lk6/e;->a:Lcom/oplus/anim/parser/moshi/c$a;

    invoke-virtual {p0, v1}, Lcom/oplus/anim/parser/moshi/c;->v0(Lcom/oplus/anim/parser/moshi/c$a;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->x0()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->D0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->i()V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, p1}, Lk6/e;->a(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lh6/a;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->v()V

    goto :goto_0

    :cond_3
    return-object v0
.end method
