.class public Lcom/coui/appcompat/clickablespan/COUIClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/clickablespan/COUIClickableSpan$SpannableStrClickListener;
    }
.end annotation


# instance fields
.field mClickReference:Lcom/coui/appcompat/clickablespan/COUIClickableSpan$SpannableStrClickListener;

.field private mTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    sget v0, Lcom/support/clickablespan/R$color;->coui_clickable_text_color:I

    invoke-static {p1, v0}, Le/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/clickablespan/COUIClickableSpan;->mTextColor:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/clickablespan/COUIClickableSpan;->mClickReference:Lcom/coui/appcompat/clickablespan/COUIClickableSpan$SpannableStrClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coui/appcompat/clickablespan/COUIClickableSpan$SpannableStrClickListener;->onClick()V

    :cond_0
    return-void
.end method

.method public setClickTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/clickablespan/COUIClickableSpan;->mTextColor:Landroid/content/res/ColorStateList;

    :cond_0
    return-void
.end method

.method public setStatusBarClickListener(Lcom/coui/appcompat/clickablespan/COUIClickableSpan$SpannableStrClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/clickablespan/COUIClickableSpan;->mClickReference:Lcom/coui/appcompat/clickablespan/COUIClickableSpan$SpannableStrClickListener;

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/clickablespan/COUIClickableSpan;->mTextColor:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Landroid/text/TextPaint;->drawableState:[I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
