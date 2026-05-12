.class public final Lcom/oplus/vfxsdk/common/f;
.super Lcom/oplus/vfxsdk/common/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/common/f$a;
    }
.end annotation


# static fields
.field public static final t:Lcom/oplus/vfxsdk/common/f$a;


# instance fields
.field private p:Lcom/oplus/vfxsdk/common/f;

.field private q:Ljava/util/HashMap;

.field private r:Le8/e;

.field private final s:Le8/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/vfxsdk/common/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/vfxsdk/common/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/vfxsdk/common/f;->t:Lcom/oplus/vfxsdk/common/f$a;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/vfxsdk/common/COEData;I)V
    .locals 1

    const-string v0, "coeData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/vfxsdk/common/a;-><init>(Lcom/oplus/vfxsdk/common/COEData;I)V

    iput-object p0, p0, Lcom/oplus/vfxsdk/common/f;->p:Lcom/oplus/vfxsdk/common/f;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/f;->q:Ljava/util/HashMap;

    new-instance p1, Lcom/oplus/vfxsdk/common/f$e;

    invoke-direct {p1}, Lcom/oplus/vfxsdk/common/f$e;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/f;->r:Le8/e;

    new-instance p1, Lcom/oplus/vfxsdk/common/f$d;

    invoke-direct {p1}, Lcom/oplus/vfxsdk/common/f$d;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/f;->s:Le8/d;

    return-void
.end method


# virtual methods
.method public P()Lcom/oplus/vfxsdk/common/f;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/f;->p:Lcom/oplus/vfxsdk/common/f;

    return-object p0
.end method

.method public final Q()Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/f;->q:Ljava/util/HashMap;

    return-object p0
.end method

.method public final R()Le8/d;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/f;->s:Le8/d;

    return-object p0
.end method

.method public final S()Le8/e;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/f;->r:Le8/e;

    return-object p0
.end method

.method public final T(Lcom/oplus/vfxsdk/common/Animator;Lcom/oplus/vfxsdk/common/AnimLine;Le8/e;)V
    .locals 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animeLine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builtinUpdate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/vfxsdk/common/COEParse;->Companion:Lcom/oplus/vfxsdk/common/COEParse$a;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/COEParse$a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/AnimLine;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/f;->q:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/f;->q:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/vfxsdk/common/o;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/oplus/vfxsdk/common/o;

    invoke-direct {v1}, Lcom/oplus/vfxsdk/common/o;-><init>()V

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/oplus/vfxsdk/common/o;->i(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/AnimLine;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oplus/vfxsdk/common/o;->k(Lcom/oplus/vfxsdk/common/u;)V

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/AnimLine;->getAnimKeys()[Lcom/oplus/vfxsdk/common/r;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lkotlin/collections/i;->H([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/r;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/oplus/vfxsdk/common/r;->getValue()F

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/AnimLine;->getIndex()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/oplus/vfxsdk/common/o;->a(Ljava/lang/Object;I)V

    invoke-virtual {p2, v1}, Lcom/oplus/vfxsdk/common/AnimLine;->setChannelData(Lcom/oplus/vfxsdk/common/o;)V

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/AnimLine;->hashCode()I

    move-result v0

    new-instance v2, Lcom/oplus/vfxsdk/common/f$b;

    invoke-direct {v2, v1, p2}, Lcom/oplus/vfxsdk/common/f$b;-><init>(Lcom/oplus/vfxsdk/common/o;Lcom/oplus/vfxsdk/common/AnimLine;)V

    invoke-virtual {p1, v0, v2}, Lcom/oplus/vfxsdk/common/Animator;->setAnimLineUpdate(ILe8/e;)V

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/common/AnimLine;->hashCode()I

    move-result p2

    new-instance v0, Lcom/oplus/vfxsdk/common/f$c;

    invoke-direct {v0}, Lcom/oplus/vfxsdk/common/f$c;-><init>()V

    invoke-virtual {p1, p2, v0}, Lcom/oplus/vfxsdk/common/Animator;->setAnimLinePop(ILe8/d;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/f;->q:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/o;->e()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p3}, Lcom/oplus/vfxsdk/common/o;->l(Le8/e;)V

    return-void
.end method

.method public final U(Ljava/util/HashMap;Le8/e;)V
    .locals 5

    const-string v0, "animParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "update"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/a;->k()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/vfxsdk/common/Animator;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/AnimatorValue;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimatorValue;->getAnimLines()[Lcom/oplus/vfxsdk/common/AnimLine;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {p0, v1, v4, p2}, Lcom/oplus/vfxsdk/common/f;->T(Lcom/oplus/vfxsdk/common/Animator;Lcom/oplus/vfxsdk/common/AnimLine;Le8/e;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic getAnimator()Lcom/oplus/vfxsdk/common/a;
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/f;->P()Lcom/oplus/vfxsdk/common/f;

    move-result-object p0

    return-object p0
.end method

.method public t(Le8/e;Le8/d;)Ljava/util/HashMap;
    .locals 0

    iget-object p1, p0, Lcom/oplus/vfxsdk/common/f;->r:Le8/e;

    iget-object p2, p0, Lcom/oplus/vfxsdk/common/f;->s:Le8/d;

    invoke-super {p0, p1, p2}, Lcom/oplus/vfxsdk/common/a;->t(Le8/e;Le8/d;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method
