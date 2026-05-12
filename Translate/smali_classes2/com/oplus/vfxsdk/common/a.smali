.class public abstract Lcom/oplus/vfxsdk/common/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/vfxsdk/common/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/common/a$a;,
        Lcom/oplus/vfxsdk/common/a$b;,
        Lcom/oplus/vfxsdk/common/a$c;
    }
.end annotation


# static fields
.field public static final n:Lcom/oplus/vfxsdk/common/a$a;

.field private static final o:Ljava/lang/String;


# instance fields
.field private final a:Lcom/oplus/vfxsdk/common/COEData;

.field private final b:I

.field private c:Lcom/oplus/vfxsdk/common/g;

.field private f:Ljava/util/HashMap;

.field private h:Ljava/util/HashMap;

.field private i:Ld8/b;

.field private j:Ljava/util/ArrayList;

.field private k:I

.field private l:I

.field private final m:Lcom/oplus/vfxsdk/common/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/vfxsdk/common/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/vfxsdk/common/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/vfxsdk/common/a;->n:Lcom/oplus/vfxsdk/common/a$a;

    const-string v0, "VFX:AbsAnimator"

    sput-object v0, Lcom/oplus/vfxsdk/common/a;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/vfxsdk/common/COEData;I)V
    .locals 1

    const-string v0, "coeData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/a;->a:Lcom/oplus/vfxsdk/common/COEData;

    iput p2, p0, Lcom/oplus/vfxsdk/common/a;->b:I

    sget-object p1, Lcom/oplus/vfxsdk/common/g;->Animator:Lcom/oplus/vfxsdk/common/g;

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/a;->c:Lcom/oplus/vfxsdk/common/g;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/a;->f:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/a;->h:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/a;->j:Ljava/util/ArrayList;

    new-instance p1, Lcom/oplus/vfxsdk/common/d;

    invoke-direct {p1}, Lcom/oplus/vfxsdk/common/d;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/a;->m:Lcom/oplus/vfxsdk/common/d;

    return-void
.end method

.method private final D()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "COE_LOGGER"

    const-string v0, "onTriger defaultPassParam is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/a;->k()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/vfxsdk/common/Animator;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/Animator;->stop()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oplus/vfxsdk/common/a;->m:Lcom/oplus/vfxsdk/common/d;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/d;->f()V

    return-void
.end method

