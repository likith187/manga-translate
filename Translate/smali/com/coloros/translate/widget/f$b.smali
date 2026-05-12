.class public final Lcom/coloros/translate/widget/f$b;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field final synthetic c:Lcom/coloros/translate/widget/f;


# direct methods
.method public constructor <init>(Lcom/coloros/translate/widget/f;Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/widget/f$b;->c:Lcom/coloros/translate/widget/f;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p2, p0, Lcom/coloros/translate/widget/f$b;->a:Landroid/content/Context;

    sget p1, Lcom/coui/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {p2, p1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/translate/widget/f$b;->b:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->i:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;

    iget-object p0, p0, Lcom/coloros/translate/widget/f$b;->a:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;->c(Landroid/content/Context;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const-string v0, "textPaint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget p0, p0, Lcom/coloros/translate/widget/f$b;->b:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
