.class public Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/vfxsdk/naive/coe/engine/NativeCallback;
.implements Lcom/oplus/vfxsdk/common/q;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer$a;

.field public static final TAG:Ljava/lang/String; = "BaseRenderer"


# instance fields
.field private animator:Lcom/oplus/vfxsdk/common/a;

.field private blendDstFactor:I

.field private blendEnable:Z

.field private blendSrcFactor:I

.field private enable:Z

.field private final engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

.field public layer:Lcom/oplus/vfxsdk/common/Layer;

.field private layerOrder:I

.field private nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

.field private passList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/vfxsdk/naive/coe/engine/RenderPass;",
            ">;"
        }
    .end annotation
.end field

.field private sortingOrder:I

.field private final updateListenerArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lh8/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->Companion:Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer$a;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;I)V
    .locals 1

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    iput p2, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->sortingOrder:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->updateListenerArray:Ljava/util/ArrayList;

    new-instance p2, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    iget v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->sortingOrder:I

    invoke-direct {p2, p1, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;I)V

    iput-object p2, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->passList:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->enable:Z

    const/16 p1, 0x302

    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->blendSrcFactor:I

    const/16 p1, 0x303

    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->blendDstFactor:I

    return-void
.end method

.method private final getChannelData(ILjava/lang/String;)Lcom/oplus/vfxsdk/common/o;
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/vfxsdk/common/a;->p(ILjava/lang/String;)Lcom/oplus/vfxsdk/common/o;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static synthetic getPassList$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final addComponent(Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->a(Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;)V

    return-void
.end method

.method public final addPass(Lcom/oplus/vfxsdk/naive/coe/engine/Pass;)I
    .locals 1

    const-string v0, "pass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->d()Lcom/oplus/vfxsdk/naive/coe/engine/Material;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->d()Lcom/oplus/vfxsdk/naive/coe/engine/Material;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->d(Lcom/oplus/vfxsdk/naive/coe/engine/Pass;)I

    move-result p0

    return p0
.end method

.method public final addUpdateListener(Lh8/b;)V
    .locals 1

    const-string v0, "updateListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->updateListenerArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->updateListenerArray:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final flush()V
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->d()Lcom/oplus/vfxsdk/naive/coe/engine/Material;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->e()V

    return-void
.end method

.method public getAllTrigerState()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllTrigers()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Lcom/oplus/vfxsdk/common/PassParams;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/oplus/vfxsdk/common/q$a;->a(Lcom/oplus/vfxsdk/common/q;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public getAnimator()Lcom/oplus/vfxsdk/common/a;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->animator:Lcom/oplus/vfxsdk/common/a;

    return-object p0
.end method

.method public getAnimators()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/Animator;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/oplus/vfxsdk/common/q$a;->b(Lcom/oplus/vfxsdk/common/q;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public final getBlendDstFactor()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->blendDstFactor:I

    return p0
.end method

.method public final getBlendEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->blendEnable:Z

    return p0
.end method

.method public final getBlendSrcFactor()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->blendSrcFactor:I

    return p0
.end method

.method public final getEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->enable:Z

    return p0
.end method

.method public final getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    return-object p0
.end method

.method public getID()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getLayer()Lcom/oplus/vfxsdk/common/Layer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->layer:Lcom/oplus/vfxsdk/common/Layer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "layer"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLayerOrder()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->layerOrder:I

    return p0
.end method

.method public final getMaterial()Lcom/oplus/vfxsdk/naive/coe/engine/Material;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->d()Lcom/oplus/vfxsdk/naive/coe/engine/Material;

    move-result-object p0

    return-object p0
.end method

.method public final getMesh()Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->e()Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;

    move-result-object p0

    return-object p0
.end method

.method public final getNativeRenderer()Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    return-object p0
.end method

.method public getPass(I)Lcom/oplus/vfxsdk/naive/coe/engine/Pass;
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->d()Lcom/oplus/vfxsdk/naive/coe/engine/Material;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->d()Lcom/oplus/vfxsdk/naive/coe/engine/Material;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->f(I)Lcom/oplus/vfxsdk/naive/coe/engine/Pass;

    move-result-object p0

    return-object p0
.end method

.method protected final getPassList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/vfxsdk/naive/coe/engine/RenderPass;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->passList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getPostProcessor()Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->f()Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;

    move-result-object p0

    return-object p0
.end method

.method public final getSortingOrder()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->sortingOrder:I

    return p0
.end method

.method public final getTransform()Lcom/oplus/vfxsdk/naive/coe/engine/Transform;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->g()Lcom/oplus/vfxsdk/naive/coe/engine/Transform;

    move-result-object p0

    return-object p0
.end method

.method public getTriger(Ljava/lang/String;)[Lcom/oplus/vfxsdk/common/PassParams;
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/vfxsdk/common/q$a;->c(Lcom/oplus/vfxsdk/common/q;Ljava/lang/String;)[Lcom/oplus/vfxsdk/common/PassParams;

    move-result-object p0

    return-object p0
.end method

.method public onAnimEnd(Ljava/lang/String;)V
    .locals 0

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimStart(Ljava/lang/String;)V
    .locals 0

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public varargs onAnimUpdate(Ljava/lang/String;D[F)V
    .locals 0

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "values"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onEvent(Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event;)V
    .locals 0

    return-void
.end method

.method public onLayoutChange()V
    .locals 0

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSurfaceChange(FF)V
    .locals 0

    return-void
.end method

.method public onTriger(Ljava/lang/String;ZLw8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lw8/a;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/vfxsdk/common/q$a;->d(Lcom/oplus/vfxsdk/common/q;Ljava/lang/String;ZLw8/a;)V

    return-void
.end method

.method public onUpdate(D)V
    .locals 1

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->updateListenerArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/b;

    invoke-interface {v0, p1, p2}, Lh8/b;->onUpdate(D)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pauseAnim(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/vfxsdk/common/q$a;->e(Lcom/oplus/vfxsdk/common/q;Ljava/lang/String;)V

    return-void
.end method

.method public playAnim(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/vfxsdk/common/q$a;->f(Lcom/oplus/vfxsdk/common/q;Ljava/lang/String;)V

    return-void
.end method

.method public playAnimTo(Ljava/lang/String;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/vfxsdk/common/q$a;->g(Lcom/oplus/vfxsdk/common/q;Ljava/lang/String;F)V

    return-void
.end method

.method public final removeComponent(Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->h(Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;)V

    return-void
.end method

.method public final removeUpdateListener(Lh8/b;)V
    .locals 1

    const-string v0, "updateListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->updateListenerArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->updateListenerArray:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public restartAnim(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/vfxsdk/common/q$a;->h(Lcom/oplus/vfxsdk/common/q;Ljava/lang/String;)V

    return-void
.end method

.method public seekAnimNext(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/vfxsdk/common/q$a;->i(Lcom/oplus/vfxsdk/common/q;Ljava/lang/String;)V

    return-void
.end method

.method public seekAnimTo(Ljava/lang/String;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/vfxsdk/common/q$a;->j(Lcom/oplus/vfxsdk/common/q;Ljava/lang/String;F)V

    return-void
.end method

.method public setAnimEndListener(Ljava/lang/String;Lw8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lw8/a;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/oplus/vfxsdk/common/q$a;->k(Lcom/oplus/vfxsdk/common/q;Ljava/lang/String;Lw8/a;)V

    return-void
.end method

.method public setAnimMode(Ljava/lang/String;Lcom/oplus/vfxsdk/common/Animator$a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/vfxsdk/common/q$a;->l(Lcom/oplus/vfxsdk/common/q;Ljava/lang/String;Lcom/oplus/vfxsdk/common/Animator$a;)V

    return-void
.end method

.method public setAnimUpdateListener(Ljava/lang/String;Lw8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lw8/l;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/oplus/vfxsdk/common/q$a;->m(Lcom/oplus/vfxsdk/common/q;Ljava/lang/String;Lw8/l;)V

    return-void
.end method

.method public setAnimator(Lcom/oplus/vfxsdk/common/a;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->animator:Lcom/oplus/vfxsdk/common/a;

    return-void
.end method

.method public final setBlendDstFactor(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->blendDstFactor:I

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->setBlendDstFactor(I)V

    return-void
.end method

.method public final setBlendEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->blendEnable:Z

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->enableBlend(Z)V

    return-void
.end method

.method public final setBlendSrcFactor(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->blendSrcFactor:I

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->setBlendSrcFactor(I)V

    return-void
.end method

.method public final setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->enable:Z

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->k(Z)V

    return-void
.end method

.method public final setLayer(Lcom/oplus/vfxsdk/common/Layer;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->layer:Lcom/oplus/vfxsdk/common/Layer;

    return-void
.end method

.method public final setLayerOrder(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->layerOrder:I

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->setSortingOrder(I)V

    return-void
.end method

.method public final setMaterial(Lcom/oplus/vfxsdk/naive/coe/engine/Material;)V
    .locals 1

    const-string v0, "material"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->l(Lcom/oplus/vfxsdk/naive/coe/engine/Material;)V

    return-void
.end method

.method public final setMesh(Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;)V
    .locals 1

    const-string v0, "mesh"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->m(Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;)V

    return-void
.end method

.method public final setNativeRenderer(Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    return-void
.end method

.method public final varargs setParameter(ILjava/lang/String;Z[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Z[TT;)V"
        }
    .end annotation

    const/4 p3, 0x1

    const-string v0, "paraName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->d()Lcom/oplus/vfxsdk/naive/coe/engine/Material;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->d()Lcom/oplus/vfxsdk/naive/coe/engine/Material;

    move-result-object v0

    array-length v1, p4

    invoke-static {p4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->h(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getChannelData(ILjava/lang/String;)Lcom/oplus/vfxsdk/common/o;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 6
    array-length p2, p4

    const/4 v0, 0x0

    if-ne p2, p3, :cond_1

    .line 7
    aget-object p2, p4, v0

    const-string p3, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/oplus/vfxsdk/common/o;->n(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 8
    :cond_1
    aget-object p2, p4, v0

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 9
    array-length p2, p4

    new-array p2, p2, [I

    .line 10
    array-length v1, p4

    :goto_0
    if-ge v0, v1, :cond_2

    .line 11
    aget-object v2, p4, v0

    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p2, v0

    add-int/2addr v0, p3

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1, p2}, Lcom/oplus/vfxsdk/common/o;->n(Ljava/lang/Object;)V

    goto :goto_2

    .line 13
    :cond_3
    instance-of p2, p2, Ljava/lang/Float;

    if-eqz p2, :cond_5

    .line 14
    array-length p2, p4

    new-array p2, p2, [F

    .line 15
    array-length v1, p4

    :goto_1
    if-ge v0, v1, :cond_4

    .line 16
    aget-object v2, p4, v0

    const-string v3, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, p2, v0

    add-int/2addr v0, p3

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p1, p2}, Lcom/oplus/vfxsdk/common/o;->n(Ljava/lang/Object;)V

    .line 18
    :cond_5
    :goto_2
    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final varargs setParameter(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "[TT;)V"
        }
    .end annotation

    const-string v0, "paraName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->setParameter(ILjava/lang/String;Z[Ljava/lang/Object;)V

    .line 22
    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final varargs setParameterCache(ILjava/lang/String;Z[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Z[TT;)V"
        }
    .end annotation

    const-string p3, "paraName"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "values"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object p3, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {p3}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->d()Lcom/oplus/vfxsdk/naive/coe/engine/Material;

    move-result-object p3

    array-length v0, p4

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p1, p2, p4}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->i(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final setPassList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/vfxsdk/naive/coe/engine/RenderPass;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->passList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setPostProcessor(Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;)V
    .locals 1

    const-string v0, "postProcessor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->o(Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;)V

    return-void
.end method

.method public final setSortingOrder(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->sortingOrder:I

    return-void
.end method

.method public final setTransform(Lcom/oplus/vfxsdk/naive/coe/engine/Transform;)V
    .locals 1

    const-string v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->p(Lcom/oplus/vfxsdk/naive/coe/engine/Transform;)V

    return-void
.end method

.method public final updateMesh(Ljava/nio/ByteBuffer;)V
    .locals 1

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->e()Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->nativeRenderer:Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->e()Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;->updateMesh(Ljava/nio/ByteBuffer;)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
