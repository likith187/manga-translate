.class public final Lkotlin/collections/l$a;
.super Lkotlin/collections/c;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/l;->e([I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:[I


# direct methods
.method constructor <init>([I)V
    .locals 0

    iput-object p1, p0, Lkotlin/collections/l$a;->a:[I

    invoke-direct {p0}, Lkotlin/collections/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 0

    iget-object p0, p0, Lkotlin/collections/l$a;->a:[I

    invoke-static {p0, p1}, Lkotlin/collections/i;->w([II)Z

    move-result p0

    return p0
.end method

.method public c(I)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lkotlin/collections/l$a;->a:[I

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/l$a;->a(I)Z

    move-result p0

    return p0
.end method

.method public d(I)I
    .locals 0

    iget-object p0, p0, Lkotlin/collections/l$a;->a:[I

    invoke-static {p0, p1}, Lkotlin/collections/m;->K([II)I

    move-result p0

    return p0
.end method

.method public e(I)I
    .locals 0

    iget-object p0, p0, Lkotlin/collections/l$a;->a:[I

    invoke-static {p0, p1}, Lkotlin/collections/m;->P([II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/collections/l$a;->c(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lkotlin/collections/l$a;->a:[I

    array-length p0, p0

    return p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/l$a;->d(I)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lkotlin/collections/l$a;->a:[I

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/l$a;->e(I)I

    move-result p0

    return p0
.end method
