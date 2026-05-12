.class public Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;
.super Landroidx/appcompat/widget/Toolbar$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/toolbar/COUIToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field static final CUSTOM:I = 0x0

.field static final EXPANDED:I = 0x2

.field static final SYSTEM:I = 0x1


# instance fields
.field mTypeSearch:Z

.field mTypeSegmentButton:Z

.field mTypeTitle:Z

.field mViewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, -0x2

    const/4 v1, -0x1

    .line 18
    invoke-direct {p0, v0, v1, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(III)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar$g;-><init>(II)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    .line 8
    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeSearch:Z

    .line 9
    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeTitle:Z

    .line 10
    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeSegmentButton:Z

    const p1, 0x800013

    .line 11
    iput p1, p0, Landroidx/appcompat/app/a$a;->gravity:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar$g;-><init>(II)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    .line 14
    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeSearch:Z

    .line 15
    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeTitle:Z

    .line 16
    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeSegmentButton:Z

    .line 17
    iput p3, p0, Landroidx/appcompat/app/a$a;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar$g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    .line 3
    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeSearch:Z

    .line 4
    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeTitle:Z

    .line 5
    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeSegmentButton:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/Toolbar$g;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    .line 38
    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeSearch:Z

    .line 39
    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeTitle:Z

    .line 40
    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeSegmentButton:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/Toolbar$g;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    .line 32
    iput-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeSearch:Z

    .line 33
    iput-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeTitle:Z

    .line 34
    iput-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeSegmentButton:Z

    .line 35
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/a$a;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/Toolbar$g;-><init>(Landroidx/appcompat/app/a$a;)V

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    .line 27
    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeSearch:Z

    .line 28
    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeTitle:Z

    .line 29
    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeSegmentButton:Z

    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/Toolbar$g;-><init>(Landroidx/appcompat/widget/Toolbar$g;)V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    .line 21
    iput-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeSearch:Z

    .line 22
    iput-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeTitle:Z

    .line 23
    iput-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeSegmentButton:Z

    .line 24
    iget p1, p1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    return-void
.end method


# virtual methods
.method copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method
