.class public final Lcom/coloros/translate/o$b;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/o$b$a;,
        Lcom/coloros/translate/o$b$b;,
        Lcom/coloros/translate/o$b$c;
    }
.end annotation


# instance fields
.field private final a:Z

.field private b:Ljava/util/List;

.field private c:Lcom/coloros/translate/b;

.field private d:I

.field private e:Lw8/q;

.field final synthetic f:Lcom/coloros/translate/o;


# direct methods
.method public constructor <init>(Lcom/coloros/translate/o;Z)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/o$b;->f:Lcom/coloros/translate/o;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    iput-boolean p2, p0, Lcom/coloros/translate/o$b;->a:Z

    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/o$b;->b:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lcom/coloros/translate/o$b;->d:I

    return-void
.end method

.method public static final synthetic f(Lcom/coloros/translate/o$b;)Lcom/coloros/translate/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/o$b;->c:Lcom/coloros/translate/b;

    return-object p0
.end method

.method public static final synthetic g(Lcom/coloros/translate/o$b;)I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/o$b;->d:I

    return p0
.end method

.method public static final synthetic h(Lcom/coloros/translate/o$b;Lcom/coloros/translate/b;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/o$b;->c:Lcom/coloros/translate/b;

    return-void
.end method

.method public static final synthetic i(Lcom/coloros/translate/o$b;I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/o$b;->d:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/o$b;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/o$b;->getItemCount()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    return p0
.end method

.method public final j()Lw8/q;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/o$b;->e:Lw8/q;

    return-object p0
.end method

.method public final k()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/o$b;->a:Z

    return p0
.end method

.method public final l(Ljava/util/List;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coloros/translate/o$b;->d:I

    iput-object p1, p0, Lcom/coloros/translate/o$b;->b:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public final m(Lw8/q;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/o$b;->e:Lw8/q;

    return-void
.end method

.method public final n(Lcom/coloros/translate/b;)V
    .locals 1

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/o$b;->c:Lcom/coloros/translate/b;

    iget-object v0, p0, Lcom/coloros/translate/o$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/coloros/translate/o$b;->d:I

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/coloros/translate/o$b$c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/coloros/translate/o$b$c;

    iget-object p0, p0, Lcom/coloros/translate/o$b;->b:Ljava/util/List;

    add-int/lit8 v0, p2, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/b;

    invoke-virtual {p1, p0, p2}, Lcom/coloros/translate/o$b$c;->c(Lcom/coloros/translate/b;I)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/coloros/translate/o$b$b;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/coloros/translate/o$b$b;

    invoke-virtual {p1}, Lcom/coloros/translate/o$b$b;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflate(...)"

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    new-instance p2, Lcom/coloros/translate/o$b$c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/coloros/translate/R$layout;->item_language_list:I

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/coloros/translate/o$b$c;-><init>(Lcom/coloros/translate/o$b;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/coloros/translate/o$b$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/coloros/translate/R$layout;->item_language_list_bottom:I

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/coloros/translate/o$b$a;-><init>(Lcom/coloros/translate/o$b;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/coloros/translate/o$b$b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/coloros/translate/R$layout;->item_language_list_top:I

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/coloros/translate/o$b$b;-><init>(Lcom/coloros/translate/o$b;Landroid/view/View;)V

    :goto_0
    return-object p2
.end method
