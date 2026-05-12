.class public final Lcom/coloros/translate/ui/simultaneous/history/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:J

.field private d:J

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Z


# direct methods
.method public constructor <init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "startTimeStr"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromText"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toText"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->a:J

    iput-object p3, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->c:J

    iput-wide p6, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->d:J

    iput-object p8, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->e:Ljava/lang/String;

    iput-object p9, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->f:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->g:Z

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/ui/simultaneous/history/k0;JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/coloros/translate/ui/simultaneous/history/k0;
    .locals 11

    move-object v0, p0

    and-int/lit8 v1, p11, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/coloros/translate/ui/simultaneous/history/k0;->a:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p11, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/coloros/translate/ui/simultaneous/history/k0;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, p11, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/coloros/translate/ui/simultaneous/history/k0;->c:J

    goto :goto_2

    :cond_2
    move-wide v4, p4

    :goto_2
    and-int/lit8 v6, p11, 0x8

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lcom/coloros/translate/ui/simultaneous/history/k0;->d:J

    goto :goto_3

    :cond_3
    move-wide/from16 v6, p6

    :goto_3
    and-int/lit8 v8, p11, 0x10

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/coloros/translate/ui/simultaneous/history/k0;->e:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v8, p8

    :goto_4
    and-int/lit8 v9, p11, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/coloros/translate/ui/simultaneous/history/k0;->f:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p9

    :goto_5
    and-int/lit8 v10, p11, 0x40

    if-eqz v10, :cond_6

    iget-boolean v10, v0, Lcom/coloros/translate/ui/simultaneous/history/k0;->g:Z

    goto :goto_6

    :cond_6
    move/from16 v10, p10

    :goto_6
    move-wide p1, v1

    move-object p3, v3

    move-wide p4, v4

    move-wide/from16 p6, v6

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move/from16 p10, v10

    invoke-virtual/range {p0 .. p10}, Lcom/coloros/translate/ui/simultaneous/history/k0;->a(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Z)Lcom/coloros/translate/ui/simultaneous/history/k0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Z)Lcom/coloros/translate/ui/simultaneous/history/k0;
    .locals 12

    const-string v0, "startTimeStr"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromText"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toText"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/k0;

    move-object v1, v0

    move-wide v2, p1

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/coloros/translate/ui/simultaneous/history/k0;-><init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->a:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->c:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/coloros/translate/ui/simultaneous/history/k0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/coloros/translate/ui/simultaneous/history/k0;

    iget-wide v3, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->a:J

    iget-wide v5, p1, Lcom/coloros/translate/ui/simultaneous/history/k0;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/ui/simultaneous/history/k0;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->c:J

    iget-wide v5, p1, Lcom/coloros/translate/ui/simultaneous/history/k0;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->d:J

    iget-wide v5, p1, Lcom/coloros/translate/ui/simultaneous/history/k0;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/ui/simultaneous/history/k0;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/translate/ui/simultaneous/history/k0;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->g:Z

    iget-boolean p1, p1, Lcom/coloros/translate/ui/simultaneous/history/k0;->g:Z

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->g:Z

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->g:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final i(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->c:J

    iget-wide v2, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->d:J

    cmp-long p0, p1, v2

    const/4 v2, 0x0

    if-gez p0, :cond_0

    cmp-long p0, v0, p1

    if-gtz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final j(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->d:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->a:J

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->b:Ljava/lang/String;

    iget-wide v3, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->c:J

    iget-wide v5, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->d:J

    iget-object v7, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->f:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/history/k0;->g:Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SimultaneousHistoryDetailsInfo(id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", startTimeStr="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", startTime="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", endTime="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", fromText="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", toText="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isPlaying="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
