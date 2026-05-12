.class public final Lcom/coloros/translate/widget/LanguageChooseView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/widget/LanguageChooseView$a;
    }
.end annotation


# static fields
.field public static final j:Lcom/coloros/translate/widget/LanguageChooseView$a;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/ImageView;

.field private h:J

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/widget/LanguageChooseView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/widget/LanguageChooseView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/widget/LanguageChooseView;->j:Lcom/coloros/translate/widget/LanguageChooseView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/coloros/translate/R$dimen;->dp_40:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coloros/translate/widget/LanguageChooseView;->i:I

    .line 3
    invoke-direct {p0}, Lcom/coloros/translate/widget/LanguageChooseView;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/coloros/translate/R$dimen;->dp_40:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coloros/translate/widget/LanguageChooseView;->i:I

    .line 6
    invoke-direct {p0}, Lcom/coloros/translate/widget/LanguageChooseView;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/coloros/translate/R$dimen;->dp_40:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coloros/translate/widget/LanguageChooseView;->i:I

    .line 9
    invoke-direct {p0}, Lcom/coloros/translate/widget/LanguageChooseView;->f()V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/widget/LanguageChooseView;Lw8/l;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/widget/LanguageChooseView;->m(Lcom/coloros/translate/widget/LanguageChooseView;Lw8/l;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/widget/LanguageChooseView;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/widget/LanguageChooseView;->t(Lcom/coloros/translate/widget/LanguageChooseView;)V

    return-void
.end method

.method public static synthetic c(Lcom/coloros/translate/widget/LanguageChooseView;Lw8/l;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/widget/LanguageChooseView;->n(Lcom/coloros/translate/widget/LanguageChooseView;Lw8/l;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/coloros/translate/widget/LanguageChooseView;Lw8/l;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/widget/LanguageChooseView;->l(Lcom/coloros/translate/widget/LanguageChooseView;Lw8/l;Landroid/view/View;)V

    return-void
.end method

.method private final f()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "VoiceLanguageChooseView"

    const-string v2, "initView layout"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$layout;->choose_language_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$id;->languageFrom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    sget v1, Lcom/coloros/translate/R$id;->languageTo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    sget v1, Lcom/coloros/translate/R$id;->languageLt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/coloros/translate/widget/LanguageChooseView;->c:Landroid/widget/FrameLayout;

    sget v1, Lcom/coloros/translate/R$id;->switchButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->f:Landroid/widget/ImageView;

    return-void
.end method

.method private final g()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coloros/translate/widget/LanguageChooseView;->h:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->h:J

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final l(Lcom/coloros/translate/widget/LanguageChooseView;Lw8/l;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$callBack"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/widget/LanguageChooseView;->g()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    if-nez p0, :cond_1

    const-string p0, "mFromLanguage"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-interface {p1, p0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final m(Lcom/coloros/translate/widget/LanguageChooseView;Lw8/l;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$callBack"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/widget/LanguageChooseView;->g()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->f:Landroid/widget/ImageView;

    if-nez p0, :cond_1

    const-string p0, "mSwitchButton"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-interface {p1, p0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final n(Lcom/coloros/translate/widget/LanguageChooseView;Lw8/l;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$callBack"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/widget/LanguageChooseView;->g()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    if-nez p0, :cond_1

    const-string p0, "mToLanguage"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-interface {p1, p0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final t(Lcom/coloros/translate/widget/LanguageChooseView;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->c:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mLanguageLt"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v2, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    const-string v3, "mFromLanguage"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v4, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    if-nez v4, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v1

    :cond_2
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget v4, p0, Lcom/coloros/translate/widget/LanguageChooseView;->i:I

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    const-string v5, "mToLanguage"

    if-nez v4, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v1

    :cond_3
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v6, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    if-nez v6, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v6, v1

    :cond_4
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    iget v6, p0, Lcom/coloros/translate/widget/LanguageChooseView;->i:I

    add-int/2addr v4, v6

    if-ge v2, v0, :cond_8

    if-lt v4, v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    if-nez v2, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v1

    :cond_6
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setWidth(I)V

    iget-object p0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    if-nez p0, :cond_7

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_3

    :cond_8
    :goto_1
    iget-object v2, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    if-nez v2, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v1

    :cond_9
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setWidth(I)V

    iget-object p0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    if-nez p0, :cond_a

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    move-object v1, p0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    :cond_b
    :goto_3
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 6

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mSwitchButton"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    sget v2, Lcom/coloros/translate/R$drawable;->si_single_arrow:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    const-string v2, "mFromLanguage"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    sget v4, Lcom/coloros/translate/R$drawable;->si_language_bg:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    sget v4, Lcom/coloros/translate/R$drawable;->ic_triangle_down_dark:I

    invoke-virtual {v0, v3, v3, v4, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    const-string v4, "mToLanguage"

    if-nez v0, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    if-nez v0, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    sget v5, Lcom/coloros/translate/R$drawable;->si_language_bg:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    if-nez v0, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    sget v5, Lcom/coloros/translate/R$drawable;->ic_triangle_down_dark:I

    invoke-virtual {v0, v3, v3, v5, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_7
    sget v3, Lcom/support/appcompat/R$style;->couiTextButtonM:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    if-nez v0, :cond_8

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_8
    sget v3, Lcom/support/appcompat/R$style;->couiTextButtonM:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    if-nez v0, :cond_9

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_9
    const-string v3, "#E6FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    if-nez p0, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    move-object v1, p0

    :goto_0
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final h()V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    const-string v1, "mFromLanguage"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    const-string v3, "mToLanguage"

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/coloros/translate/R$drawable;->ic_triangle_up:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/coloros/translate/R$drawable;->ic_triangle_down:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, v2, v2, p0, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final i()V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    const-string v1, "mFromLanguage"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    const-string v3, "mToLanguage"

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/coloros/translate/R$drawable;->ic_triangle_up:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/coloros/translate/R$drawable;->ic_triangle_down_dark:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, v2, v2, p0, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    const-string v1, "mFromLanguage"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/coloros/translate/R$drawable;->ic_triangle_down_dark:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, v2, v2, p0, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    const-string v1, "mFromLanguage"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/coloros/translate/R$drawable;->ic_triangle_down:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, v2, v2, p0, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final o()V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    const-string v1, "mFromLanguage"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    const-string v3, "mToLanguage"

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/coloros/translate/R$drawable;->ic_triangle_down:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/coloros/translate/R$drawable;->ic_triangle_up:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, v2, v2, p0, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttachedToWindow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceLanguageChooseView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/widget/LanguageChooseView;->s()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "VoiceLanguageChooseView"

    const-string v1, "onDetachedFromWindow"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final p()V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    const-string v1, "mFromLanguage"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    const-string v3, "mToLanguage"

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/coloros/translate/R$drawable;->ic_triangle_down_dark:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/coloros/translate/R$drawable;->ic_triangle_up:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, v2, v2, p0, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final q()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    const-string v1, "mToLanguage"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/coloros/translate/R$drawable;->ic_triangle_down_dark:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, v2, v2, p0, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final r()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    const-string v1, "mToLanguage"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/coloros/translate/R$drawable;->ic_triangle_down:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, v2, v2, p0, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->c:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const-string v0, "mLanguageLt"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/coloros/translate/widget/o;

    invoke-direct {v1, p0}, Lcom/coloros/translate/widget/o;-><init>(Lcom/coloros/translate/widget/LanguageChooseView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setFromLanguage(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "mFromLanguage"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcom/coloros/translate/widget/LanguageChooseView;->s()V

    return-void
.end method

.method public final setFromLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "mFromLanguage"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcom/coloros/translate/widget/LanguageChooseView;->s()V

    return-void
.end method

.method public final setLanguageChangeIcon(I)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->f:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    const-string p0, "mSwitchButton"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final setOnFromLangeClickListener(Lw8/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/l;",
            ")V"
        }
    .end annotation

    const-string v0, "callBack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "mFromLanguage"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/coloros/translate/widget/m;

    invoke-direct {v1, p0, p1}, Lcom/coloros/translate/widget/m;-><init>(Lcom/coloros/translate/widget/LanguageChooseView;Lw8/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setOnSwitchClickListener(Lw8/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/l;",
            ")V"
        }
    .end annotation

    const-string v0, "callBack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->f:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v0, "mSwitchButton"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/coloros/translate/widget/l;

    invoke-direct {v1, p0, p1}, Lcom/coloros/translate/widget/l;-><init>(Lcom/coloros/translate/widget/LanguageChooseView;Lw8/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setOnToLangeClickListener(Lw8/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/l;",
            ")V"
        }
    .end annotation

    const-string v0, "callBack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "mToLanguage"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/coloros/translate/widget/n;

    invoke-direct {v1, p0, p1}, Lcom/coloros/translate/widget/n;-><init>(Lcom/coloros/translate/widget/LanguageChooseView;Lw8/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setToLanguage(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "mToLanguage"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcom/coloros/translate/widget/LanguageChooseView;->s()V

    return-void
.end method

.method public final setToLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/coloros/translate/widget/LanguageChooseView;->b:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "mToLanguage"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcom/coloros/translate/widget/LanguageChooseView;->s()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibility:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceLanguageChooseView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/widget/LanguageChooseView;->s()V

    :cond_0
    return-void
.end method
