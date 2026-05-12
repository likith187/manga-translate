.class final Lcom/oplus/vfxsdk/naive/parse/COERenderer$j;
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
.field final synthetic $endCb:Lw8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/a;"
        }
    .end annotation
.end field

.field final synthetic $endProgresss:Lkotlin/jvm/internal/a0;

.field final synthetic this$0:Lcom/oplus/vfxsdk/naive/parse/COERenderer;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/a0;Lcom/oplus/vfxsdk/naive/parse/COERenderer;Lw8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/a0;",
            "Lcom/oplus/vfxsdk/naive/parse/COERenderer;",
            "Lw8/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$j;->$endProgresss:Lkotlin/jvm/internal/a0;

    iput-object p2, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$j;->this$0:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    iput-object p3, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$j;->$endCb:Lw8/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$j;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$j;->this$0:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$j;->$endProgresss:Lkotlin/jvm/internal/a0;

    iget v2, v1, Lkotlin/jvm/internal/a0;->element:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lkotlin/jvm/internal/a0;->element:I

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/a;->n()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$j;->$endCb:Lw8/a;

    invoke-interface {v0}, Lw8/a;->invoke()Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$j;->this$0:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->getTAG()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$j;->this$0:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/a;->n()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=>onTriger endCb "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    const-string v0, "COE_LOGGER"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
