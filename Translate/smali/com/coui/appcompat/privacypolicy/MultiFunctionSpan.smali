.class public Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan$Companion;
    }
.end annotation


# static fields
.field public static final ALPHA_PRESSED:I = 0x4d

.field public static final Companion:Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan$Companion;

.field public static final TAG:Ljava/lang/String; = "MultiFunctionSpan"


# instance fields
.field private final context:Landroid/content/Context;

.field private isPressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;->Companion:Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final isPressed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;->isPressed:Z

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    const-string p0, "widget"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;->isPressed:Z

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    const-string v0, "textPaint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;->context:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$attr;->couiColorLink:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/theme/COUIThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    iget-boolean p0, p0, Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;->isPressed:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x4d

    invoke-static {v0, p0}, Lu/d;->u(II)I

    move-result v0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
