.class public abstract Ld7/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:F

.field d:F

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld7/j;->e:Z

    iput-object p1, p0, Ld7/j;->b:Ljava/lang/String;

    iput p2, p0, Ld7/j;->c:F

    iput v0, p0, Ld7/j;->a:I

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)F
.end method

.method public abstract b(Ljava/lang/Object;F)V
.end method

.method public c(F)Ld7/j;
    .locals 0

    iput p1, p0, Ld7/j;->d:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld7/j;->e:Z

    return-object p0
.end method

.method public d(Ljava/lang/Object;F)V
    .locals 1

    iget v0, p0, Ld7/j;->c:F

    mul-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Ld7/j;->b(Ljava/lang/Object;F)V

    return-void
.end method

.method public abstract e(Ljava/lang/Object;)V
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Ld7/j;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ld7/j;->a(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Ld7/j;->d:F

    :cond_0
    return-void
.end method
