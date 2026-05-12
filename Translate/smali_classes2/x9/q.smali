.class final Lx9/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Lx9/o;

.field volatile c:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;Lx9/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx9/q;->a:Ljava/lang/Object;

    iput-object p2, p0, Lx9/q;->b:Lx9/o;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lx9/q;->c:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lx9/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lx9/q;

    iget-object v0, p0, Lx9/q;->a:Ljava/lang/Object;

    iget-object v2, p1, Lx9/q;->a:Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lx9/q;->b:Lx9/o;

    iget-object p1, p1, Lx9/q;->b:Lx9/o;

    invoke-virtual {p0, p1}, Lx9/o;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lx9/q;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lx9/q;->b:Lx9/o;

    iget-object p0, p0, Lx9/o;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
