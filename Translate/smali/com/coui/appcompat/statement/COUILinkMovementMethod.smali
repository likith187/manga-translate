.class public final Lcom/coui/appcompat/statement/COUILinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coui/appcompat/statement/COUILinkMovementMethod;

.field private static clickableSpan:Lcom/coui/appcompat/statement/COUIStatementClickableSpan;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/statement/COUILinkMovementMethod;

    invoke-direct {v0}, Lcom/coui/appcompat/statement/COUILinkMovementMethod;-><init>()V

    sput-object v0, Lcom/coui/appcompat/statement/COUILinkMovementMethod;->INSTANCE:Lcom/coui/appcompat/statement/COUILinkMovementMethod;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 7

    const-string v0, "widget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "links"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    int-to-float v0, v0

    invoke-virtual {v5, v4, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    const-class v4, Lcom/coui/appcompat/statement/COUIStatementClickableSpan;

    invoke-interface {p2, v0, v0, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coui/appcompat/statement/COUIStatementClickableSpan;

    sget-object v4, Lcom/coui/appcompat/statement/COUILinkMovementMethod;->clickableSpan:Lcom/coui/appcompat/statement/COUIStatementClickableSpan;

    if-nez v4, :cond_3

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v0

    if-nez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-nez v4, :cond_3

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/statement/COUIStatementClickableSpan;->setPressed(Z)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    sput-object v0, Lcom/coui/appcompat/statement/COUILinkMovementMethod;->clickableSpan:Lcom/coui/appcompat/statement/COUIStatementClickableSpan;

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    :cond_2
    sget-object v0, Lcom/coui/appcompat/statement/COUILinkMovementMethod;->clickableSpan:Lcom/coui/appcompat/statement/COUIStatementClickableSpan;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/statement/COUIStatementClickableSpan;->setPressed(Z)V

    const/4 v0, 0x0

    sput-object v0, Lcom/coui/appcompat/statement/COUILinkMovementMethod;->clickableSpan:Lcom/coui/appcompat/statement/COUIStatementClickableSpan;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_7

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    int-to-float v0, v0

    invoke-virtual {v6, v5, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    const-class v5, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v0, v0, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ClickableSpan;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v5

    if-nez v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-nez v1, :cond_6

    aget-object p0, v5, v2

    invoke-interface {p2, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p3

    invoke-interface {p2, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-lt v0, p3, :cond_5

    if-gt v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    if-gt v4, p3, :cond_5

    if-ltz v4, :cond_5

    invoke-virtual {p0, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_3

    :cond_5
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    :goto_3
    return v3

    :cond_6
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
