.class final Lh0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh0/d$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private b:Landroidx/emoji2/text/e$f;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0/d;->a:Landroid/widget/TextView;

    return-void
.end method

.method private a()Landroidx/emoji2/text/e$f;
    .locals 2

    iget-object v0, p0, Lh0/d;->b:Landroidx/emoji2/text/e$f;

    if-nez v0, :cond_0

    new-instance v0, Lh0/d$a;

    iget-object v1, p0, Lh0/d;->a:Landroid/widget/TextView;

    invoke-direct {v0, v1, p0}, Lh0/d$a;-><init>(Landroid/widget/TextView;Lh0/d;)V

    iput-object v0, p0, Lh0/d;->b:Landroidx/emoji2/text/e$f;

    :cond_0
    iget-object p0, p0, Lh0/d;->b:Landroidx/emoji2/text/e$f;

    return-object p0
.end method

.method static b(Landroid/text/Spannable;II)V
    .locals 0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    invoke-static {p0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    :cond_1
    if-ltz p2, :cond_2

    invoke-static {p0, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lh0/d;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Landroidx/emoji2/text/e;->c()Landroidx/emoji2/text/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/e;->e()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p2, 0x3

    if-eq v0, p2, :cond_5

    return-object p1

    :cond_1
    if-nez p6, :cond_2

    if-nez p5, :cond_2

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-nez p4, :cond_2

    iget-object p0, p0, Lh0/d;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-ne p1, p0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    if-nez p2, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-ne p3, p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-static {}, Landroidx/emoji2/text/e;->c()Landroidx/emoji2/text/e;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Landroidx/emoji2/text/e;->q(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object p1

    :cond_5
    invoke-static {}, Landroidx/emoji2/text/e;->c()Landroidx/emoji2/text/e;

    move-result-object p2

    invoke-direct {p0}, Lh0/d;->a()Landroidx/emoji2/text/e$f;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/emoji2/text/e;->t(Landroidx/emoji2/text/e$f;)V

    return-object p1
.end method
