.class public final Lcom/oplus/vfxsdk/rsview/a;
.super Lcom/oplus/vfxsdk/rsview/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/rsview/a$a;
    }
.end annotation


# static fields
.field public static final w:Lcom/oplus/vfxsdk/rsview/a$a;


# instance fields
.field private s:Ljava/util/HashMap;

.field private t:Landroid/graphics/RuntimeShader;

.field private u:Lcom/oplus/vfxsdk/rsview/a;

.field private final v:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/vfxsdk/rsview/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/vfxsdk/rsview/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/vfxsdk/rsview/a;->w:Lcom/oplus/vfxsdk/rsview/a$a;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/vfxsdk/common/COEData;ILcom/oplus/vfxsdk/rsview/p;)V
    .locals 1

    const-string v0, "coeData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/vfxsdk/rsview/o;-><init>(Lcom/oplus/vfxsdk/common/COEData;ILcom/oplus/vfxsdk/rsview/p;)V

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/rsview/a;->s:Ljava/util/HashMap;

    .line 4
    iput-object p0, p0, Lcom/oplus/vfxsdk/rsview/a;->u:Lcom/oplus/vfxsdk/rsview/a;

    .line 5
    new-instance p1, Lcom/oplus/vfxsdk/rsview/a$b;

    invoke-direct {p1, p0}, Lcom/oplus/vfxsdk/rsview/a$b;-><init>(Lcom/oplus/vfxsdk/rsview/a;)V

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/vfxsdk/rsview/a;->v:Ln8/j;

    .line 6
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/o;->Q()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/vfxsdk/common/COEData;ILcom/oplus/vfxsdk/rsview/p;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/vfxsdk/rsview/a;-><init>(Lcom/oplus/vfxsdk/common/COEData;ILcom/oplus/vfxsdk/rsview/p;)V

    return-void
.end method

.method private final h0()Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/a;->v:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method private final i0()V
    .locals 1

    invoke-direct {p0}, Lcom/oplus/vfxsdk/rsview/a;->h0()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/rsview/a;->e0(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/vfxsdk/rsview/a;->s:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public Y()V
    .locals 9

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/o;->X()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=>load start"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COE_LOGGER"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/a;->l()Lcom/oplus/vfxsdk/common/COEData;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/COEData;->getLayers()[Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, Lkotlin/collections/i;->H([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/Layer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Layer;->getRender()[Lcom/oplus/vfxsdk/common/RendPass;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/a;->l()Lcom/oplus/vfxsdk/common/COEData;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/COEData;->getLayers()[Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, v2}, Lkotlin/collections/i;->H([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/Layer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Layer;->getRender()[Lcom/oplus/vfxsdk/common/RendPass;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v3, v0

    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/o;->X()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=>translate start"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/o;->X()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/o;->T()Lcom/oplus/vfxsdk/rsview/p;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "haitest options:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/o;->T()Lcom/oplus/vfxsdk/rsview/p;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/oplus/vfxsdk/rsview/o;->P(Lcom/oplus/vfxsdk/common/RendPass;Lcom/oplus/vfxsdk/rsview/p;)Landroid/graphics/RuntimeShader;

    move-result-object v4

    iput-object v4, p0, Lcom/oplus/vfxsdk/rsview/a;->t:Landroid/graphics/RuntimeShader;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final e0(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 3

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/o;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/o;->b()Lcom/oplus/vfxsdk/common/o;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type V of com.oplus.vfxsdk.rsview.AnimatorEffectShader.deepCopy$lambda$2$lambda$1"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public f0()Lcom/oplus/vfxsdk/rsview/a;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/a;->u:Lcom/oplus/vfxsdk/rsview/a;

    return-object p0
.end method

.method public final g0()Landroid/graphics/RuntimeShader;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/a;->t:Landroid/graphics/RuntimeShader;

    return-object p0
.end method

.method public bridge synthetic getAnimator()Lcom/oplus/vfxsdk/common/a;
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/a;->f0()Lcom/oplus/vfxsdk/rsview/a;

    move-result-object p0

    return-object p0
.end method

.method public j0()V
    .locals 2

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/a;->g0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/vfxsdk/rsview/a;->h0()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/vfxsdk/rsview/o;->d0(Landroid/graphics/RuntimeShader;Ljava/util/HashMap;)V

    return-void
.end method

.method public q(Ljava/lang/String;)Lcom/oplus/vfxsdk/common/o;
    .locals 1

    const-string v0, "uniformName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/vfxsdk/rsview/a;->h0()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/vfxsdk/common/o;

    return-object p0
.end method

.method public y(Ljava/lang/String;ZLw8/a;)V
    .locals 1

    const-string v0, "stateKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/oplus/vfxsdk/common/a;->y(Ljava/lang/String;ZLw8/a;)V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/a;->j()Lcom/oplus/vfxsdk/common/g;

    move-result-object p1

    sget-object p2, Lcom/oplus/vfxsdk/common/g;->Animator:Lcom/oplus/vfxsdk/common/g;

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/oplus/vfxsdk/rsview/a;->i0()V

    :cond_0
    sget-object p1, Lcom/oplus/vfxsdk/common/g;->Slot:Lcom/oplus/vfxsdk/common/g;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/a;->K(Lcom/oplus/vfxsdk/common/g;)V

    return-void
.end method
