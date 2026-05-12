.class public final Lcom/coloros/translate/ui/realtimetranslation/widget/TransmissionRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final getMLastX()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/ui/realtimetranslation/widget/TransmissionRelativeLayout;->a:I

    return p0
.end method

.method public final getMLastY()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/ui/realtimetranslation/widget/TransmissionRelativeLayout;->b:I

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/coloros/translate/ui/realtimetranslation/widget/TransmissionRelativeLayout;->b:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget v0, p0, Lcom/coloros/translate/ui/realtimetranslation/widget/TransmissionRelativeLayout;->a:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return v3

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    iput v0, p0, Lcom/coloros/translate/ui/realtimetranslation/widget/TransmissionRelativeLayout;->b:I

    iput v1, p0, Lcom/coloros/translate/ui/realtimetranslation/widget/TransmissionRelativeLayout;->a:I

    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final setMLastX(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/realtimetranslation/widget/TransmissionRelativeLayout;->a:I

    return-void
.end method

.method public final setMLastY(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/realtimetranslation/widget/TransmissionRelativeLayout;->b:I

    return-void
.end method
