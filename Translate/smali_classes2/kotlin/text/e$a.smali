.class public final Lkotlin/text/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lx8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/e;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private f:Lb9/c;

.field private h:I

.field final synthetic i:Lkotlin/text/e;


# direct methods
.method constructor <init>(Lkotlin/text/e;)V
    .locals 2

    iput-object p1, p0, Lkotlin/text/e$a;->i:Lkotlin/text/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lkotlin/text/e$a;->a:I

    invoke-static {p1}, Lkotlin/text/e;->e(Lkotlin/text/e;)I

    move-result v0

    invoke-static {p1}, Lkotlin/text/e;->c(Lkotlin/text/e;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lb9/d;->h(III)I

    move-result p1

    iput p1, p0, Lkotlin/text/e$a;->b:I

    iput p1, p0, Lkotlin/text/e$a;->c:I

    return-void
.end method

.method private final a()V
    .locals 6

    iget v0, p0, Lkotlin/text/e$a;->c:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Lkotlin/text/e$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlin/text/e$a;->f:Lb9/c;

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lkotlin/text/e$a;->i:Lkotlin/text/e;

    invoke-static {v0}, Lkotlin/text/e;->d(Lkotlin/text/e;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_1

    iget v0, p0, Lkotlin/text/e$a;->h:I

    add-int/2addr v0, v3

    iput v0, p0, Lkotlin/text/e$a;->h:I

    iget-object v4, p0, Lkotlin/text/e$a;->i:Lkotlin/text/e;

    invoke-static {v4}, Lkotlin/text/e;->d(Lkotlin/text/e;)I

    move-result v4

    if-ge v0, v4, :cond_2

    :cond_1
    iget v0, p0, Lkotlin/text/e$a;->c:I

    iget-object v4, p0, Lkotlin/text/e$a;->i:Lkotlin/text/e;

    invoke-static {v4}, Lkotlin/text/e;->c(Lkotlin/text/e;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_3

    :cond_2
    new-instance v0, Lb9/c;

    iget v1, p0, Lkotlin/text/e$a;->b:I

    iget-object v4, p0, Lkotlin/text/e$a;->i:Lkotlin/text/e;

    invoke-static {v4}, Lkotlin/text/e;->c(Lkotlin/text/e;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/r;->Q(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v0, v1, v4}, Lb9/c;-><init>(II)V

    iput-object v0, p0, Lkotlin/text/e$a;->f:Lb9/c;

    iput v2, p0, Lkotlin/text/e$a;->c:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lkotlin/text/e$a;->i:Lkotlin/text/e;

    invoke-static {v0}, Lkotlin/text/e;->b(Lkotlin/text/e;)Lw8/p;

    move-result-object v0

    iget-object v4, p0, Lkotlin/text/e$a;->i:Lkotlin/text/e;

    invoke-static {v4}, Lkotlin/text/e;->c(Lkotlin/text/e;)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lkotlin/text/e$a;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln8/q;

    if-nez v0, :cond_4

    new-instance v0, Lb9/c;

    iget v1, p0, Lkotlin/text/e$a;->b:I

    iget-object v4, p0, Lkotlin/text/e$a;->i:Lkotlin/text/e;

    invoke-static {v4}, Lkotlin/text/e;->c(Lkotlin/text/e;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/r;->Q(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v0, v1, v4}, Lb9/c;-><init>(II)V

    iput-object v0, p0, Lkotlin/text/e$a;->f:Lb9/c;

    iput v2, p0, Lkotlin/text/e$a;->c:I

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ln8/q;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ln8/q;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v4, p0, Lkotlin/text/e$a;->b:I

    invoke-static {v4, v2}, Lb9/d;->l(II)Lb9/c;

    move-result-object v4

    iput-object v4, p0, Lkotlin/text/e$a;->f:Lb9/c;

    add-int/2addr v2, v0

    iput v2, p0, Lkotlin/text/e$a;->b:I

    if-nez v0, :cond_5

    move v1, v3

    :cond_5
    add-int/2addr v2, v1

    iput v2, p0, Lkotlin/text/e$a;->c:I

    :goto_0
    iput v3, p0, Lkotlin/text/e$a;->a:I

    :goto_1
    return-void
.end method


# virtual methods
.method public c()Lb9/c;
    .locals 3

    iget v0, p0, Lkotlin/text/e$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lkotlin/text/e$a;->a()V

    :cond_0
    iget v0, p0, Lkotlin/text/e$a;->a:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkotlin/text/e$a;->f:Lb9/c;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lkotlin/text/e$a;->f:Lb9/c;

    iput v1, p0, Lkotlin/text/e$a;->a:I

    return-object v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lkotlin/text/e$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lkotlin/text/e$a;->a()V

    :cond_0
    iget p0, p0, Lkotlin/text/e$a;->a:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/text/e$a;->c()Lb9/c;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
