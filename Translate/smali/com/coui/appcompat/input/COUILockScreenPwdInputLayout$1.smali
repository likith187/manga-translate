.class Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->clipNextIconView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout$1;->this$0:Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 9

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float v8, p0, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout$1;->this$0:Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;

    invoke-static {v0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->access$000(Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;)Lcom/oplus/graphics/OplusOutlineAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout$1;->this$0:Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;

    new-instance v3, Lcom/oplus/graphics/OplusOutlineAdapter;

    invoke-direct {v3, p2, v2}, Lcom/oplus/graphics/OplusOutlineAdapter;-><init>(Landroid/graphics/Outline;I)V

    invoke-static {v0, v3}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->access$002(Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;Lcom/oplus/graphics/OplusOutlineAdapter;)Lcom/oplus/graphics/OplusOutlineAdapter;

    :cond_1
    iget-object p2, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout$1;->this$0:Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;

    invoke-static {p2}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->access$100(Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    mul-float/2addr p2, p1

    div-float/2addr p2, v1

    iget-object p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout$1;->this$0:Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;

    invoke-static {p1}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->access$000(Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;)Lcom/oplus/graphics/OplusOutlineAdapter;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout$1;->this$0:Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;

    invoke-static {p0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->access$100(Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/oplus/graphics/OplusOutlineAdapter;->setSmoothRoundRect(Landroid/graphics/Rect;F)V

    :goto_0
    return-void
.end method
