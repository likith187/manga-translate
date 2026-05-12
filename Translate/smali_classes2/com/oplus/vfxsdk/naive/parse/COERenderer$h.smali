.class final Lcom/oplus/vfxsdk/naive/parse/COERenderer$h;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/naive/parse/COERenderer;->onTriger(Ljava/lang/String;ZLw8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $startProgresss:Lkotlin/jvm/internal/a0;

.field final synthetic $stateKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/oplus/vfxsdk/naive/parse/COERenderer;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/a0;Lcom/oplus/vfxsdk/naive/parse/COERenderer;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$h;->$startProgresss:Lkotlin/jvm/internal/a0;

    iput-object p2, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$h;->this$0:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    iput-object p3, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$h;->$stateKey:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$h;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$h;->this$0:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$h;->$startProgresss:Lkotlin/jvm/internal/a0;

    iget v2, v1, Lkotlin/jvm/internal/a0;->element:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lkotlin/jvm/internal/a0;->element:I

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/a;->n()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$h;->this$0:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->getTAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$h;->$stateKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=>onAnimStart: java animator callback "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COE_LOGGER"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$h;->this$0:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$h;->this$0:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->getLayerIndex()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$h;->$stateKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->onAnimStart(ILjava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$h;->$startProgresss:Lkotlin/jvm/internal/a0;

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/jvm/internal/a0;->element:I

    :cond_0
    return-void
.end method
