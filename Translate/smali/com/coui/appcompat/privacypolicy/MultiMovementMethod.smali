.class public final Lcom/coui/appcompat/privacypolicy/MultiMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "SourceFile"


# instance fields
.field private pressedSpan:Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method private final getClickableSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;
    .locals 1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p0, v0

    float-to-int p0, p0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p3, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p3, v0

    float-to-int p3, p3

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    int-to-float p0, p0

    invoke-virtual {p1, p3, p0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p0

    const-class p1, Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;

    invoke-interface {p2, p0, p0, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;

    const-string p1, "links"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-nez p1, :cond_1

    aget-object p0, p0, p2

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 4

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    if-nez p3, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/privacypolicy/MultiMovementMethod;->pressedSpan:Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;

    if-eqz v0, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;->setPressed(Z)V

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/coui/appcompat/privacypolicy/MultiMovementMethod;->pressedSpan:Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/privacypolicy/MultiMovementMethod;->getClickableSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/privacypolicy/MultiMovementMethod;->pressedSpan:Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;

    if-eqz v2, :cond_7

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/coui/appcompat/privacypolicy/MultiMovementMethod;->pressedSpan:Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;->setPressed(Z)V

    :goto_1
    iput-object v1, p0, Lcom/coui/appcompat/privacypolicy/MultiMovementMethod;->pressedSpan:Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/privacypolicy/MultiMovementMethod;->getClickableSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;->setPressed(Z)V

    move-object v1, v0

    :cond_6
    iput-object v1, p0, Lcom/coui/appcompat/privacypolicy/MultiMovementMethod;->pressedSpan:Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;

    :cond_7
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_8
    :goto_3
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
