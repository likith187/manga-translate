.class public final Lcom/coui/appcompat/privacypolicy/MultiFunctionSpanKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final setMultiFunctionSpan(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spanText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/coui/appcompat/privacypolicy/MultiMovementMethod;

    invoke-direct {p1}, Lcom/coui/appcompat/privacypolicy/MultiMovementMethod;-><init>()V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHighlightColor(I)V

    return-void
.end method
