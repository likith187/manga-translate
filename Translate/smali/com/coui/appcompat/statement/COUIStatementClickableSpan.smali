.class public Lcom/coui/appcompat/statement/COUIStatementClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/statement/COUIStatementClickableSpan$Companion;
    }
.end annotation


# static fields
.field public static final ALPHA_PRESSED:I = 0x4d

.field public static final Companion:Lcom/coui/appcompat/statement/COUIStatementClickableSpan$Companion;


# instance fields
.field private isPressed:Z

.field private final textColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/statement/COUIStatementClickableSpan$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/statement/COUIStatementClickableSpan$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/appcompat/statement/COUIStatementClickableSpan;->Companion:Lcom/coui/appcompat/statement/COUIStatementClickableSpan$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    sget v0, Lcom/support/appcompat/R$attr;->couiColorLink:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/statement/COUIStatementClickableSpan;->textColor:I

    return-void
.end method


# virtual methods
.method public final isPressed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/statement/COUIStatementClickableSpan;->isPressed:Z

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    const-string p0, "widget"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/widget/TextView;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_0
    return-void
.end method

.method public final setPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/statement/COUIStatementClickableSpan;->isPressed:Z

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/statement/COUIStatementClickableSpan;->isPressed:Z

    iget p0, p0, Lcom/coui/appcompat/statement/COUIStatementClickableSpan;->textColor:I

    if-eqz v0, :cond_0

    const/16 v0, 0x4d

    invoke-static {p0, v0}, Lu/d;->u(II)I

    move-result p0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
