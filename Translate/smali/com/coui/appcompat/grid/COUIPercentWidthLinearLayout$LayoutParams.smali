.class public Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public mGridNumber:I

.field public mPercentMode:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Lcom/support/grid/R$styleable;->COUIPercentWidthLinearLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/grid/R$styleable;->COUIPercentWidthLinearLayout_Layout_layout_gridNumber:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;->mGridNumber:I

    sget p2, Lcom/support/grid/R$styleable;->COUIPercentWidthLinearLayout_Layout_layout_percentMode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;->mPercentMode:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public setGridNumber(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;->mGridNumber:I

    return-void
.end method

.method public setPercentMode(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;->mPercentMode:I

    return-void
.end method
