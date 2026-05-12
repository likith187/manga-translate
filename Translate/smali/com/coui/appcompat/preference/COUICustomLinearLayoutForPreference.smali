.class public Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAHavePriority:Z

.field private mBStickToC:Z

.field private mDefaultMarginEnd:I

.field private mMessageLayoutMarginEndInRight:I

.field private mReddotMarginEndInRightHasAssignment:I

.field private mReddotMarginEndInRightNoAssignment:I

.field private mSetMessageLayoutMarginEnd:Z

.field private mViewLowPriorityMinWidth:I

.field private viewA:Landroid/view/View;

.field private viewB:Landroid/view/View;

.field private viewC:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    const-string v0, "COUICustomLinearLayout"

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mBStickToC:Z

    .line 6
    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mAHavePriority:Z

    .line 7
    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mSetMessageLayoutMarginEnd:Z

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private customMeasure(II)V
    .locals 12

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const/16 v10, 0x8

    if-eq v2, v10, :cond_0

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v11, v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    move v11, v9

    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v10, :cond_1

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    :goto_1
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v10, :cond_2

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    sub-int v3, v1, v0

    if-le v2, v3, :cond_9

    iget-boolean v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mAHavePriority:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result v2

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginWidth(Landroid/view/View;)I

    move-result v4

    :goto_3
    sub-int/2addr v2, v4

    goto :goto_4

    :cond_3
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result v2

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginWidth(Landroid/view/View;)I

    move-result v4

    goto :goto_3

    :goto_4
    iget v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mViewLowPriorityMinWidth:I

    if-ge v2, v4, :cond_4

    goto :goto_5

    :cond_4
    move v2, v4

    :goto_5
    iget-boolean v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mAHavePriority:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginWidth(Landroid/view/View;)I

    move-result v5

    add-int/2addr v2, v5

    sub-int/2addr v3, v2

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v3, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result v3

    sub-int v3, v1, v3

    add-int/2addr v0, v2

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result v4

    add-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v1, v0

    goto :goto_6

    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginWidth(Landroid/view/View;)I

    move-result v1

    add-int/2addr v2, v1

    sub-int v1, v3, v2

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v1

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_6
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v10, :cond_6

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginWidth(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-direct {p0, v3, v2}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->setChildSize(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_6
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v10, :cond_7

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginWidth(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-direct {p0, v2, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->setChildSize(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v10, :cond_8

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginWidth(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->setChildSize(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr v11, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr v11, v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {v11, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_9
    return-void
.end method

.method private getMarginHeight(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getMarginLeft(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getMarginTop(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getMarginWidth(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getRealHeight(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getRealWidthWithMargin(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/preference/R$dimen;->support_preference_reddot_margin_end_in_right_noassignment:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mReddotMarginEndInRightNoAssignment:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/preference/R$dimen;->support_preference_reddot_margin_end_in_right_hasassignment:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mReddotMarginEndInRightHasAssignment:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/preference/R$dimen;->support_preference_title_margin_end_in_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mMessageLayoutMarginEndInRight:I

    sget-object v1, Lcom/support/preference/R$styleable;->COUICustomLinearLayoutForPreference:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/preference/R$styleable;->COUICustomLinearLayoutForPreference_couiMessageLayoutMarginEnd:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mDefaultMarginEnd:I

    sget p3, Lcom/support/preference/R$styleable;->COUICustomLinearLayoutForPreference_couiBStickToC:I

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mBStickToC:Z

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mBStickToC:Z

    sget p3, Lcom/support/preference/R$styleable;->COUICustomLinearLayoutForPreference_couiAHavePriority:I

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mAHavePriority:Z

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mAHavePriority:Z

    sget p3, Lcom/support/preference/R$styleable;->COUICustomLinearLayoutForPreference_couiMarginEndOfA:I

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mSetMessageLayoutMarginEnd:Z

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mSetMessageLayoutMarginEnd:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/preference/R$dimen;->assignment_in_right_low_priority_min_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mViewLowPriorityMinWidth:I

    return-void
.end method

.method private isRtlMode()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setChildSize(Landroid/view/View;I)V
    .locals 1

    const/4 p0, 0x0

    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private setReddotAndMessageLayoutMarginEnd()Z
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mReddotMarginEndInRightHasAssignment:I

    if-eq v2, v3, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    move v0, v1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mReddotMarginEndInRightNoAssignment:I

    if-eq v2, v3, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-boolean v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mSetMessageLayoutMarginEnd:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mMessageLayoutMarginEndInRight:I

    if-eq v3, v4, :cond_6

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mDefaultMarginEnd:I

    if-eq v3, v4, :cond_6

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_6
    move v1, v0

    :goto_4
    return v1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p5

    sub-int/2addr p4, p5

    sub-int/2addr p4, p3

    iget-object p5, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-direct {p0, p5}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealHeight(Landroid/view/View;)I

    move-result p5

    sub-int p5, p4, p5

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p5, p3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealHeight(Landroid/view/View;)I

    move-result v0

    sub-int v0, p4, v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr p4, v1

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->isRtlMode()Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-direct {p0, p4}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result p4

    sub-int/2addr p2, p4

    iget-boolean p4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mBStickToC:Z

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-direct {p0, p4}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result p4

    sub-int p4, p2, p4

    goto :goto_1

    :cond_0
    iget-object p4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-direct {p0, p4}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result p4

    add-int/2addr p4, p1

    goto :goto_1

    :cond_1
    iget-object p4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-direct {p0, p4}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result p4

    sub-int/2addr p2, p4

    iget-boolean p4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->mBStickToC:Z

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-direct {p0, p4}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result p4

    add-int/2addr p4, p1

    :goto_0
    move v5, p2

    move p2, p1

    move p1, v5

    goto :goto_1

    :cond_2
    iget-object p4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-direct {p0, p4}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result p4

    sub-int p4, p2, p4

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginLeft(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginTop(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, p5

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginLeft(Landroid/view/View;)I

    move-result v4

    add-int/2addr p1, v4

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result v4

    add-int/2addr p1, v4

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginWidth(Landroid/view/View;)I

    move-result v4

    sub-int/2addr p1, v4

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginTop(Landroid/view/View;)I

    move-result v4

    add-int/2addr p5, v4

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealHeight(Landroid/view/View;)I

    move-result v4

    add-int/2addr p5, v4

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginHeight(Landroid/view/View;)I

    move-result v4

    sub-int/2addr p5, v4

    invoke-virtual {v1, v2, v3, p1, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginLeft(Landroid/view/View;)I

    move-result p5

    add-int/2addr p5, p2

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginTop(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginLeft(Landroid/view/View;)I

    move-result v2

    add-int/2addr p2, v2

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result v2

    add-int/2addr p2, v2

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginWidth(Landroid/view/View;)I

    move-result v2

    sub-int/2addr p2, v2

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginTop(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginHeight(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, p5, v1, p2, v0}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginLeft(Landroid/view/View;)I

    move-result p2

    add-int/2addr p2, p4

    iget-object p5, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-direct {p0, p5}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginTop(Landroid/view/View;)I

    move-result p5

    add-int/2addr p5, p3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginLeft(Landroid/view/View;)I

    move-result v0

    add-int/2addr p4, v0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealWidthWithMargin(Landroid/view/View;)I

    move-result v0

    add-int/2addr p4, v0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginWidth(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p4, v0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginTop(Landroid/view/View;)I

    move-result v0

    add-int/2addr p3, v0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getRealHeight(Landroid/view/View;)I

    move-result v0

    add-int/2addr p3, v0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->getMarginHeight(Landroid/view/View;)I

    move-result p0

    sub-int/2addr p3, p0

    invoke-virtual {p1, p2, p5, p4, p3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewA:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewB:Landroid/view/View;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->viewC:Landroid/view/View;

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->setReddotAndMessageLayoutMarginEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->customMeasure(II)V

    return-void
.end method
