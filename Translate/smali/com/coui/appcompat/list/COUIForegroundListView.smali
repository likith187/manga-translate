.class public Lcom/coui/appcompat/list/COUIForegroundListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# instance fields
.field private mAdvanceKey:I

.field private mHoverListener:Landroidx/appcompat/widget/y;

.field private mHoveredMenuItem:Landroid/view/MenuItem;

.field private mListSelectionHidden:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRadius:F

.field private mRectF:Landroid/graphics/RectF;

.field private mRetreatKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mRadius:F

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mRectF:Landroid/graphics/RectF;

    .line 5
    invoke-direct {p0, p1}, Lcom/coui/appcompat/list/COUIForegroundListView;->initKeyValue(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 8
    iput p2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mRadius:F

    const/4 p2, 0x0

    .line 9
    iput-object p2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mRectF:Landroid/graphics/RectF;

    .line 10
    invoke-direct {p0, p1}, Lcom/coui/appcompat/list/COUIForegroundListView;->initKeyValue(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 13
    iput p2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mRadius:F

    const/4 p2, 0x0

    .line 14
    iput-object p2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mRectF:Landroid/graphics/RectF;

    .line 15
    invoke-direct {p0, p1}, Lcom/coui/appcompat/list/COUIForegroundListView;->initKeyValue(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 17
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 18
    iput p2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mRadius:F

    const/4 p2, 0x0

    .line 19
    iput-object p2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mRectF:Landroid/graphics/RectF;

    .line 20
    invoke-direct {p0, p1}, Lcom/coui/appcompat/list/COUIForegroundListView;->initKeyValue(Landroid/content/Context;)V

    return-void
.end method

.method private genPath()Landroid/graphics/Path;
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mRadius:F

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v4, 0x2

    aput v2, v3, v4

    const/4 v4, 0x3

    aput v2, v3, v4

    const/4 v4, 0x4

    aput v2, v3, v4

    const/4 v4, 0x5

    aput v2, v3, v4

    const/4 v4, 0x6

    aput v2, v3, v4

    const/4 v4, 0x7

    aput v2, v3, v4

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mPath:Landroid/graphics/Path;

    return-object p0
.end method

.method private initKeyValue(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/16 v0, 0x16

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-ne v2, p1, :cond_0

    iput v1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mAdvanceKey:I

    iput v0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mRetreatKey:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mAdvanceKey:I

    iput v1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mRetreatKey:I

    :goto_0
    return-void
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void
.end method

.method public isInTouchMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public lookForSelectablePosition(IZ)I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/coui/appcompat/list/COUIForegroundListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    invoke-interface {p0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result p0

    if-nez p0, :cond_5

    if-eqz p2, :cond_1

    const/4 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    if-ge p0, v2, :cond_2

    invoke-interface {v0, p0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-nez p1, :cond_2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p0, v2, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_1
    if-ltz p0, :cond_2

    invoke-interface {v0, p0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-nez p1, :cond_2

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_2
    if-ltz p0, :cond_4

    if-lt p0, v2, :cond_3

    goto :goto_2

    :cond_3
    return p0

    :cond_4
    :goto_2
    return v1

    :cond_5
    if-ltz p1, :cond_7

    if-lt p1, v2, :cond_6

    goto :goto_3

    :cond_6
    return p1

    :cond_7
    :goto_3
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mHoverListener:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuAdapter;

    goto :goto_0

    :cond_0
    check-cast v0, Landroidx/appcompat/view/menu/MenuAdapter;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    sub-int/2addr v2, v1

    if-ltz v2, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuAdapter;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    if-eq v2, v1, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuAdapter;->getAdapterMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mHoverListener:Landroidx/appcompat/widget/y;

    invoke-interface {v3, v0, v2}, Landroidx/appcompat/widget/y;->onItemHoverExit(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    :cond_2
    iput-object v1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mHoverListener:Landroidx/appcompat/widget/y;

    invoke-interface {v2, v0, v1}, Landroidx/appcompat/widget/y;->onItemHoverEnter(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mAdvanceKey:I

    if-ne p1, v3, :cond_2

    instance-of v3, v1, Lcom/coui/appcompat/poplist/DefaultAdapter;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    check-cast v1, Lcom/coui/appcompat/poplist/DefaultAdapter;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/PopupListItem;->hasSubArray()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v3

    invoke-virtual {p0, v0, p1, v3, v4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_1
    return v2

    :cond_2
    if-eqz v0, :cond_3

    iget v0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mRetreatKey:I

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    return v2

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mPath:Landroid/graphics/Path;

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mPath:Landroid/graphics/Path;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    :goto_0
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mRectF:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/coui/appcompat/list/COUIForegroundListView;->genPath()Landroid/graphics/Path;

    return-void
.end method

.method public setHoverListener(Landroidx/appcompat/widget/y;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mHoverListener:Landroidx/appcompat/widget/y;

    return-void
.end method

.method public setListSelectionHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mListSelectionHidden:Z

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->mRadius:F

    return-void
.end method