.method private final M(Le8/c;[Ljava/lang/Object;)V
    .locals 4

    instance-of p0, p1, Le8/g;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Le8/g;

    aget-object p0, p2, v0

    const-string p2, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p1, p0}, Le8/a;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    instance-of p0, p1, Le8/i;

    if-eqz p0, :cond_1

    check-cast p1, Le8/i;

    aget-object p0, p2, v0

    const-string p2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Le8/a;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    instance-of p0, p1, Le8/h;

    if-eqz p0, :cond_5

    check-cast p1, Le8/h;

    new-instance p0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_4

    aget-object v2, p2, v0

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-float v2, v2

    goto :goto_1

    :cond_2
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot convert"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p0}, Lkotlin/collections/o;->o0(Ljava/util/Collection;)[F

    move-result-object p0

    invoke-virtual {p1, p0}, Le8/a;->f(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private final N(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/a;->a:Lcom/oplus/vfxsdk/common/COEData;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/COEData;->getLayers()[Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v1

    iget v2, p0, Lcom/oplus/vfxsdk/common/a;->b:I

    invoke-static {v1, v2}, Lkotlin/collections/i;->H([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/vfxsdk/common/Layer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/Layer;->getParams()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/oplus/vfxsdk/common/PassParams;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/collections/i;->a0([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/collections/e0;

    invoke-virtual {v1}, Lkotlin/collections/e0;->a()I

    move-result v2

    invoke-virtual {v1}, Lkotlin/collections/e0;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/vfxsdk/common/PassParams;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/PassParams;->getUniformPrams()[Lcom/oplus/vfxsdk/common/UniformValue;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v7, v1, v4

    iget-object v5, p0, Lcom/oplus/vfxsdk/common/a;->j:Ljava/util/ArrayList;

    invoke-static {v5, v2}, Lkotlin/collections/o;->T(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_2

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/UniformValue;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le8/c;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v5, v7}, Lcom/oplus/vfxsdk/common/a;->f(Le8/c;Lcom/oplus/vfxsdk/common/UniformValue;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v5}, Le8/c;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/UniformValue;->getValues()[Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lcom/oplus/vfxsdk/common/a;->c(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    new-instance v11, Lcom/oplus/vfxsdk/common/a$b;

    const-string v6, "null cannot be cast to non-null type com.oplus.vfxsdk.common.parameter.AbsParameter<*>"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v5

    check-cast v6, Le8/a;

    invoke-interface {v5}, Le8/c;->a()Ljava/lang/Object;

    move-result-object v8

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/oplus/vfxsdk/common/a$b;-><init>(Le8/a;Lcom/oplus/vfxsdk/common/UniformValue;Ljava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private final O(JJFLcom/oplus/vfxsdk/common/a$b;)Z
    .locals 8

    invoke-virtual {p6}, Lcom/oplus/vfxsdk/common/a$b;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    long-to-float p1, p1

    cmpg-float p2, p1, p5

    const/4 v0, 0x1

    if-gez p2, :cond_1

    return v0

    :cond_1
    sub-float/2addr p1, p5

    invoke-virtual {p6}, Lcom/oplus/vfxsdk/common/a$b;->d()Lcom/oplus/vfxsdk/common/UniformValue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/UniformValue;->getIpol()Ljava/lang/String;

    move-result-object p2

    const-string p5, "bezier"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/high16 p5, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    long-to-float p2, p3

    div-float/2addr p1, p2

    invoke-static {p5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p6}, Lcom/oplus/vfxsdk/common/a$b;->a()Le8/a;

    move-result-object p2

    invoke-virtual {p2}, Le8/a;->d()Le8/f;

    move-result-object p2

    invoke-virtual {p2}, Le8/f;->b()Landroid/animation/TimeInterpolator;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {p6}, Lcom/oplus/vfxsdk/common/a$b;->a()Le8/a;

    move-result-object p2

    invoke-virtual {p2}, Le8/a;->d()Le8/f;

    move-result-object p2

    invoke-virtual {p2}, Le8/f;->b()Landroid/animation/TimeInterpolator;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    :goto_0
    invoke-virtual {p6}, Lcom/oplus/vfxsdk/common/a$b;->c()Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Ljava/lang/Float;

    if-eqz p3, :cond_3

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p6}, Lcom/oplus/vfxsdk/common/a$b;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    invoke-virtual {p6}, Lcom/oplus/vfxsdk/common/a$b;->b()Ljava/lang/Object;

    move-result-object p4

    const-string v2, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    mul-float/2addr p4, p1

    add-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, p2, v1

    goto :goto_2

    :cond_3
    instance-of p3, p2, Ljava/lang/Integer;

    if-eqz p3, :cond_4

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p6}, Lcom/oplus/vfxsdk/common/a$b;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    invoke-virtual {p6}, Lcom/oplus/vfxsdk/common/a$b;->b()Ljava/lang/Object;

    move-result-object p4

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p4, p1

    add-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, p2, v1

    goto :goto_2

    :cond_4
    instance-of p2, p2, [F

    if-eqz p2, :cond_8

    invoke-virtual {p6}, Lcom/oplus/vfxsdk/common/a$b;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [F

    new-instance p3, Ljava/util/ArrayList;

    array-length p4, p2

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    array-length p4, p2

    move v2, v1

    move v3, v2

    :goto_1
    if-ge v2, p4, :cond_5

    aget v4, p2, v2

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p6}, Lcom/oplus/vfxsdk/common/a$b;->b()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type kotlin.FloatArray"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, [F

    aget v3, v6, v3

    mul-float/2addr v3, p1

    add-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_1

    :cond_5
    new-array p2, v1, [Ljava/lang/Object;

    invoke-interface {p3, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    :goto_2
    invoke-virtual {p6}, Lcom/oplus/vfxsdk/common/a$b;->a()Le8/a;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lcom/oplus/vfxsdk/common/a;->M(Le8/c;[Ljava/lang/Object;)V

    cmpl-float p0, p1, p5

    if-ltz p0, :cond_6

    move p0, v0

    goto :goto_3

    :cond_6
    move p0, v1

    :goto_3
    invoke-virtual {p6, p0}, Lcom/oplus/vfxsdk/common/a$b;->f(Z)V

    cmpg-float p0, p1, p5

    if-gez p0, :cond_7

    move v1, v0

    :cond_7
    return v1

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p6}, Lcom/oplus/vfxsdk/common/a$b;->c()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_9
    const/4 p1, 0x0

    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic a(Lcom/oplus/vfxsdk/common/a;JJFLcom/oplus/vfxsdk/common/a$b;)Z
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/oplus/vfxsdk/common/a;->O(JJFLcom/oplus/vfxsdk/common/a$b;)Z

    move-result p0

    return p0
.end method

.method private final c(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aget-object v0, p2, v1

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    const-string p0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    aget-object v0, p2, v1

    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_1

    const-string p0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_2

    :cond_1
    instance-of v0, p1, [F

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v3, p2, v1

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    goto :goto_1

    :cond_2
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot convert"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {v0}, Lkotlin/collections/o;->o0(Ljava/util/Collection;)[F

    move-result-object p2

    check-cast p1, [F

    invoke-direct {p0, p1, p2}, Lcom/oplus/vfxsdk/common/a;->d([F[F)[F

    move-result-object p0

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method private final d([F[F)[F
    .locals 4

    array-length p0, p1

    array-length v0, p2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length p0, p1

    new-array v0, p0, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget v2, p2, v1

    aget v3, p1, v1

    sub-float/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final g(Ljava/lang/String;Lw8/l;)V
    .locals 1

    sget-object v0, Lcom/oplus/vfxsdk/common/g;->Animator:Lcom/oplus/vfxsdk/common/g;

    iput-object v0, p0, Lcom/oplus/vfxsdk/common/a;->c:Lcom/oplus/vfxsdk/common/g;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/a;->k()Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {p2, p0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic u(Lcom/oplus/vfxsdk/common/a;Le8/e;Le8/d;ILjava/lang/Object;)Ljava/util/HashMap;
    .locals 1

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/oplus/vfxsdk/common/a;->t(Le8/e;Le8/d;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: initAnimators"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic w(Lcom/oplus/vfxsdk/common/a;Le8/b;Landroid/animation/TimeInterpolator;JILjava/lang/Object;)Ljava/util/ArrayList;
    .locals 3

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const p6, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2, p6, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const-wide/16 p3, 0x190

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/vfxsdk/common/a;->v(Le8/b;Landroid/animation/TimeInterpolator;J)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: initStateParams"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final z(Lcom/oplus/vfxsdk/common/Uniform;ILjava/util/HashMap;)V
    .locals 8

    const/4 p0, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-instance v3, Lcom/oplus/vfxsdk/common/o;

    invoke-direct {v3}, Lcom/oplus/vfxsdk/common/o;-><init>()V

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oplus/vfxsdk/common/o;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oplus/vfxsdk/common/o;->k(Lcom/oplus/vfxsdk/common/u;)V

    invoke-virtual {v3, p2}, Lcom/oplus/vfxsdk/common/o;->j(I)V

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v4, "iResolution"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object p2

    sget-object v4, Lcom/oplus/vfxsdk/common/a$c;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v4, p2

    const-string v4, "null cannot be cast to non-null type kotlin.Float"

    packed-switch p2, :pswitch_data_0

    sget-object p0, Lcom/oplus/vfxsdk/common/a;->o:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported uniform type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {v3, p0}, Lcom/oplus/vfxsdk/common/o;->n(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {v3, p0}, Lcom/oplus/vfxsdk/common/o;->n(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {v3, p0}, Lcom/oplus/vfxsdk/common/o;->n(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getX()F

    move-result p0

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getY()F

    move-result p2

    new-array v2, v2, [F

    aput p0, v2, v1

    aput p2, v2, v0

    invoke-virtual {v3, v2}, Lcom/oplus/vfxsdk/common/o;->n(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getX()F

    move-result p2

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getZ()F

    move-result v5

    new-array p0, p0, [F

    aput p2, p0, v1

    aput v4, p0, v0

    aput v5, p0, v2

    invoke-virtual {v3, p0}, Lcom/oplus/vfxsdk/common/o;->n(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getX()F

    move-result p2

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getZ()F

    move-result v5

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getW()F

    move-result v6

    const/4 v7, 0x4

    new-array v7, v7, [F

    aput p2, v7, v1

    aput v4, v7, v0

    aput v5, v7, v2

    aput v6, v7, p0

    invoke-virtual {v3, v7}, Lcom/oplus/vfxsdk/common/o;->n(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    :pswitch_6
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/vfxsdk/common/a$g;->INSTANCE:Lcom/oplus/vfxsdk/common/a$g;

    invoke-direct {p0, p1, v0}, Lcom/oplus/vfxsdk/common/a;->g(Ljava/lang/String;Lw8/l;)V

    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/vfxsdk/common/a$h;->INSTANCE:Lcom/oplus/vfxsdk/common/a$h;

    invoke-direct {p0, p1, v0}, Lcom/oplus/vfxsdk/common/a;->g(Ljava/lang/String;Lw8/l;)V

    return-void
.end method

.method public C(Ljava/lang/String;F)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/vfxsdk/common/a$i;

    invoke-direct {v0, p2}, Lcom/oplus/vfxsdk/common/a$i;-><init>(F)V

    invoke-direct {p0, p1, v0}, Lcom/oplus/vfxsdk/common/a;->g(Ljava/lang/String;Lw8/l;)V

    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/vfxsdk/common/a$j;->INSTANCE:Lcom/oplus/vfxsdk/common/a$j;

    invoke-direct {p0, p1, v0}, Lcom/oplus/vfxsdk/common/a;->g(Ljava/lang/String;Lw8/l;)V

    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/vfxsdk/common/a$k;->INSTANCE:Lcom/oplus/vfxsdk/common/a$k;

    invoke-direct {p0, p1, v0}, Lcom/oplus/vfxsdk/common/a;->g(Ljava/lang/String;Lw8/l;)V

    return-void
.end method

.method public G(Ljava/lang/String;F)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/vfxsdk/common/a$l;

    invoke-direct {v0, p2}, Lcom/oplus/vfxsdk/common/a$l;-><init>(F)V

    invoke-direct {p0, p1, v0}, Lcom/oplus/vfxsdk/common/a;->g(Ljava/lang/String;Lw8/l;)V

    return-void
.end method

.method public H(Ljava/lang/String;Lw8/a;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/vfxsdk/common/a$m;

    invoke-direct {v0, p2}, Lcom/oplus/vfxsdk/common/a$m;-><init>(Lw8/a;)V

    invoke-direct {p0, p1, v0}, Lcom/oplus/vfxsdk/common/a;->g(Ljava/lang/String;Lw8/l;)V

    return-void
.end method

.method public I(Ljava/lang/String;Lcom/oplus/vfxsdk/common/Animator$a;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/vfxsdk/common/a$n;

    invoke-direct {v0, p2}, Lcom/oplus/vfxsdk/common/a$n;-><init>(Lcom/oplus/vfxsdk/common/Animator$a;)V

    invoke-direct {p0, p1, v0}, Lcom/oplus/vfxsdk/common/a;->g(Ljava/lang/String;Lw8/l;)V

    return-void
.end method

.method public J(Ljava/lang/String;Lw8/l;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/vfxsdk/common/a$o;

    invoke-direct {v0, p2}, Lcom/oplus/vfxsdk/common/a$o;-><init>(Lw8/l;)V

    invoke-direct {p0, p1, v0}, Lcom/oplus/vfxsdk/common/a;->g(Ljava/lang/String;Lw8/l;)V

    return-void
.end method

.method protected final K(Lcom/oplus/vfxsdk/common/g;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/a;->c:Lcom/oplus/vfxsdk/common/g;

    return-void
.end method

.method public final L(Ld8/b;)V
    .locals 1

    const-string v0, "iLinkProxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/a;->i:Ld8/b;

    return-void
.end method

.method public final b(Lcom/oplus/vfxsdk/common/AnimLine;Le8/e;Le8/d;)V
    .locals 6

    const-string v0, "animLine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/AnimLine;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le8/c;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v2, Lcom/oplus/vfxsdk/common/a;->n:Lcom/oplus/vfxsdk/common/a$a;

    invoke-virtual {v2, p1, v4}, Lcom/oplus/vfxsdk/common/a$a;->b(Lcom/oplus/vfxsdk/common/AnimLine;Le8/c;)V

    invoke-virtual {v2, p1, v4}, Lcom/oplus/vfxsdk/common/a$a;->a(Lcom/oplus/vfxsdk/common/AnimLine;Le8/c;)V

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/AnimLine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/common/a;->q(Ljava/lang/String;)Lcom/oplus/vfxsdk/common/o;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p1, p0}, Lcom/oplus/vfxsdk/common/AnimLine;->setChannelData(Lcom/oplus/vfxsdk/common/o;)V

    :cond_4
    invoke-virtual {p1, p2}, Lcom/oplus/vfxsdk/common/AnimLine;->setUpdate(Le8/e;)V

    invoke-virtual {p1, p3}, Lcom/oplus/vfxsdk/common/AnimLine;->setPop(Le8/d;)V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/a;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final f(Le8/c;Lcom/oplus/vfxsdk/common/UniformValue;)Z
    .locals 5

    const-string p0, "param"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "target"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/UniformValue;->getValues()[Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p1, Le8/g;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    array-length p2, p0

    if-nez p2, :cond_0

    return v1

    :cond_0
    aget-object p0, p0, v1

    instance-of p2, p0, Ljava/lang/Number;

    if-eqz p2, :cond_1

    check-cast p1, Le8/g;

    invoke-virtual {p1}, Le8/a;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    cmpg-float p0, p1, p0

    if-nez p0, :cond_1

    goto/16 :goto_2

    :cond_1
    move v0, v1

    goto/16 :goto_2

    :cond_2
    instance-of p2, p1, Le8/i;

    if-eqz p2, :cond_4

    array-length p2, p0

    if-nez p2, :cond_3

    return v1

    :cond_3
    aget-object p0, p0, v1

    instance-of p2, p0, Ljava/lang/Number;

    if-eqz p2, :cond_1

    check-cast p1, Le8/i;

    invoke-virtual {p1}, Le8/a;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-ne p1, p0, :cond_1

    goto/16 :goto_2

    :cond_4
    instance-of p2, p1, Le8/h;

    if-eqz p2, :cond_1

    array-length p2, p0

    move-object v2, p1

    check-cast v2, Le8/h;

    invoke-virtual {v2}, Le8/a;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    array-length v3, v3

    if-eq p2, v3, :cond_5

    return v1

    :cond_5
    array-length p2, p0

    if-nez p2, :cond_6

    invoke-virtual {v2}, Le8/a;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [F

    array-length p2, p2

    if-nez p2, :cond_6

    return v0

    :cond_6
    :try_start_0
    array-length p2, p0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_9

    aget-object v3, p0, v2

    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_8

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    move-object v4, p1

    check-cast v4, Le8/h;

    invoke-virtual {v4}, Le8/a;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    aget v4, v4, v2

    cmpg-float v3, v4, v3

    if-nez v3, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return v1

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lc9/c;

    move-result-object p1

    invoke-interface {p1}, Lc9/c;->c()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error converting target values: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_9
    :goto_2
    return v0
.end method

.method public h()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/a;->a:Lcom/oplus/vfxsdk/common/COEData;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/COEData;->getLayers()[Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/oplus/vfxsdk/common/a;->b:I

    invoke-static {v0, p0}, Lkotlin/collections/i;->H([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/vfxsdk/common/Layer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/Layer;->getParams()Ljava/util/HashMap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final i()Lcom/oplus/vfxsdk/common/d;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/a;->m:Lcom/oplus/vfxsdk/common/d;

    return-object p0
.end method

.method protected final j()Lcom/oplus/vfxsdk/common/g;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/a;->c:Lcom/oplus/vfxsdk/common/g;

    return-object p0
.end method

.method public k()Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/a;->f:Ljava/util/HashMap;

    return-object p0
.end method

.method public final l()Lcom/oplus/vfxsdk/common/COEData;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/a;->a:Lcom/oplus/vfxsdk/common/COEData;

    return-object p0
.end method

.method public final m()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/a;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final n()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/a;->l:I

    return p0
.end method

.method public o(Ljava/lang/String;)[Lcom/oplus/vfxsdk/common/PassParams;
    .locals 1

    const-string v0, "stateKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/a;->a:Lcom/oplus/vfxsdk/common/COEData;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/COEData;->getLayers()[Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/oplus/vfxsdk/common/a;->b:I

    invoke-static {v0, p0}, Lkotlin/collections/i;->H([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/vfxsdk/common/Layer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/Layer;->getParams()Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/oplus/vfxsdk/common/PassParams;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public p(ILjava/lang/String;)Lcom/oplus/vfxsdk/common/o;
    .locals 1

    const-string v0, "uniformName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/a;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/vfxsdk/common/o;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public q(Ljava/lang/String;)Lcom/oplus/vfxsdk/common/o;
    .locals 1

    const-string v0, "uniformName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/a;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    const-string v0, "<get-entries>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/o;->L(Ljava/lang/Iterable;)Lkotlin/sequences/f;

    move-result-object p0

    new-instance v0, Lcom/oplus/vfxsdk/common/a$d;

    invoke-direct {v0, p1}, Lcom/oplus/vfxsdk/common/a$d;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lkotlin/sequences/i;->p(Lkotlin/sequences/f;Lw8/l;)Lkotlin/sequences/f;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/i;->k(Lkotlin/sequences/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/vfxsdk/common/o;

    return-object p0
.end method

.method public final r()Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/a;->h:Ljava/util/HashMap;

    return-object p0
.end method

.method public final s(Ljava/lang/String;Lcom/oplus/vfxsdk/common/AnimatorValue;Le8/e;Le8/d;)V
    .locals 4

    const-string v0, "animName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animatorValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/AnimatorValue;->getAnimLines()[Lcom/oplus/vfxsdk/common/AnimLine;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0, v3, p3, p4}, Lcom/oplus/vfxsdk/common/a;->b(Lcom/oplus/vfxsdk/common/AnimLine;Le8/e;Le8/d;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/oplus/vfxsdk/common/Animator;

    iget-object p4, p0, Lcom/oplus/vfxsdk/common/a;->a:Lcom/oplus/vfxsdk/common/COEData;

    invoke-virtual {p4}, Lcom/oplus/vfxsdk/common/COEData;->getExpressions()Lcom/oplus/vfxsdk/common/k;

    move-result-object p4

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/a;->i:Ld8/b;

    invoke-direct {p3, p2, p4, v0}, Lcom/oplus/vfxsdk/common/Animator;-><init>(Lcom/oplus/vfxsdk/common/AnimatorValue;Lcom/oplus/vfxsdk/common/k;Ld8/b;)V

    invoke-virtual {p3}, Lcom/oplus/vfxsdk/common/Animator;->init()V

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/a;->f:Ljava/util/HashMap;

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public t(Le8/e;Le8/d;)Ljava/util/HashMap;
    .locals 3

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/a;->a:Lcom/oplus/vfxsdk/common/COEData;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/COEData;->getLayers()[Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v0

    iget v1, p0, Lcom/oplus/vfxsdk/common/a;->b:I

    invoke-static {v0, v1}, Lkotlin/collections/i;->H([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/Layer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Layer;->getAnimParams()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/vfxsdk/common/AnimatorValue;

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/oplus/vfxsdk/common/a;->s(Ljava/lang/String;Lcom/oplus/vfxsdk/common/AnimatorValue;Le8/e;Le8/d;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/common/a;->f:Ljava/util/HashMap;

    return-object p0
.end method

.method public final v(Le8/b;Landroid/animation/TimeInterpolator;J)Ljava/util/ArrayList;
    .locals 36

    move-object/from16 v0, p0

    const-string v1, "interpolator"

    move-object/from16 v13, p2

    invoke-static {v13, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oplus/vfxsdk/common/a;->a:Lcom/oplus/vfxsdk/common/COEData;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/COEData;->getLayers()[Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v1

    iget v2, v0, Lcom/oplus/vfxsdk/common/a;->b:I

    invoke-static {v1, v2}, Lkotlin/collections/i;->H([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/vfxsdk/common/Layer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/Layer;->getParams()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oplus/vfxsdk/common/PassParams;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lkotlin/collections/i;->a0([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/collections/e0;

    invoke-virtual {v2}, Lkotlin/collections/e0;->a()I

    move-result v3

    invoke-virtual {v2}, Lkotlin/collections/e0;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/vfxsdk/common/PassParams;

    new-instance v14, Lcom/oplus/vfxsdk/common/a$e;

    move-object/from16 v15, p1

    invoke-direct {v14, v15, v3}, Lcom/oplus/vfxsdk/common/a$e;-><init>(Le8/b;I)V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/common/PassParams;->getUniformPrams()[Lcom/oplus/vfxsdk/common/UniformValue;

    move-result-object v11

    array-length v10, v11

    const/16 v16, 0x0

    move/from16 v8, v16

    :goto_1
    if-ge v8, v10, :cond_3

    aget-object v2, v11, v8

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/common/UniformValue;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object v3

    sget-object v4, Lcom/oplus/vfxsdk/common/a$c;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move-object/from16 v17, v1

    move/from16 v24, v8

    move/from16 v19, v10

    move-object/from16 v20, v11

    move-object v1, v12

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {v2}, Lcom/oplus/vfxsdk/common/UniformValue;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v6, Le8/i;

    new-instance v7, Le8/f;

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/common/UniformValue;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/common/UniformValue;->getValues()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v16

    const-string v4, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    const/16 v17, 0x30

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    move-object v2, v7

    move-object/from16 v5, p2

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-wide/from16 v6, p3

    move/from16 v24, v8

    move-object/from16 v25, v9

    move-wide/from16 v8, v19

    move/from16 v19, v10

    move-object/from16 v10, v21

    move-object/from16 v20, v11

    move/from16 v11, v17

    move-object/from16 v17, v1

    move-object v1, v12

    move-object/from16 v12, v18

    invoke-direct/range {v2 .. v12}, Le8/f;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/animation/TimeInterpolator;JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v2, v3, v14}, Le8/i;-><init>(Le8/f;Le8/e;)V

    move-object/from16 v3, v25

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_2
    move-object/from16 v17, v1

    move/from16 v24, v8

    move/from16 v19, v10

    move-object/from16 v20, v11

    move-object v1, v12

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/common/UniformValue;->getBezier()[F

    move-result-object v3

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/common/UniformValue;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Le8/g;

    new-instance v9, Le8/f;

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/common/UniformValue;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/common/UniformValue;->getValues()[Ljava/lang/Object;

    move-result-object v10

    aget-object v10, v10, v16

    const-string v11, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v27, v10

    check-cast v27, Ljava/lang/Float;

    new-instance v10, Landroid/view/animation/PathInterpolator;

    aget v11, v3, v16

    aget v6, v3, v6

    aget v5, v3, v5

    aget v3, v3, v4

    invoke-direct {v10, v11, v6, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/common/UniformValue;->getDuration()J

    move-result-wide v29

    const/16 v34, 0x30

    const/16 v35, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    move-object/from16 v25, v9

    move-object/from16 v28, v10

    invoke-direct/range {v25 .. v35}, Le8/f;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/animation/TimeInterpolator;JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v8, v9, v14}, Le8/g;-><init>(Le8/f;Le8/e;)V

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_3
    move-object/from16 v17, v1

    move/from16 v24, v8

    move/from16 v19, v10

    move-object/from16 v20, v11

    move-object v1, v12

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/common/UniformValue;->getBezier()[F

    move-result-object v3

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/common/UniformValue;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/common/UniformValue;->getValues()[Ljava/lang/Object;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v7

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    array-length v9, v7

    move/from16 v10, v16

    :goto_2
    if-ge v10, v9, :cond_2

    aget-object v11, v7, v10

    instance-of v12, v11, Ljava/lang/Integer;

    if-eqz v12, :cond_0

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    int-to-float v11, v11

    goto :goto_3

    :cond_0
    instance-of v12, v11, Ljava/lang/Float;

    if-eqz v12, :cond_1

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    :goto_3
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/common/UniformValue;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value type for parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v8}, Lkotlin/collections/o;->o0(Ljava/util/Collection;)[F

    move-result-object v27

    new-instance v7, Landroid/view/animation/PathInterpolator;

    aget v8, v3, v16

    aget v6, v3, v6

    aget v5, v3, v5

    aget v3, v3, v4

    invoke-direct {v7, v8, v6, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v3, Le8/f;

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x30

    const/16 v35, 0x0

    move-object/from16 v25, v3

    move-object/from16 v28, v7

    move-wide/from16 v29, p3

    invoke-direct/range {v25 .. v35}, Le8/f;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/animation/TimeInterpolator;JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/common/UniformValue;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Le8/h;

    invoke-direct {v4, v3, v14}, Le8/h;-><init>(Le8/f;Le8/e;)V

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v8, v24, 0x1

    move-object v12, v1

    move-object/from16 v1, v17

    move/from16 v10, v19

    move-object/from16 v11, v20

    goto/16 :goto_1

    :cond_3
    move-object/from16 v17, v1

    move-object v1, v12

    iget v2, v0, Lcom/oplus/vfxsdk/common/a;->k:I

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/oplus/vfxsdk/common/a;->k:I

    iget-object v2, v0, Lcom/oplus/vfxsdk/common/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v17

    goto/16 :goto_0

    :cond_4
    iget-object v0, v0, Lcom/oplus/vfxsdk/common/a;->j:Ljava/util/ArrayList;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public x()V
    .locals 12

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/a;->a:Lcom/oplus/vfxsdk/common/COEData;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/COEData;->getLayers()[Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v0

    iget v1, p0, Lcom/oplus/vfxsdk/common/a;->b:I

    invoke-static {v0, v1}, Lkotlin/collections/i;->H([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/Layer;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Layer;->getRender()[Lcom/oplus/vfxsdk/common/RendPass;

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v3, v2

    move v4, v1

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v6, v2, v4

    add-int/lit8 v7, v5, 0x1

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/oplus/vfxsdk/common/a;->h:Ljava/util/HashMap;

    invoke-interface {v10, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/oplus/vfxsdk/common/RendPass;->getUniforms()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    const-string v10, "<get-keys>(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/oplus/vfxsdk/common/RendPass;->getUniforms()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oplus/vfxsdk/common/Uniform;

    if-eqz v10, :cond_0

    invoke-static {v10}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-direct {p0, v10, v5, v8}, Lcom/oplus/vfxsdk/common/a;->z(Lcom/oplus/vfxsdk/common/Uniform;ILjava/util/HashMap;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lcom/oplus/vfxsdk/common/RendPass;->getEffects()[Lcom/oplus/vfxsdk/common/Effect;

    move-result-object v5

    if-eqz v5, :cond_3

    array-length v6, v5

    move v9, v1

    :goto_2
    if-ge v9, v6, :cond_3

    aget-object v10, v5, v9

    invoke-virtual {v10}, Lcom/oplus/vfxsdk/common/Effect;->getUniforms()Ljava/util/HashMap;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oplus/vfxsdk/common/Uniform;

    invoke-direct {p0, v11, v1, v8}, Lcom/oplus/vfxsdk/common/a;->z(Lcom/oplus/vfxsdk/common/Uniform;ILjava/util/HashMap;)V

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Layer;->getPostProcessor()[Lcom/oplus/vfxsdk/common/PostProcessorData;

    move-result-object v0

    if-eqz v0, :cond_7

    array-length v2, v0

    move v3, v1

    :goto_4
    if-ge v3, v2, :cond_7

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/oplus/vfxsdk/common/a;->h:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/oplus/vfxsdk/common/PostProcessorData;->getProperties()Ljava/util/HashMap;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/vfxsdk/common/Uniform;

    if-eqz v5, :cond_5

    invoke-direct {p0, v6, v1, v5}, Lcom/oplus/vfxsdk/common/a;->z(Lcom/oplus/vfxsdk/common/Uniform;ILjava/util/HashMap;)V

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method public y(Ljava/lang/String;ZLw8/a;)V
    .locals 7

    const-string v0, "stateKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/vfxsdk/common/a;->D()V

    invoke-direct {p0, p1}, Lcom/oplus/vfxsdk/common/a;->N(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p2, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/vfxsdk/common/a$b;

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/a$b;->a()Le8/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/a$b;->d()Lcom/oplus/vfxsdk/common/UniformValue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/UniformValue;->getValues()[Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/oplus/vfxsdk/common/a;->M(Le8/c;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Lw8/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln8/h0;

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    invoke-interface {p3}, Lw8/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln8/h0;

    :cond_3
    sget-object p0, Lcom/oplus/vfxsdk/common/a;->o:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "state:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " animParameters empty"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/vfxsdk/common/a$b;

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/a$b;->d()Lcom/oplus/vfxsdk/common/UniformValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/UniformValue;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0xa

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-gez v1, :cond_6

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/a$b;->a()Le8/a;

    move-result-object v1

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/a$b;->d()Lcom/oplus/vfxsdk/common/UniformValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/UniformValue;->getValues()[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/oplus/vfxsdk/common/a;->M(Le8/c;[Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Lcom/oplus/vfxsdk/common/a$b;->f(Z)V

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/a$b;->d()Lcom/oplus/vfxsdk/common/UniformValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/UniformValue;->getIpol()Ljava/lang/String;

    move-result-object v1

    const-string v3, "bezier"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/a$b;->a()Le8/a;

    move-result-object v1

    invoke-virtual {v1}, Le8/a;->d()Le8/f;

    move-result-object v1

    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/a$b;->d()Lcom/oplus/vfxsdk/common/UniformValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/vfxsdk/common/UniformValue;->getBezier()[F

    move-result-object v6

    aget v4, v6, v4

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/a$b;->d()Lcom/oplus/vfxsdk/common/UniformValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/vfxsdk/common/UniformValue;->getBezier()[F

    move-result-object v6

    aget v2, v6, v2

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/a$b;->d()Lcom/oplus/vfxsdk/common/UniformValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/vfxsdk/common/UniformValue;->getBezier()[F

    move-result-object v6

    aget v3, v6, v3

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/a$b;->d()Lcom/oplus/vfxsdk/common/UniformValue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/UniformValue;->getBezier()[F

    move-result-object p2

    const/4 v6, 0x3

    aget p2, p2, v6

    invoke-direct {v5, v4, v2, v3, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v5}, Le8/f;->d(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/a$b;->d()Lcom/oplus/vfxsdk/common/UniformValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/UniformValue;->getIpol()Ljava/lang/String;

    move-result-object v1

    const-string v5, "spring"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/a$b;->a()Le8/a;

    move-result-object v1

    invoke-virtual {v1}, Le8/a;->d()Le8/f;

    move-result-object v1

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/a$b;->d()Lcom/oplus/vfxsdk/common/UniformValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/vfxsdk/common/UniformValue;->getSpring()[F

    move-result-object v5

    aget v4, v5, v4

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/a$b;->d()Lcom/oplus/vfxsdk/common/UniformValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/vfxsdk/common/UniformValue;->getSpring()[F

    move-result-object v5

    aget v2, v5, v2

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/a$b;->d()Lcom/oplus/vfxsdk/common/UniformValue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/UniformValue;->getSpring()[F

    move-result-object p2

    aget p2, p2, v3

    invoke-static {v4, v2, p2}, Lcom/oplus/vfxsdk/common/b;->a(FFF)La;

    move-result-object p2

    invoke-virtual {v1, p2}, Le8/f;->d(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_1

    :cond_8
    iget-object p1, p0, Lcom/oplus/vfxsdk/common/a;->m:Lcom/oplus/vfxsdk/common/d;

    new-instance p2, Lcom/oplus/vfxsdk/common/a$f;

    invoke-direct {p2, v0, p0, p3}, Lcom/oplus/vfxsdk/common/a$f;-><init>(Ljava/util/ArrayList;Lcom/oplus/vfxsdk/common/a;Lw8/a;)V

    invoke-virtual {p1, p2}, Lcom/oplus/vfxsdk/common/d;->e(Lcom/oplus/vfxsdk/common/p;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/a;->m:Lcom/oplus/vfxsdk/common/d;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/d;->d()V

    return-void
.end method
