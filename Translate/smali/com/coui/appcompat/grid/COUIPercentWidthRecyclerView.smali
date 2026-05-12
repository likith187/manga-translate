.class public Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;
.super Landroidx/recyclerview/widget/COUIRecyclerView;
.source "SourceFile"


# static fields
.field private static final CARD_LIST_FLAG:I = 0x2

.field private static final DEFAULT_FLAG:I = 0x0

.field private static final LARGE_PADDING:I = 0x0

.field private static final LIST_FLAG:I = 0x1

.field private static final SMALL_PADDING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "COUIPercentWidthRecyclerView"


# instance fields
.field private mGridNumber:I

.field private mGridNumberResourceId:I

.field private mInitPaddingEnd:I

.field private mInitPaddingStart:I

.field private mIsActivityEmbedded:Z

.field private mIsParentChildHierarchy:Z

.field private mPaddingSize:I

.field private mPaddingType:I

.field private mPercentEnabled:Z

.field private mScreenPhysicalWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/COUIRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mPercentEnabled:Z

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mIsActivityEmbedded:Z

    .line 6
    iput p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mScreenPhysicalWidth:I

    .line 7
    invoke-direct {p0, p2}, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->initAttr(Landroid/util/AttributeSet;)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mInitPaddingStart:I

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mInitPaddingEnd:I

    const/high16 p1, 0x2000000

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 11
    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->prepareForMeasure()V

    return-void
.end method

.method private initAttr(Landroid/util/AttributeSet;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/grid/R$styleable;->COUIPercentWidthRecyclerView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/support/grid/R$styleable;->COUIPercentWidthRecyclerView_couiRecyclerGridNumber:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mGridNumberResourceId:I

    sget v0, Lcom/support/grid/R$styleable;->COUIPercentWidthRecyclerView_couiRecyclerGridNumber:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/grid/R$integer;->grid_guide_column_preference:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mGridNumber:I

    sget v0, Lcom/support/grid/R$styleable;->COUIPercentWidthRecyclerView_paddingType:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mPaddingType:I

    sget v0, Lcom/support/grid/R$styleable;->COUIPercentWidthRecyclerView_paddingSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mPaddingSize:I

    sget v0, Lcom/support/grid/R$styleable;->COUIPercentWidthRecyclerView_isParentChildHierarchy:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mIsParentChildHierarchy:Z

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

    iput-boolean v1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mIsActivityEmbedded:Z

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->getScreenPhysicalWidth(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mScreenPhysicalWidth:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mScreenPhysicalWidth:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mGridNumberResourceId:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mGridNumberResourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mGridNumber:I

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->prepareForMeasure()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    iget-boolean v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mPercentEnabled:Z

    if-eqz v0, :cond_0

    iget v3, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mGridNumber:I

    iget v4, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mPaddingType:I

    iget v5, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mPaddingSize:I

    iget v7, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mInitPaddingStart:I

    iget v8, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mInitPaddingEnd:I

    iget v9, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mScreenPhysicalWidth:I

    iget-boolean v10, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mIsParentChildHierarchy:Z

    iget-boolean v11, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mIsActivityEmbedded:Z

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v11}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->measureLayout(Landroid/view/View;IIIIIIIIZZ)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mInitPaddingStart:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mInitPaddingEnd:I

    if-eq v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mInitPaddingStart:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mInitPaddingEnd:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    return-void
.end method

.method public setIsParentChildHierarchy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mIsParentChildHierarchy:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setPercentIndentEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->mPercentEnabled:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method
