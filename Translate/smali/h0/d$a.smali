.class Lh0/d$a;
.super Landroidx/emoji2/text/e$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/Reference;

.field private final b:Ljava/lang/ref/Reference;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lh0/d;)V
    .locals 1

    invoke-direct {p0}, Landroidx/emoji2/text/e$f;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lh0/d$a;->a:Ljava/lang/ref/Reference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lh0/d$a;->b:Ljava/lang/ref/Reference;

    return-void
.end method

.method private c(Landroid/widget/TextView;Landroid/text/InputFilter;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object p1

    if-nez p1, :cond_1

    return p0

    :cond_1
    move v0, p0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    if-ne v1, p2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return p0
.end method


# virtual methods
.method public b()V
    .locals 3

    invoke-super {p0}, Landroidx/emoji2/text/e$f;->b()V

    iget-object v0, p0, Lh0/d$a;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lh0/d$a;->b:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Lh0/d$a;->c(Landroid/widget/TextView;Landroid/text/InputFilter;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {}, Landroidx/emoji2/text/e;->c()Landroidx/emoji2/text/e;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/emoji2/text/e;->p(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    if-ne p0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p0

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    instance-of v0, v1, Landroid/text/Spannable;

    if-eqz v0, :cond_2

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, p0, v2}, Lh0/d;->b(Landroid/text/Spannable;II)V

    :cond_2
    return-void
.end method
