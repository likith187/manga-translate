.class Lcom/coui/appcompat/couiswitch/COUISwitch$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/couiswitch/COUISwitch;->initOutLine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mOplusOutLineRect:Landroid/graphics/Rect;

.field private mOplusOutline:Lcom/oplus/graphics/OplusOutlineAdapter;

.field final synthetic this$0:Lcom/coui/appcompat/couiswitch/COUISwitch;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/couiswitch/COUISwitch;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch$1;->this$0:Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch$1;->mOplusOutLineRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    new-instance p1, Lcom/oplus/graphics/OplusOutlineAdapter;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/oplus/graphics/OplusOutlineAdapter;-><init>(Landroid/graphics/Outline;I)V

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch$1;->mOplusOutline:Lcom/oplus/graphics/OplusOutlineAdapter;

    iget-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch$1;->mOplusOutLineRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch$1;->this$0:Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-static {p2}, Lcom/coui/appcompat/couiswitch/COUISwitch;->access$000(Lcom/coui/appcompat/couiswitch/COUISwitch;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch$1;->mOplusOutLineRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch$1;->this$0:Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-static {p2}, Lcom/coui/appcompat/couiswitch/COUISwitch;->access$000(Lcom/coui/appcompat/couiswitch/COUISwitch;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->top:F

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch$1;->mOplusOutLineRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch$1;->this$0:Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-static {p2}, Lcom/coui/appcompat/couiswitch/COUISwitch;->access$000(Lcom/coui/appcompat/couiswitch/COUISwitch;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->right:F

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch$1;->mOplusOutLineRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch$1;->this$0:Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-static {p2}, Lcom/coui/appcompat/couiswitch/COUISwitch;->access$000(Lcom/coui/appcompat/couiswitch/COUISwitch;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch$1;->mOplusOutLineRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch$1;->this$0:Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result p2

    mul-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch$1;->mOplusOutline:Lcom/oplus/graphics/OplusOutlineAdapter;

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch$1;->mOplusOutLineRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p0, p1}, Lcom/oplus/graphics/OplusOutlineAdapter;->setSmoothRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
