.class Landroidx/appcompat/widget/ScrollingTabContainerView$d;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final a:[I

.field final synthetic b:Landroidx/appcompat/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ScrollingTabContainerView;Landroid/content/Context;Landroidx/appcompat/app/a$b;Z)V
    .locals 2

    iput-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$d;->b:Landroidx/appcompat/widget/ScrollingTabContainerView;

    sget p1, Landroidx/appcompat/R$attr;->actionBarTabStyle:I

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x10100d4

    filled-new-array {p1}, [I

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$d;->a:[I

    sget v0, Landroidx/appcompat/R$attr;->actionBarTabStyle:I

    const/4 v1, 0x0

    invoke-static {p2, p3, p1, v0, v1}, Landroidx/appcompat/widget/h0;->w(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/h0;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/h0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/h0;->y()V

    if-eqz p4, :cond_1

    const p1, 0x800013

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$d;->c()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/app/a$b;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$d;->c()V

    return-void
.end method

.method public b()Landroidx/appcompat/app/a$b;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public c()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string p0, "androidx.appcompat.app.ActionBar$Tab"

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string p0, "androidx.appcompat.app.ActionBar$Tab"

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$d;->b:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget p1, p1, Landroidx/appcompat/widget/ScrollingTabContainerView;->i:I

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$d;->b:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget v0, v0, Landroidx/appcompat/widget/ScrollingTabContainerView;->i:I

    if-le p1, v0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method
