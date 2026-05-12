.class Lcom/coui/appcompat/poplist/PreciseClickHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/poplist/PreciseClickHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/poplist/PreciseClickHelper;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/poplist/PreciseClickHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper$2;->this$0:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/AccessibilityUtils/COUIAccessibilityUtil;->isTalkbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper$2;->this$0:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PreciseClickHelper;->access$000(Lcom/coui/appcompat/poplist/PreciseClickHelper;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper$2;->this$0:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PreciseClickHelper;->access$000(Lcom/coui/appcompat/poplist/PreciseClickHelper;)[F

    move-result-object v0

    aget v0, v0, v3

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper$2;->this$0:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PreciseClickHelper;->access$000(Lcom/coui/appcompat/poplist/PreciseClickHelper;)[F

    move-result-object v0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper$2;->this$0:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PreciseClickHelper;->access$000(Lcom/coui/appcompat/poplist/PreciseClickHelper;)[F

    move-result-object v1

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper$2;->this$0:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/PreciseClickHelper;->access$100(Lcom/coui/appcompat/poplist/PreciseClickHelper;)Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    move-result-object p0

    invoke-interface {p0, p1, v0, v1}, Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;->onClick(Landroid/view/View;II)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper$2;->this$0:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/PreciseClickHelper;->access$100(Lcom/coui/appcompat/poplist/PreciseClickHelper;)Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {p0, p1, v0, v1}, Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;->onClick(Landroid/view/View;II)V

    return-void
.end method
