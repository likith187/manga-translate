.class public Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private mIsIgnoreWindowInsetsBottom:Z

.field private mIsIgnoreWindowInsetsLeft:Z

.field private mIsIgnoreWindowInsetsRight:Z

.field private mIsIgnoreWindowInsetsTop:Z

.field private mWindowInsetsBottomOffset:I

.field private mWindowInsetsLeftOffset:I

.field private mWindowInsetsRightOffset:I

.field private mWindowInsetsTopOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsLeft:Z

    .line 3
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsTop:Z

    .line 4
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsRight:Z

    .line 5
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsBottom:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsLeft:Z

    .line 8
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsTop:Z

    .line 9
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsRight:Z

    .line 10
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsBottom:Z

    .line 11
    invoke-direct {p0, p2}, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->initAttr(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsLeft:Z

    .line 14
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsTop:Z

    .line 15
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsRight:Z

    .line 16
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsBottom:Z

    .line 17
    invoke-direct {p0, p2}, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->initAttr(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initAttr(Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/panel/R$styleable;->IgnoreWindowInsetsFrameLayout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/support/panel/R$styleable;->IgnoreWindowInsetsFrameLayout_ignoreWindowInsetsLeft:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsLeft:Z

    sget v0, Lcom/support/panel/R$styleable;->IgnoreWindowInsetsFrameLayout_ignoreWindowInsetsTop:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsTop:Z

    sget v0, Lcom/support/panel/R$styleable;->IgnoreWindowInsetsFrameLayout_ignoreWindowInsetsRight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsRight:Z

    sget v0, Lcom/support/panel/R$styleable;->IgnoreWindowInsetsFrameLayout_ignoreWindowInsetsBottom:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsBottom:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->isGestureNavigation(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsBottom:Z

    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsLeft:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mWindowInsetsLeftOffset:I

    add-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    iget-boolean v3, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsTop:Z

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mWindowInsetsTopOffset:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_1
    iget-boolean v4, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsRight:Z

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mWindowInsetsRightOffset:I

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_2
    iget-boolean v5, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsBottom:Z

    if-eqz v5, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    iget v5, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mWindowInsetsBottomOffset:I

    add-int/2addr v0, v5

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_3
    invoke-virtual {p0, v1, v3, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    iput v2, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mWindowInsetsLeftOffset:I

    iput v2, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mWindowInsetsTopOffset:I

    iput v2, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mWindowInsetsRightOffset:I

    iput v2, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mWindowInsetsBottomOffset:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public setIgnoreWindowInsetsBottom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsBottom:Z

    return-void
.end method

.method public setIgnoreWindowInsetsLeft(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsLeft:Z

    return-void
.end method

.method public setIgnoreWindowInsetsRight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsRight:Z

    return-void
.end method

.method public setIgnoreWindowInsetsTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mIsIgnoreWindowInsetsTop:Z

    return-void
.end method

.method public setWindowInsetsBottomOffset(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mWindowInsetsBottomOffset:I

    return-void
.end method

.method public setWindowInsetsLeftOffset(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mWindowInsetsLeftOffset:I

    return-void
.end method

.method public setWindowInsetsRightOffset(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mWindowInsetsRightOffset:I

    return-void
.end method

.method public setWindowInsetsTopOffset(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->mWindowInsetsTopOffset:I

    return-void
.end method
