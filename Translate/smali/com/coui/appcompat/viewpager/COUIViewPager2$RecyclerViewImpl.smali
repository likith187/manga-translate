.class Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;
.super Landroidx/recyclerview/widget/COUIRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/viewpager/COUIViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/COUIRecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setDispatchEventWhileOverScrolling(Z)V

    const/16 p1, 0x1f4

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setDispatchEventWhileScrollingThreshold(I)V

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object v0, v0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->mAccessibilityProvider:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->handlesRvGetAccessibilityClassName()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->mAccessibilityProvider:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->onRvGetAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget v0, v0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->mCurrentItem:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget v0, v0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->mCurrentItem:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->mAccessibilityProvider:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->onRvInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->isUserInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->isUserInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
