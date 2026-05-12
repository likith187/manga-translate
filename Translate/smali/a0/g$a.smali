.class public La0/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;


# direct methods
.method constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, La0/g$a;->a:I

    .line 6
    iput-object p2, p0, La0/g$a;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I[La0/g$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, La0/g$a;->a:I

    .line 3
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, La0/g$a;->b:Ljava/util/List;

    return-void
.end method

.method static a(ILjava/util/List;)La0/g$a;
    .locals 1

    new-instance v0, La0/g$a;

    invoke-direct {v0, p0, p1}, La0/g$a;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method static b(I[La0/g$b;)La0/g$a;
    .locals 1

    new-instance v0, La0/g$a;

    invoke-direct {v0, p0, p1}, La0/g$a;-><init>(I[La0/g$b;)V

    return-object v0
.end method


# virtual methods
.method public c()[La0/g$b;
    .locals 1

    iget-object p0, p0, La0/g$a;->b:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [La0/g$b;

    return-object p0
.end method

.method public d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, La0/g$a;->b:Ljava/util/List;

    return-object p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, La0/g$a;->a:I

    return p0
.end method

.method f()Z
    .locals 1

    iget-object p0, p0, La0/g$a;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
