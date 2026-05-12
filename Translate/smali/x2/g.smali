.class final Lx2/g;
.super Lx2/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx2/g$b;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Lx2/k;

.field private final d:Ljava/lang/Integer;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/List;

.field private final g:Lx2/p;


# direct methods
.method private constructor <init>(JJLx2/k;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lx2/p;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lx2/m;-><init>()V

    .line 3
    iput-wide p1, p0, Lx2/g;->a:J

    .line 4
    iput-wide p3, p0, Lx2/g;->b:J

    .line 5
    iput-object p5, p0, Lx2/g;->c:Lx2/k;

    .line 6
    iput-object p6, p0, Lx2/g;->d:Ljava/lang/Integer;

    .line 7
    iput-object p7, p0, Lx2/g;->e:Ljava/lang/String;

    .line 8
    iput-object p8, p0, Lx2/g;->f:Ljava/util/List;

    .line 9
    iput-object p9, p0, Lx2/g;->g:Lx2/p;

    return-void
.end method

.method synthetic constructor <init>(JJLx2/k;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lx2/p;Lx2/g$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lx2/g;-><init>(JJLx2/k;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lx2/p;)V

    return-void
.end method


# virtual methods
.method public b()Lx2/k;
    .locals 0

    iget-object p0, p0, Lx2/g;->c:Lx2/k;

    return-object p0
.end method

.method public c()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lx2/g;->f:Ljava/util/List;

    return-object p0
.end method

.method public d()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lx2/g;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lx2/g;->e:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lx2/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    check-cast p1, Lx2/m;

    iget-wide v3, p0, Lx2/g;->a:J

    invoke-virtual {p1}, Lx2/m;->g()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-wide v3, p0, Lx2/g;->b:J

    invoke-virtual {p1}, Lx2/m;->h()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-object v1, p0, Lx2/g;->c:Lx2/k;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lx2/m;->b()Lx2/k;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lx2/m;->b()Lx2/k;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    iget-object v1, p0, Lx2/g;->d:Ljava/lang/Integer;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lx2/m;->d()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lx2/m;->d()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    iget-object v1, p0, Lx2/g;->e:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lx2/m;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lx2/m;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    iget-object v1, p0, Lx2/g;->f:Ljava/util/List;

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lx2/m;->c()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lx2/m;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    iget-object p0, p0, Lx2/g;->g:Lx2/p;

    if-nez p0, :cond_5

    invoke-virtual {p1}, Lx2/m;->f()Lx2/p;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lx2/m;->f()Lx2/p;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    move v0, v2

    :goto_4
    return v0

    :cond_7
    return v2
.end method

.method public f()Lx2/p;
    .locals 0

    iget-object p0, p0, Lx2/g;->g:Lx2/p;

    return-object p0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lx2/g;->a:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lx2/g;->b:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Lx2/g;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lx2/g;->b:J

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lx2/g;->c:Lx2/k;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lx2/g;->d:Ljava/lang/Integer;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lx2/g;->e:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lx2/g;->f:Ljava/util/List;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lx2/g;->g:Lx2/p;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    xor-int p0, v0, v3

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogRequest{requestTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lx2/g;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", requestUptimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lx2/g;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", clientInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx2/g;->c:Lx2/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx2/g;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logSourceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx2/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx2/g;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", qosTier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lx2/g;->g:Lx2/p;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
