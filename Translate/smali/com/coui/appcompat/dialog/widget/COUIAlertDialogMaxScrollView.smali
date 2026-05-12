.class public Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView$OnSizeChangeListener;
    }
.end annotation


# instance fields
.field private mLandscapeMaxHeight:I

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mOnSizeChangeListener:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView$OnSizeChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget-object v0, Lcom/support/dialog/R$styleable;->COUIAlertDialogMaxLinearLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Lcom/support/dialog/R$styleable;->COUIAlertDialogMaxLinearLayout_maxWidth:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;->mMaxWidth:I

    .line 5
    sget p2, Lcom/support/dialog/R$styleable;->COUIAlertDialogMaxLinearLayout_maxHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;->mMaxHeight:I

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getMaxWidth()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;->mMaxWidth:I

    return p0
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;->mMaxWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    if-le v0, v2, :cond_0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    move v0, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;->mMaxHeight:I

    if-le v1, v2, :cond_1

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    if-eqz v4, :cond_2

    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;->mOnSizeChangeListener:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView$OnSizeChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView$OnSizeChangeListener;->onSizeChange(IIII)V

    :cond_0
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;->mMaxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;->mMaxWidth:I

    return-void
.end method

.method public setOnSizeChangeListener(Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView$OnSizeChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;->mOnSizeChangeListener:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView$OnSizeChangeListener;

    return-void
.end method
