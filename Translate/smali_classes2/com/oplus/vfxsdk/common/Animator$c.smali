.class public final Lcom/oplus/vfxsdk/common/Animator$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/vfxsdk/common/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/oplus/vfxsdk/common/AnimLine;

.field private b:F

.field private c:F

.field private d:F

.field private e:Ljava/lang/String;

.field private f:Le8/e;

.field private g:Le8/d;

.field private h:[Lcom/oplus/vfxsdk/common/r;

.field private i:Ljava/lang/Object;

.field private j:F

.field private k:F

.field final synthetic l:Lcom/oplus/vfxsdk/common/Animator;


# direct methods
.method public constructor <init>(Lcom/oplus/vfxsdk/common/Animator;Lcom/oplus/vfxsdk/common/AnimLine;)V
    .locals 1

    const-string v0, "mAnimLine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->l:Lcom/oplus/vfxsdk/common/Animator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oplus/vfxsdk/common/Animator$c;->a:Lcom/oplus/vfxsdk/common/AnimLine;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->b:F

    iput p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->c:F

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/AnimLine;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/AnimLine;->getUpdate()Le8/e;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->f:Le8/e;

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/AnimLine;->getPop()Le8/d;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->g:Le8/d;

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/AnimLine;->getAnimKeys()[Lcom/oplus/vfxsdk/common/r;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->h:[Lcom/oplus/vfxsdk/common/r;

    array-length p2, p1

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    new-instance p2, Lcom/oplus/vfxsdk/common/Animator$c$b;

    invoke-direct {p2}, Lcom/oplus/vfxsdk/common/Animator$c$b;-><init>()V

    invoke-static {p1, p2}, Lkotlin/collections/i;->s([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_0
    iget-object p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->h:[Lcom/oplus/vfxsdk/common/r;

    invoke-static {p1}, Lkotlin/collections/i;->D([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/vfxsdk/common/r;

    invoke-interface {p1}, Lcom/oplus/vfxsdk/common/r;->getTime()F

    move-result p1

    iput p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->j:F

    iget-object p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->h:[Lcom/oplus/vfxsdk/common/r;

    invoke-static {p1}, Lkotlin/collections/i;->O([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/vfxsdk/common/r;

    invoke-interface {p1}, Lcom/oplus/vfxsdk/common/r;->getTime()F

    move-result p1

    iput p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->k:F

    iget-object p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->h:[Lcom/oplus/vfxsdk/common/r;

    invoke-static {p1}, Lkotlin/collections/i;->D([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/vfxsdk/common/r;

    invoke-interface {p1}, Lcom/oplus/vfxsdk/common/r;->getValue()F

    move-result p1

    iput p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->d:F

    return-void
.end method

.method private final a(Lcom/oplus/vfxsdk/common/EventKey;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->l:Lcom/oplus/vfxsdk/common/Animator;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/Animator;->getILinkProxy()Ld8/b;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/EventKey;->getLinkIds()[Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Animator$c;->l:Lcom/oplus/vfxsdk/common/Animator;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/Animator;->getILinkProxy()Ld8/b;

    move-result-object v5

    invoke-interface {v5, v4}, Ld8/b;->a(I)Ld8/c;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld8/c;

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/EventKey;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "speed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/EventKey;->getCustom()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/EventKey;->getCustom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-interface {v0, v1}, Ld8/c;->setSpeed(F)V

    goto :goto_1

    :sswitch_1
    const-string v2, "pause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {v0}, Ld8/c;->pause()V

    goto :goto_1

    :sswitch_2
    const-string v2, "stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {v0}, Ld8/c;->stop()V

    goto :goto_1

    :sswitch_3
    const-string v2, "play"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    invoke-interface {v0}, Ld8/c;->play()V

    goto :goto_1

    :sswitch_4
    const-string v2, "seekTo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/EventKey;->getCustom()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/EventKey;->getCustom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ld8/c;->seekTo(D)V

    goto/16 :goto_1

    :cond_b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3603e4ed -> :sswitch_4
        0x348b34 -> :sswitch_3
        0x360802 -> :sswitch_2
        0x65825f6 -> :sswitch_1
        0x6890047 -> :sswitch_0
    .end sparse-switch
.end method

.method private final g(Z)V
    .locals 10

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator$c;->h:[Lcom/oplus/vfxsdk/common/r;

    iget v1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sget-object v2, Lcom/oplus/vfxsdk/common/Animator$c$a;->INSTANCE:Lcom/oplus/vfxsdk/common/Animator$c$a;

    invoke-static {v0, v1, v2}, Lcom/oplus/vfxsdk/common/e;->a([Ljava/lang/Object;Ljava/lang/Comparable;Lw8/l;)I

    move-result v1

    iget v2, p0, Lcom/oplus/vfxsdk/common/Animator$c;->b:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-nez v2, :cond_0

    iput v3, p0, Lcom/oplus/vfxsdk/common/Animator$c;->c:F

    :cond_0
    iget-object v2, p0, Lcom/oplus/vfxsdk/common/Animator$c;->g:Le8/d;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/oplus/vfxsdk/common/Animator$c;->a:Lcom/oplus/vfxsdk/common/AnimLine;

    invoke-virtual {v4}, Lcom/oplus/vfxsdk/common/AnimLine;->getChannelData()Lcom/oplus/vfxsdk/common/o;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/vfxsdk/common/Animator$c;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/oplus/vfxsdk/common/Animator$c;->a:Lcom/oplus/vfxsdk/common/AnimLine;

    invoke-virtual {v6}, Lcom/oplus/vfxsdk/common/AnimLine;->getIndex()I

    move-result v6

    invoke-interface {v2, v4, v5, v6}, Le8/d;->a(Lcom/oplus/vfxsdk/common/o;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez p1, :cond_2

    if-gtz v1, :cond_3

    :cond_2
    instance-of p1, v2, Ljava/lang/Float;

    if-eqz p1, :cond_3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/Animator$c;->b(F)V

    :cond_3
    iget-object p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->a:Lcom/oplus/vfxsdk/common/AnimLine;

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/AnimLine;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object p1

    sget-object v2, Lcom/oplus/vfxsdk/common/u;->Event:Lcom/oplus/vfxsdk/common/u;

    const/4 v4, 0x1

    if-ne p1, v2, :cond_6

    if-lez v1, :cond_5

    sub-int/2addr v1, v4

    aget-object p1, v0, v1

    instance-of v0, p1, Lcom/oplus/vfxsdk/common/EventKey;

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcom/oplus/vfxsdk/common/r;->getTime()F

    move-result v0

    iget v1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->c:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    invoke-interface {p1}, Lcom/oplus/vfxsdk/common/r;->getTime()F

    move-result v0

    iget v1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->b:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    check-cast p1, Lcom/oplus/vfxsdk/common/EventKey;

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/EventKey;->getEventType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "anim"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/oplus/vfxsdk/common/Animator$c;->a(Lcom/oplus/vfxsdk/common/EventKey;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/EventKey;->getEventType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notify"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/EventKey;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator$c;->l:Lcom/oplus/vfxsdk/common/Animator;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Animator;->getILinkProxy()Ld8/b;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/EventKey;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/EventKey;->getCustom()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ld8/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    iget p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->b:F

    iput p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->c:F

    goto/16 :goto_3

    :cond_6
    array-length p1, v0

    if-lt v1, p1, :cond_8

    invoke-static {v0}, Lkotlin/collections/i;->O([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/vfxsdk/common/r;

    instance-of v0, p1, Lcom/oplus/vfxsdk/common/AnimKey;

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lcom/oplus/vfxsdk/common/r;->getCacheValue()F

    move-result p1

    iput p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->d:F

    iget-object p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->f:Le8/e;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator$c;->a:Lcom/oplus/vfxsdk/common/AnimLine;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimLine;->getChannelData()Lcom/oplus/vfxsdk/common/o;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->e:Ljava/lang/String;

    iget v2, p0, Lcom/oplus/vfxsdk/common/Animator$c;->d:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Animator$c;->a:Lcom/oplus/vfxsdk/common/AnimLine;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/AnimLine;->getIndex()I

    move-result p0

    invoke-interface {p1, v0, v1, v2, p0}, Le8/e;->a(Lcom/oplus/vfxsdk/common/o;Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_7
    return-void

    :cond_8
    aget-object p1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    aget-object p1, v0, v2

    invoke-interface {p1}, Lcom/oplus/vfxsdk/common/r;->getCacheValue()F

    move-result p1

    iput p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->d:F

    iget-object p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->f:Le8/e;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator$c;->a:Lcom/oplus/vfxsdk/common/AnimLine;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimLine;->getChannelData()Lcom/oplus/vfxsdk/common/o;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->e:Ljava/lang/String;

    iget v2, p0, Lcom/oplus/vfxsdk/common/Animator$c;->d:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Animator$c;->a:Lcom/oplus/vfxsdk/common/AnimLine;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/AnimLine;->getIndex()I

    move-result p0

    invoke-interface {p1, v0, v1, v2, p0}, Le8/e;->a(Lcom/oplus/vfxsdk/common/o;Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_9
    return-void

    :cond_a
    instance-of v5, p1, Lcom/oplus/vfxsdk/common/AnimKey;

    if-eqz v5, :cond_b

    move-object v5, p1

    check-cast v5, Lcom/oplus/vfxsdk/common/AnimKey;

    invoke-virtual {v5}, Lcom/oplus/vfxsdk/common/AnimKey;->getExpr()Ljava/lang/String;

    move-result-object v5

    const-string v6, "origin"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/oplus/vfxsdk/common/Animator$c;->i:Ljava/lang/Object;

    if-eqz v5, :cond_b

    invoke-interface {p1}, Lcom/oplus/vfxsdk/common/r;->getValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/vfxsdk/common/Animator$c;->i:Ljava/lang/Object;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/oplus/vfxsdk/common/Animator$c;->i:Ljava/lang/Object;

    const-string v6, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {p1, v5}, Lcom/oplus/vfxsdk/common/r;->setValue(F)V

    :cond_b
    invoke-interface {p1}, Lcom/oplus/vfxsdk/common/r;->getCacheValue()F

    move-result v5

    sub-int/2addr v1, v4

    aget-object v0, v0, v1

    const-string v1, "null cannot be cast to non-null type com.oplus.vfxsdk.common.AnimKey"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/oplus/vfxsdk/common/AnimKey;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimKey;->getTime()F

    move-result v1

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimKey;->getCacheValue()F

    move-result v6

    invoke-interface {p1}, Lcom/oplus/vfxsdk/common/r;->getTime()F

    move-result p1

    sub-float/2addr p1, v1

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimKey;->getIpol()Ljava/lang/String;

    move-result-object v7

    const-string v8, "bezier"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_d

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimKey;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v3

    if-nez v3, :cond_c

    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimKey;->getBezier()[F

    move-result-object v7

    aget v2, v7, v2

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimKey;->getBezier()[F

    move-result-object v7

    aget v4, v7, v4

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimKey;->getBezier()[F

    move-result-object v7

    aget v7, v7, v9

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimKey;->getBezier()[F

    move-result-object v8

    const/4 v9, 0x3

    aget v8, v8, v9

    invoke-direct {v3, v2, v4, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Lcom/oplus/vfxsdk/common/AnimKey;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_c
    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimKey;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v2, p0, Lcom/oplus/vfxsdk/common/Animator$c;->b:F

    sub-float/2addr v2, v1

    div-float/2addr v2, p1

    invoke-interface {v0, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_2

    :cond_d
    const-string p1, "spring"

    invoke-static {v7, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimKey;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p1

    if-nez p1, :cond_e

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimKey;->getSpring()[F

    move-result-object p1

    aget p1, p1, v2

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimKey;->getSpring()[F

    move-result-object v1

    aget v1, v1, v4

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimKey;->getSpring()[F

    move-result-object v2

    aget v2, v2, v9

    invoke-static {p1, v1, v2}, Lcom/oplus/vfxsdk/common/b;->a(FFF)La;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oplus/vfxsdk/common/AnimKey;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_e
    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimKey;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type <root>.COUISpringAnimation"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, La;

    invoke-virtual {p1}, La;->a()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v1, v1, v2

    if-nez v1, :cond_f

    invoke-virtual {p1}, La;->c()V

    :cond_f
    iget p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->b:F

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimKey;->getTime()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimKey;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v1

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    :cond_10
    :goto_2
    sub-float/2addr v5, v6

    mul-float/2addr v3, v5

    add-float/2addr v6, v3

    iput v6, p0, Lcom/oplus/vfxsdk/common/Animator$c;->d:F

    iget-object p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->f:Le8/e;

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator$c;->a:Lcom/oplus/vfxsdk/common/AnimLine;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimLine;->getChannelData()Lcom/oplus/vfxsdk/common/o;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->e:Ljava/lang/String;

    iget v2, p0, Lcom/oplus/vfxsdk/common/Animator$c;->d:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Animator$c;->a:Lcom/oplus/vfxsdk/common/AnimLine;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/AnimLine;->getIndex()I

    move-result p0

    invoke-interface {p1, v0, v1, v2, p0}, Le8/e;->a(Lcom/oplus/vfxsdk/common/o;Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_11
    :goto_3
    return-void
.end method

.method public static synthetic i(Lcom/oplus/vfxsdk/common/Animator$c;DZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/vfxsdk/common/Animator$c;->h(DZ)V

    return-void
.end method


# virtual methods
.method public final b(F)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->i:Ljava/lang/Object;

    iget-object p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->h:[Lcom/oplus/vfxsdk/common/r;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/oplus/vfxsdk/common/Animator$c;->c(Lcom/oplus/vfxsdk/common/r;)F

    move-result v3

    invoke-interface {v2, v3}, Lcom/oplus/vfxsdk/common/r;->setCacheValue(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Lcom/oplus/vfxsdk/common/r;)F
    .locals 3

    const-string v0, "animKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/oplus/vfxsdk/common/AnimKey;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/oplus/vfxsdk/common/AnimKey;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimKey;->getExpr()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->i:Ljava/lang/Object;

    if-eqz v1, :cond_1

    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_1

    const-string v2, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Animator$c;->l:Lcom/oplus/vfxsdk/common/Animator;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/Animator;->getCoeExpressions()Lcom/oplus/vfxsdk/common/k;

    move-result-object p0

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimKey;->getExpr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/oplus/vfxsdk/common/r;->getValue()F

    move-result p1

    invoke-virtual {p0, v0, p1, v1}, Lcom/oplus/vfxsdk/common/k;->a(Ljava/lang/String;FF)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0

    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/oplus/vfxsdk/common/r;->getValue()F

    move-result p0

    return p0
.end method

.method public final d()Lcom/oplus/vfxsdk/common/AnimLine;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Animator$c;->a:Lcom/oplus/vfxsdk/common/AnimLine;

    return-object p0
.end method

.method public final e()F
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/Animator$c;->k:F

    return p0
.end method

.method public final f()F
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/Animator$c;->j:F

    return p0
.end method

.method public final h(DZ)V
    .locals 1

    iget v0, p0, Lcom/oplus/vfxsdk/common/Animator$c;->b:F

    double-to-float p1, p1

    cmpg-float p2, v0, p1

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    iput p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->b:F

    invoke-direct {p0, p3}, Lcom/oplus/vfxsdk/common/Animator$c;->g(Z)V

    :cond_1
    return-void
.end method

.method public final j(IF)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Animator$c;->h:[Lcom/oplus/vfxsdk/common/r;

    aget-object p0, p0, p1

    invoke-interface {p0, p2}, Lcom/oplus/vfxsdk/common/r;->setValue(F)V

    return-void
.end method

.method public final k(Le8/d;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->g:Le8/d;

    return-void
.end method

.method public final l(Le8/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Animator$c;->f:Le8/e;

    return-void
.end method

.method public final m(I)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Animator$c;->l:Lcom/oplus/vfxsdk/common/Animator;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/Animator;->getCoeExpressions()Lcom/oplus/vfxsdk/common/k;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/k;->b(I)V

    return-void
.end method
