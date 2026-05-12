.class Landroidx/recyclerview/widget/d$a$a;
.super Landroidx/recyclerview/widget/k$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/d$a;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/d$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/d$a$a;->a:Landroidx/recyclerview/widget/d$a;

    invoke-direct {p0}, Landroidx/recyclerview/widget/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/d$a$a;->a:Landroidx/recyclerview/widget/d$a;

    iget-object v0, v0, Landroidx/recyclerview/widget/d$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/d$a$a;->a:Landroidx/recyclerview/widget/d$a;

    iget-object v0, v0, Landroidx/recyclerview/widget/d$a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/d$a$a;->a:Landroidx/recyclerview/widget/d$a;

    iget-object p0, p0, Landroidx/recyclerview/widget/d$a;->h:Landroidx/recyclerview/widget/d;

    iget-object p0, p0, Landroidx/recyclerview/widget/d;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/c;->b()Landroidx/recyclerview/widget/k$f;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/k$f;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public b(II)Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/d$a$a;->a:Landroidx/recyclerview/widget/d$a;

    iget-object v0, v0, Landroidx/recyclerview/widget/d$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/d$a$a;->a:Landroidx/recyclerview/widget/d$a;

    iget-object v0, v0, Landroidx/recyclerview/widget/d$a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/d$a$a;->a:Landroidx/recyclerview/widget/d$a;

    iget-object p0, p0, Landroidx/recyclerview/widget/d$a;->h:Landroidx/recyclerview/widget/d;

    iget-object p0, p0, Landroidx/recyclerview/widget/d;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/c;->b()Landroidx/recyclerview/widget/k$f;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/k$f;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/d$a$a;->a:Landroidx/recyclerview/widget/d$a;

    iget-object v0, v0, Landroidx/recyclerview/widget/d$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/d$a$a;->a:Landroidx/recyclerview/widget/d$a;

    iget-object v0, v0, Landroidx/recyclerview/widget/d$a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/d$a$a;->a:Landroidx/recyclerview/widget/d$a;

    iget-object p0, p0, Landroidx/recyclerview/widget/d$a;->h:Landroidx/recyclerview/widget/d;

    iget-object p0, p0, Landroidx/recyclerview/widget/d;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/c;->b()Landroidx/recyclerview/widget/k$f;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/k$f;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public d()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/d$a$a;->a:Landroidx/recyclerview/widget/d$a;

    iget-object p0, p0, Landroidx/recyclerview/widget/d$a;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public e()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/d$a$a;->a:Landroidx/recyclerview/widget/d$a;

    iget-object p0, p0, Landroidx/recyclerview/widget/d$a;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
