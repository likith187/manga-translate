.class public final Lcom/coloros/translate/ui/simultaneous/main/c;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private b:Z

.field private final c:Ln8/j;

.field private final f:Ln8/j;

.field private final h:Ln8/j;

.field private final i:Ln8/j;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/c;->a:Landroid/view/View;

    new-instance p1, Lcom/coloros/translate/ui/simultaneous/main/c$b;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/simultaneous/main/c$b;-><init>(Lcom/coloros/translate/ui/simultaneous/main/c;)V

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/c;->c:Ln8/j;

    new-instance p1, Lcom/coloros/translate/ui/simultaneous/main/c$c;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/simultaneous/main/c$c;-><init>(Lcom/coloros/translate/ui/simultaneous/main/c;)V

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/c;->f:Ln8/j;

    new-instance p1, Lcom/coloros/translate/ui/simultaneous/main/c$d;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/simultaneous/main/c$d;-><init>(Lcom/coloros/translate/ui/simultaneous/main/c;)V

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/c;->h:Ln8/j;

    new-instance p1, Lcom/coloros/translate/ui/simultaneous/main/c$a;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/simultaneous/main/c$a;-><init>(Lcom/coloros/translate/ui/simultaneous/main/c;)V

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/c;->i:Ln8/j;

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/ui/simultaneous/main/c;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/c;->d(Lcom/coloros/translate/ui/simultaneous/main/c;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static final d(Lcom/coloros/translate/ui/simultaneous/main/c;Landroid/view/View;)Z
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->h()Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->i()Lcom/coui/appcompat/textview/COUITextView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/coloros/translate/widget/k;->c:Lcom/coloros/translate/widget/k$b;

    invoke-virtual {v0}, Lcom/coloros/translate/widget/k$b;->a()Lcom/coloros/translate/widget/k;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/c;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/coloros/translate/R$string;->text_has_been_copied:I

    invoke-virtual {v0, p0, p1, v1}, Lcom/coloros/translate/widget/k;->d(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0
.end method

.method private final f()Lcom/coloros/translate/ui/simultaneous/widget/CloseRestoreLottieAnimationView;
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/c;->i:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/widget/CloseRestoreLottieAnimationView;

    return-object p0
.end method

.method private final g()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/c;->c:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method private final h()Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/c;->f:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;

    return-object p0
.end method

.method private final i()Lcom/coui/appcompat/textview/COUITextView;
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/c;->h:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/coui/appcompat/textview/COUITextView;

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/c;->a:Landroid/view/View;

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/main/b;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/main/b;-><init>(Lcom/coloros/translate/ui/simultaneous/main/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final e(Lo2/a;)V
    .locals 6

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->i()Lcom/coui/appcompat/textview/COUITextView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Lo2/a;->d()J

    move-result-wide v1

    invoke-virtual {p1}, Lo2/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "defaultHistoryColor msgId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " newText:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimultaneousMainAdapter"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->i()Lcom/coui/appcompat/textview/COUITextView;

    move-result-object v0

    invoke-virtual {p1}, Lo2/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/r;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->f()Lcom/coloros/translate/ui/simultaneous/widget/CloseRestoreLottieAnimationView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->f()Lcom/coloros/translate/ui/simultaneous/widget/CloseRestoreLottieAnimationView;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/translate/utils/w;->e(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->i()Lcom/coui/appcompat/textview/COUITextView;

    move-result-object v0

    invoke-virtual {p1}, Lo2/a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->h()Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;

    move-result-object p1

    const-string v0, "#A3FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->i()Lcom/coui/appcompat/textview/COUITextView;

    move-result-object p0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final j()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/main/c;->b:Z

    return p0
.end method

.method public final k()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/c;->a:Landroid/view/View;

    return-object p0
.end method

.method public final l(Lo2/a;ZZZZ)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "#A3FFFFFF"

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Lo2/a;->l()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->h()Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;

    move-result-object p3

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->i()Lcom/coui/appcompat/textview/COUITextView;

    move-result-object p3

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->h()Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;

    move-result-object p3

    iget-object p4, p0, Lcom/coloros/translate/ui/simultaneous/main/c;->a:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcom/support/appcompat/R$color;->coui_color_label_on_color_light:I

    invoke-virtual {p4, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->i()Lcom/coui/appcompat/textview/COUITextView;

    move-result-object p3

    iget-object p4, p0, Lcom/coloros/translate/ui/simultaneous/main/c;->a:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcom/support/appcompat/R$color;->coui_color_label_on_color_light:I

    invoke-virtual {p4, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->h()Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;

    move-result-object p3

    iget-object p4, p0, Lcom/coloros/translate/ui/simultaneous/main/c;->a:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcom/support/appcompat/R$color;->coui_color_label_on_color_light:I

    invoke-virtual {p4, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->i()Lcom/coui/appcompat/textview/COUITextView;

    move-result-object p3

    iget-object p4, p0, Lcom/coloros/translate/ui/simultaneous/main/c;->a:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcom/support/appcompat/R$color;->coui_color_label_on_color_light:I

    invoke-virtual {p4, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->h()Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;

    move-result-object p3

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->i()Lcom/coui/appcompat/textview/COUITextView;

    move-result-object p3

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    invoke-virtual {p1}, Lo2/a;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p1}, Lo2/a;->b()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_6

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->h()Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;

    move-result-object p2

    invoke-static {p4}, Lkotlin/text/r;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p5, :cond_5

    invoke-virtual {p1}, Lo2/a;->i()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lo2/a;->c()I

    move-result p2

    if-lez p2, :cond_5

    invoke-virtual {p1}, Lo2/a;->c()I

    move-result p2

    if-eq p3, p2, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->h()Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;

    move-result-object p2

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->h()Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p5

    invoke-virtual {p2, p5}, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->setStableColor(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->h()Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;

    move-result-object p2

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->h()Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p5

    invoke-virtual {p2, p5}, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->setEndColor(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->h()Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;

    move-result-object p2

    new-instance p5, Landroid/text/SpannableStringBuilder;

    invoke-direct {p5, p4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lo2/a;->c()I

    move-result p4

    invoke-virtual {p2, p5, p4}, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->i(Ljava/lang/CharSequence;I)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->h()Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->f()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->h()Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p1, p3}, Lo2/a;->t(I)V

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->h()Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->h()Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->f()V

    invoke-virtual {p1, p3}, Lo2/a;->t(I)V

    :goto_3
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->i()Lcom/coui/appcompat/textview/COUITextView;

    move-result-object p2

    invoke-virtual {p1}, Lo2/a;->h()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lkotlin/text/r;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_7

    move p3, v1

    goto :goto_4

    :cond_7
    move p3, v0

    :goto_4
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lo2/a;->i()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lo2/a;->h()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p1}, Lo2/a;->l()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p1}, Lo2/a;->m()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->f()Lcom/coloros/translate/ui/simultaneous/widget/CloseRestoreLottieAnimationView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v1, :cond_9

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->f()Lcom/coloros/translate/ui/simultaneous/widget/CloseRestoreLottieAnimationView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->f()Lcom/coloros/translate/ui/simultaneous/widget/CloseRestoreLottieAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    goto :goto_5

    :cond_8
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->f()Lcom/coloros/translate/ui/simultaneous/widget/CloseRestoreLottieAnimationView;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/translate/utils/w;->e(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->f()Lcom/coloros/translate/ui/simultaneous/widget/CloseRestoreLottieAnimationView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->i()Lcom/coui/appcompat/textview/COUITextView;

    move-result-object p0

    invoke-virtual {p1}, Lo2/a;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lo2/a;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Lo2/a;->s(I)V

    :cond_9
    :goto_5
    return-void
.end method

.method public final m(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->g()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final n(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/c;->b:Z

    return-void
.end method
