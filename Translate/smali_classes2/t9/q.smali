.class public final Lt9/q;
.super Lkotlin/collections/c;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt9/q$a;
    }
.end annotation


# static fields
.field public static final c:Lt9/q$a;


# instance fields
.field private final a:[Lt9/g;

.field private final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt9/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt9/q$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lt9/q;->c:Lt9/q$a;

    return-void
.end method

.method private constructor <init>([Lt9/g;[I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lkotlin/collections/c;-><init>()V

    .line 3
    iput-object p1, p0, Lt9/q;->a:[Lt9/g;

    .line 4
    iput-object p2, p0, Lt9/q;->b:[I

    return-void
.end method

.method public synthetic constructor <init>([Lt9/g;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lt9/q;-><init>([Lt9/g;[I)V

    return-void
.end method

.method public static final varargs h([Lt9/g;)Lt9/q;
    .locals 1

    sget-object v0, Lt9/q;->c:Lt9/q$a;

    invoke-virtual {v0, p0}, Lt9/q$a;->d([Lt9/g;)Lt9/q;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge a(Lt9/g;)Z
    .locals 0

    invoke-super {p0, p1}, Lkotlin/collections/a;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public c(I)Lt9/g;
    .locals 0

    iget-object p0, p0, Lt9/q;->a:[Lt9/g;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lt9/g;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lt9/g;

    invoke-virtual {p0, p1}, Lt9/q;->a(Lt9/g;)Z

    move-result p0

    return p0
.end method

.method public final d()[Lt9/g;
    .locals 0

    iget-object p0, p0, Lt9/q;->a:[Lt9/g;

    return-object p0
.end method

.method public final e()[I
    .locals 0

    iget-object p0, p0, Lt9/q;->b:[I

    return-object p0
.end method

.method public bridge f(Lt9/g;)I
    .locals 0

    invoke-super {p0, p1}, Lkotlin/collections/c;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge g(Lt9/g;)I
    .locals 0

    invoke-super {p0, p1}, Lkotlin/collections/c;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lt9/q;->c(I)Lt9/g;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lt9/q;->a:[Lt9/g;

    array-length p0, p0

    return p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lt9/g;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Lt9/g;

    invoke-virtual {p0, p1}, Lt9/q;->f(Lt9/g;)I

    move-result p0

    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lt9/g;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Lt9/g;

    invoke-virtual {p0, p1}, Lt9/q;->g(Lt9/g;)I

    move-result p0

    return p0
.end method
