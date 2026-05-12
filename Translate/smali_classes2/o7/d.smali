.class public Lo7/d;
.super Lo7/f;
.source "SourceFile"


# instance fields
.field private g:J

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lo7/f;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public g()I
    .locals 0

    const/16 p0, 0x3ec

    return p0
.end method

.method public l()I
    .locals 0

    iget p0, p0, Lo7/d;->i:I

    return p0
.end method

.method public m()J
    .locals 2

    iget-wide v0, p0, Lo7/d;->g:J

    return-wide v0
.end method

.method public n()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo7/d;->h:Ljava/lang/String;

    return-object p0
.end method

.method public o(I)V
    .locals 1

    iput p1, p0, Lo7/d;->i:I

    const-string v0, "time"

    invoke-virtual {p0, v0, p1}, Lo7/f;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public p(J)V
    .locals 1

    iput-wide p1, p0, Lo7/d;->g:J

    const-string v0, "time"

    invoke-virtual {p0, v0, p1, p2}, Lo7/f;->c(Ljava/lang/String;J)V

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lo7/d;->h:Ljava/lang/String;

    const-string v0, "exception"

    invoke-virtual {p0, v0, p1}, Lo7/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo7/d;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "count is :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo7/d;->l()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "time is :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo7/d;->m()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
