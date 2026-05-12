.class public Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final CARD_LIST_FLAG:I = 0x2

.field private static final DEFAULT_FLAG:I = 0x0

.field private static final LARGE_PADDING:I = 0x0

.field private static final LIST_FLAG:I = 0x1

.field private static final PADDING_MODE:I = 0x0

.field private static final REMEASURE_MODE:I = 0x1

.field private static final SMALL_PADDING:I = 0x1


# instance fields
.field protected mGridNumber:I

.field private mGridNumberResourceId:I

.field private mInitPaddingEnd:I

.field private mInitPaddingStart:I

.field private mIsActivityEmbedded:Z

.field private mIsParentChildHierarchy:Z

.field public mMode:I

.field protected mPaddingSize:I

.field protected mPaddingType:I

.field private mPercentEnabled:Z

.field private mScreenPhysicalWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mMode:I

    const/4 p3, 0x1

    .line 5
    iput-boolean p3, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mPercentEnabled:Z

    .line 6
    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mIsActivityEmbedded:Z

    .line 7
    iput p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mScreenPhysicalWidth:I

    .line 8
    invoke-direct {p0, p2}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->initAttr(Landroid/util/AttributeSet;)V

    .line 9
    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->prepareForMeasure()V

    return-void
.end method

.method private initAttr(Landroid/util/AttributeSet;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/grid/R$styleable;->COUIPercentWidthFrameLayout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/support/grid/R$styleable;->COUIPercentWidthFrameLayout_gridNumber:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mGridNumberResourceId:I

    sget v0, Lcom/support/grid/R$styleable;->COUIPercentWidthFrameLayout_gridNumber:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/grid/R$integer;->grid_guide_column_preference:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mGridNumber:I

    sget v0, Lcom/support/grid/R$styleable;->COUIPercentWidthFrameLayout_paddingType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mPaddingType:I

    sget v0, Lcom/support/grid/R$styleable;->COUIPercentWidthFrameLayout_paddingSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mPaddingSize:I

    sget v0, Lcom/support/grid/R$styleable;->COUIPercentWidthFrameLayout_percentIndentEnabled:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mPercentEnabled:Z

    sget v0, Lcom/support/grid/R$styleable;->COUIPercentWidthFrameLayout_percentMode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mMode:I

    sget v0, Lcom/support/grid/R$styleable;->COUIPercentWidthFrameLayout_isParentChildHierarchy:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mIsParentChildHierarchy:Z

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mInitPaddingStart:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mInitPaddingEnd:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private prepareForMeasure()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isActivityEmbedded(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mIsActivityEmbedded:Z

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->getScreenPhysicalWidth(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mScreenPhysicalWidth:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mScreenPhysicalWidth:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout$LayoutParams;

    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->generateDefaultLayoutParams()Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->generateDefaultLayoutParams()Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout$LayoutParams;
    .locals 1

    .line 3
    new-instance p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 4
    new-instance p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout$LayoutParams;
    .locals 1

    .line 3
    new-instance v0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mGridNumberResourceId:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mGridNumberResourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mGridNumber:I

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->prepareForMeasure()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 19

    move-object/from16 v11, p0

    iget-boolean v0, v11, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mPercentEnabled:Z

    if-eqz v0, :cond_1

    iget v2, v11, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mGridNumber:I

    iget v3, v11, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mPaddingType:I

    iget v4, v11, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mPaddingSize:I

    iget v5, v11, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mMode:I

    iget v6, v11, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mInitPaddingStart:I

    iget v7, v11, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mInitPaddingEnd:I

    iget v8, v11, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mScreenPhysicalWidth:I

    iget-boolean v9, v11, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mIsParentChildHierarchy:Z

    iget-boolean v10, v11, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mIsActivityEmbedded:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {v0 .. v10}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->measureLayout(Landroid/view/View;IIIIIIIIZZ)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    iget v15, v11, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mPaddingType:I

    iget v3, v11, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mPaddingSize:I

    iget v4, v2, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout$LayoutParams;->mGridNumber:I

    iget v2, v2, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout$LayoutParams;->mPercentMode:I

    move v14, v0

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v2

    invoke-static/range {v12 .. v18}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->measureChildWithPercent(Landroid/content/Context;Landroid/view/View;IIIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    move/from16 v1, p2

    goto :goto_2

    :cond_1
    move/from16 v0, p1

    goto :goto_1

    :goto_2
    invoke-super {v11, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setIsParentChildHierarchy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mIsParentChildHierarchy:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPercentIndentEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mPercentEnabled:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
