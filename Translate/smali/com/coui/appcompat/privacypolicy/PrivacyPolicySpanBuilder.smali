.class public final Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;
.super Landroid/text/SpannableStringBuilder;
.source "SourceFile"


# instance fields
.field private final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "str"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;->textView:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;->setWebLink$lambda$0(Ljava/lang/String;Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic setBold$default(Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;Ljava/lang/String;IILjava/lang/Object;)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "toString()"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, -0x1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;->setBold(Ljava/lang/String;I)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic setLink$default(Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;Ljava/lang/String;ILandroid/view/View$OnClickListener;ILjava/lang/Object;)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p5, "toString()"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, -0x1

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;->setLink(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic setUnderLine$default(Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;Ljava/lang/String;IILjava/lang/Object;)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "toString()"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, -0x1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;->setUnderLine(Ljava/lang/String;I)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic setWebLink$default(Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;ZLjava/lang/String;ILjava/lang/Object;)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "toString()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;->setWebLink(ZLjava/lang/String;)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static final setWebLink$lambda$0(Ljava/lang/String;Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;Landroid/view/View;)V
    .locals 1

    const-string p2, "$link"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p1, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PrivacyPolicySpanBuilder"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final bridge charAt(I)C
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;->get(I)C

    move-result p0

    return p0
.end method

.method public bridge get(I)C
    .locals 0

    invoke-super {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result p0

    return p0
.end method

.method public bridge getLength()I
    .locals 0

    invoke-super {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p0

    return p0
.end method

.method public final bridge length()I
    .locals 0

    invoke-virtual {p0}, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;->getLength()I

    move-result p0

    return p0
.end method

.method public final setBold(Ljava/lang/String;I)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;
    .locals 7

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/r;->W(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p2

    :goto_0
    if-gez p2, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/privacypolicy/R$style;->boldAppearanceButton:I

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    add-int/2addr p1, p2

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p2, p1, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method public final setLink()Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;
    .locals 6

    .line 1
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;->setLink$default(Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;Ljava/lang/String;ILandroid/view/View$OnClickListener;ILjava/lang/Object;)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final setLink(Ljava/lang/String;)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;
    .locals 7

    .line 2
    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;->setLink$default(Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;Ljava/lang/String;ILandroid/view/View$OnClickListener;ILjava/lang/Object;)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final setLink(Ljava/lang/String;I)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;
    .locals 7

    .line 3
    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;->setLink$default(Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;Ljava/lang/String;ILandroid/view/View$OnClickListener;ILjava/lang/Object;)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final setLink(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;
    .locals 8

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;->textView:Landroid/widget/TextView;

    new-instance v1, Lcom/coui/appcompat/privacypolicy/MultiMovementMethod;

    invoke-direct {v1}, Lcom/coui/appcompat/privacypolicy/MultiMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 5
    iget-object v0, p0, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 6
    invoke-static/range {v2 .. v7}, Lkotlin/text/r;->W(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p2

    :goto_0
    if-gez p2, :cond_1

    return-object p0

    .line 7
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p3, :cond_2

    .line 8
    iget-object v0, p0, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder$setLink$clickableSpan$1;

    invoke-direct {v1, p3, v0}, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder$setLink$clickableSpan$1;-><init>(Landroid/view/View$OnClickListener;Landroid/content/Context;)V

    add-int/2addr p1, p2

    const/16 p3, 0x21

    .line 9
    invoke-virtual {p0, v1, p2, p1, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    return-object p0
.end method

.method public final setUnderLine(Ljava/lang/String;I)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;
    .locals 7

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/r;->W(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p2

    :goto_0
    if-gez p2, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    add-int/2addr p1, p2

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p2, p1, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method public final setWebLink(ZLjava/lang/String;)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;
    .locals 7

    const-string v0, "link"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;->textView:Landroid/widget/TextView;

    new-instance v0, Lcom/coui/appcompat/privacypolicy/MultiMovementMethod;

    invoke-direct {v0}, Lcom/coui/appcompat/privacypolicy/MultiMovementMethod;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v4, Lcom/coui/appcompat/privacypolicy/a;

    invoke-direct {v4, p2, p0}, Lcom/coui/appcompat/privacypolicy/a;-><init>(Ljava/lang/String;Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;->setLink$default(Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;Ljava/lang/String;ILandroid/view/View$OnClickListener;ILjava/lang/Object;)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;

    :cond_0
    return-object p0
.end method
