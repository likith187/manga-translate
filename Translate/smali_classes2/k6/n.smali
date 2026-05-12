.class abstract Lk6/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/oplus/anim/parser/moshi/c$a;

.field private static final b:Lcom/oplus/anim/parser/moshi/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, "fFamily"

    const-string v5, "data"

    const-string v0, "ch"

    const-string v1, "size"

    const-string v2, "w"

    const-string v3, "style"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lk6/n;->a:Lcom/oplus/anim/parser/moshi/c$a;

    const-string v0, "shapes"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lk6/n;->b:Lcom/oplus/anim/parser/moshi/c$a;

    return-void
.end method

.method static a(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lf6/e;
    .locals 11

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->k()V

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v5, v2

    move-object v7, v4

    move-object v8, v7

    move v2, v0

    move-wide v3, v5

    :goto_0
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->B()Z

    move-result v9

    if-eqz v9, :cond_9

    sget-object v9, Lk6/n;->a:Lcom/oplus/anim/parser/moshi/c$a;

    invoke-virtual {p0, v9}, Lcom/oplus/anim/parser/moshi/c;->v0(Lcom/oplus/anim/parser/moshi/c$a;)I

    move-result v9

    if-eqz v9, :cond_8

    const/4 v10, 0x1

    if-eq v9, v10, :cond_7

    const/4 v10, 0x2

    if-eq v9, v10, :cond_6

    const/4 v10, 0x3

    if-eq v9, v10, :cond_5

    const/4 v10, 0x4

    if-eq v9, v10, :cond_4

    const/4 v10, 0x5

    if-eq v9, v10, :cond_0

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->x0()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->D0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->k()V

    :goto_1
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->B()Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v9, Lk6/n;->b:Lcom/oplus/anim/parser/moshi/c$a;

    invoke-virtual {p0, v9}, Lcom/oplus/anim/parser/moshi/c;->v0(Lcom/oplus/anim/parser/moshi/c$a;)I

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->x0()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->D0()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->i()V

    :goto_2
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->B()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {p0, p1}, Lk6/h;->a(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lh6/c;

    move-result-object v9

    check-cast v9, Lh6/p;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->v()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->x()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->X()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->X()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->G()D

    move-result-wide v5

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->G()D

    move-result-wide v3

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->X()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/c;->x()V

    new-instance p0, Lf6/e;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lf6/e;-><init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
