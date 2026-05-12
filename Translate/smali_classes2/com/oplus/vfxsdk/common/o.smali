.class public final Lcom/oplus/vfxsdk/common/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/common/o$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/oplus/vfxsdk/common/u;

.field private c:Ljava/lang/Object;

.field private d:Z

.field private e:Le8/e;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/vfxsdk/common/o;->a:Ljava/lang/String;

    sget-object v0, Lcom/oplus/vfxsdk/common/u;->Float:Lcom/oplus/vfxsdk/common/u;

    iput-object v0, p0, Lcom/oplus/vfxsdk/common/o;->b:Lcom/oplus/vfxsdk/common/u;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/vfxsdk/common/o;->f:I

    return-void
.end method

.method private final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {p1}, Lkotlin/jvm/internal/i0;->j(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<*>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/o;->r(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/oplus/vfxsdk/common/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_0
    move-object v1, v2

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p1, v0

    goto/16 :goto_6

    :cond_2
    invoke-static {p1}, Lkotlin/jvm/internal/i0;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "null cannot be cast to non-null type kotlin.collections.Map<*, *>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/collections/o;->r(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/j0;->e(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lb9/d;->c(II)I

    move-result v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/oplus/vfxsdk/common/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v2

    :goto_3
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    move-object p1, v1

    goto :goto_6

    :cond_5
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_8

    const-string v0, "null cannot be cast to non-null type kotlin.Array<*>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_4
    if-ge v4, v1, :cond_7

    aget-object v5, p1, v4

    if-eqz v5, :cond_6

    invoke-direct {p0, v5}, Lcom/oplus/vfxsdk/common/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_5

    :cond_6
    move-object v5, v2

    :goto_5
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    new-array p0, v3, [Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    :cond_8
    :goto_6
    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;I)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/o;->b:Lcom/oplus/vfxsdk/common/u;

    sget-object v1, Lcom/oplus/vfxsdk/common/o$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "null cannot be cast to non-null type kotlin.FloatArray"

    packed-switch v0, :pswitch_data_0

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/o;->c:Ljava/lang/Object;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/oplus/vfxsdk/common/o;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oplus/vfxsdk/common/o;->c:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/oplus/vfxsdk/common/o;->c:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [F

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v0, p2

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/oplus/vfxsdk/common/o;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oplus/vfxsdk/common/o;->c:Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/oplus/vfxsdk/common/o;->c:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [F

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v0, p2

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/oplus/vfxsdk/common/o;->c:Ljava/lang/Object;

    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oplus/vfxsdk/common/o;->c:Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/oplus/vfxsdk/common/o;->c:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [F

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v0, p2

    goto :goto_0

    :pswitch_3
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/o;->c:Ljava/lang/Object;

    goto :goto_0

    :pswitch_4
    check-cast p1, Ljava/lang/Float;

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/o;->c:Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lcom/oplus/vfxsdk/common/o;->e:Le8/e;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/oplus/vfxsdk/common/o;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/o;->c:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2, p0}, Le8/e;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Lcom/oplus/vfxsdk/common/o;
    .locals 2

    new-instance v0, Lcom/oplus/vfxsdk/common/o;

    invoke-direct {v0}, Lcom/oplus/vfxsdk/common/o;-><init>()V

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/o;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/oplus/vfxsdk/common/o;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/o;->b:Lcom/oplus/vfxsdk/common/u;

    iput-object v1, v0, Lcom/oplus/vfxsdk/common/o;->b:Lcom/oplus/vfxsdk/common/u;

    iget-boolean v1, p0, Lcom/oplus/vfxsdk/common/o;->d:Z

    iput-boolean v1, v0, Lcom/oplus/vfxsdk/common/o;->d:Z

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/o;->c:Ljava/lang/Object;

    invoke-direct {v0, p0}, Lcom/oplus/vfxsdk/common/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/vfxsdk/common/o;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/o;->b:Lcom/oplus/vfxsdk/common/u;

    sget-object v1, Lcom/oplus/vfxsdk/common/o$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/common/o;->c:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type kotlin.FloatArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [F

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/oplus/vfxsdk/common/o;->c:Ljava/lang/Object;

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/oplus/vfxsdk/common/o;->c:Ljava/lang/Object;

    instance-of p1, p0, Ljava/lang/Float;

    if-eqz p1, :cond_1

    const-string p1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_1

    :cond_1
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_2

    const-string p1, "null cannot be cast to non-null type kotlin.Number"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/o;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Lcom/oplus/vfxsdk/common/u;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/o;->b:Lcom/oplus/vfxsdk/common/u;

    return-object p0
.end method

.method public final g()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/common/o;->d:Z

    return p0
.end method

.method public final h()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/o;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/o;->a:Ljava/lang/String;

    return-void
.end method

.method public final j(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/common/o;->f:I

    return-void
.end method

.method public final k(Lcom/oplus/vfxsdk/common/u;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/o;->b:Lcom/oplus/vfxsdk/common/u;

    return-void
.end method

.method public final l(Le8/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/o;->e:Le8/e;

    return-void
.end method

.method public final m(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/vfxsdk/common/o;->d:Z

    return-void
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/o;->c:Ljava/lang/Object;

    return-void
.end method
