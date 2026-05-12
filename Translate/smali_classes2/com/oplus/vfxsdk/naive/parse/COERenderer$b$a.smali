.class final Lcom/oplus/vfxsdk/naive/parse/COERenderer$b$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/naive/parse/COERenderer$b;->invoke(Ljava/lang/String;Lcom/oplus/vfxsdk/common/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

.field final synthetic $key:Ljava/lang/String;

.field final synthetic this$0:Lcom/oplus/vfxsdk/naive/parse/COERenderer;


# direct methods
.method constructor <init>(Lcom/oplus/vfxsdk/naive/parse/COERenderer;Ljava/lang/String;Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$b$a;->this$0:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    iput-object p2, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$b$a;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$b$a;->$engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$b$a;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$b$a;->this$0:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->getTAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$b$a;->$key:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=>onAnimStart: java animator "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COE_LOGGER"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$b$a;->$engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$b$a;->this$0:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->getLayerIndex()I

    move-result v1

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$b$a;->$key:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->onAnimStart(ILjava/lang/String;)V

    return-void
.end method
