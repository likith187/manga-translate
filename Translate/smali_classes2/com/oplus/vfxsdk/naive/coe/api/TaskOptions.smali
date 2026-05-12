.class public final Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public final taskBindWithGLContext:Z

.field public final taskDelay:J

.field public final taskExecutionType:Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

.field public final taskMainContext:Z

.field public final taskName:Ljava/lang/String;

.field public final taskPeriod:J

.field public final taskPriority:I

.field public final taskRepeat:I


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 1
    const/16 v11, 0xff

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;-><init>(Ljava/lang/String;IJJILcom/oplus/vfxsdk/naive/coe/api/ExecutionType;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJJILcom/oplus/vfxsdk/naive/coe/api/ExecutionType;ZZ)V
    .locals 1

    const-string v0, "taskName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskExecutionType"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskName:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskPriority:I

    .line 5
    iput-wide p3, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskDelay:J

    .line 6
    iput-wide p5, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskPeriod:J

    .line 7
    iput p7, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskRepeat:I

    .line 8
    iput-object p8, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskExecutionType:Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

    .line 9
    iput-boolean p9, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskBindWithGLContext:Z

    .line 10
    iput-boolean p10, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskMainContext:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IJJILcom/oplus/vfxsdk/naive/coe/api/ExecutionType;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 11
    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_2

    move-wide v7, v5

    goto :goto_2

    :cond_2
    move-wide v7, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p5

    :goto_3
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    move/from16 v4, p7

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    .line 12
    sget-object v9, Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;->Deferred:Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    move v10, v3

    goto :goto_6

    :cond_6
    move/from16 v10, p9

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v3, p10

    :goto_7
    move-object p1, v1

    move p2, v2

    move-wide p3, v7

    move-wide/from16 p5, v5

    move/from16 p7, v4

    move-object/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v3

    .line 13
    invoke-direct/range {p0 .. p10}, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;-><init>(Ljava/lang/String;IJJILcom/oplus/vfxsdk/naive/coe/api/ExecutionType;ZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;Ljava/lang/String;IJJILcom/oplus/vfxsdk/naive/coe/api/ExecutionType;ZZILjava/lang/Object;)Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskPriority:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskDelay:J

    goto :goto_2

    :cond_2
    move-wide v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskPeriod:J

    goto :goto_3

    :cond_3
    move-wide/from16 v6, p5

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    iget v8, v0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskRepeat:I

    goto :goto_4

    :cond_4
    move/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskExecutionType:Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-boolean v10, v0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskBindWithGLContext:Z

    goto :goto_6

    :cond_6
    move/from16 v10, p9

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskMainContext:Z

    goto :goto_7

    :cond_7
    move/from16 v1, p10

    :goto_7
    move-object p1, v2

    move p2, v3

    move-wide p3, v4

    move-wide/from16 p5, v6

    move/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->copy(Ljava/lang/String;IJJILcom/oplus/vfxsdk/naive/coe/api/ExecutionType;ZZ)Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskName:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskPriority:I

    return p0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskDelay:J

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskPeriod:J

    return-wide v0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskRepeat:I

    return p0
.end method

.method public final component6()Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskExecutionType:Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

    return-object p0
.end method

.method public final component7()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskBindWithGLContext:Z

    return p0
.end method

.method public final component8()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskMainContext:Z

    return p0
.end method

.method public final copy(Ljava/lang/String;IJJILcom/oplus/vfxsdk/naive/coe/api/ExecutionType;ZZ)Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;
    .locals 12

    const-string v0, "taskName"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskExecutionType"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;

    move-object v1, v0

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;-><init>(Ljava/lang/String;IJJILcom/oplus/vfxsdk/naive/coe/api/ExecutionType;ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskName:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskPriority:I

    iget v3, p1, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskPriority:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskDelay:J

    iget-wide v5, p1, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskDelay:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskPeriod:J

    iget-wide v5, p1, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskPeriod:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskRepeat:I

    iget v3, p1, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskRepeat:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskExecutionType:Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

    iget-object v3, p1, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskExecutionType:Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskBindWithGLContext:Z

    iget-boolean v3, p1, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskBindWithGLContext:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean p0, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskMainContext:Z

    iget-boolean p1, p1, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskMainContext:Z

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskPriority:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskDelay:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskPeriod:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskRepeat:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskExecutionType:Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskBindWithGLContext:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskMainContext:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, p0

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskName:Ljava/lang/String;

    iget v1, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskPriority:I

    iget-wide v2, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskDelay:J

    iget-wide v4, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskPeriod:J

    iget v6, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskRepeat:I

    iget-object v7, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskExecutionType:Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

    iget-boolean v8, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskBindWithGLContext:Z

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;->taskMainContext:Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TaskOptions(taskName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", taskPriority="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", taskDelay="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", taskPeriod="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", taskRepeat="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", taskExecutionType="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", taskBindWithGLContext="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", taskMainContext="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
