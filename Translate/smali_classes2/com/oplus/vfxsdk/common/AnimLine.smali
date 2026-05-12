.class public final Lcom/oplus/vfxsdk/common/AnimLine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final animKeys:[Lcom/oplus/vfxsdk/common/r;

.field private channelData:Lcom/oplus/vfxsdk/common/o;

.field private final index:I

.field private final key:Ljava/lang/String;

.field private final lastTime:F

.field private final name:Ljava/lang/String;

.field private final nodeId:Ljava/lang/String;

.field private pop:Le8/d;

.field private final type:Lcom/oplus/vfxsdk/common/u;

.field private update:Le8/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/vfxsdk/common/u;IF[Lcom/oplus/vfxsdk/common/r;Lcom/oplus/vfxsdk/common/o;)V
    .locals 1

    const-string v0, "nodeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animKeys"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/AnimLine;->nodeId:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/vfxsdk/common/AnimLine;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/vfxsdk/common/AnimLine;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/vfxsdk/common/AnimLine;->type:Lcom/oplus/vfxsdk/common/u;

    iput p5, p0, Lcom/oplus/vfxsdk/common/AnimLine;->index:I

    iput p6, p0, Lcom/oplus/vfxsdk/common/AnimLine;->lastTime:F

    iput-object p7, p0, Lcom/oplus/vfxsdk/common/AnimLine;->animKeys:[Lcom/oplus/vfxsdk/common/r;

    iput-object p8, p0, Lcom/oplus/vfxsdk/common/AnimLine;->channelData:Lcom/oplus/vfxsdk/common/o;

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/vfxsdk/common/AnimLine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/vfxsdk/common/u;IF[Lcom/oplus/vfxsdk/common/r;Lcom/oplus/vfxsdk/common/o;ILjava/lang/Object;)Lcom/oplus/vfxsdk/common/AnimLine;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/oplus/vfxsdk/common/AnimLine;->nodeId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/oplus/vfxsdk/common/AnimLine;->key:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/oplus/vfxsdk/common/AnimLine;->name:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/oplus/vfxsdk/common/AnimLine;->type:Lcom/oplus/vfxsdk/common/u;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/oplus/vfxsdk/common/AnimLine;->index:I

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/oplus/vfxsdk/common/AnimLine;->lastTime:F

    goto :goto_5

    :cond_5
    move v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/oplus/vfxsdk/common/AnimLine;->animKeys:[Lcom/oplus/vfxsdk/common/r;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/oplus/vfxsdk/common/AnimLine;->channelData:Lcom/oplus/vfxsdk/common/o;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move p5, v6

    move p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/oplus/vfxsdk/common/AnimLine;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/vfxsdk/common/u;IF[Lcom/oplus/vfxsdk/common/r;Lcom/oplus/vfxsdk/common/o;)Lcom/oplus/vfxsdk/common/AnimLine;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->nodeId:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Lcom/oplus/vfxsdk/common/u;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->type:Lcom/oplus/vfxsdk/common/u;

    return-object p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->index:I

    return p0
.end method

.method public final component6()F
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->lastTime:F

    return p0
.end method

.method public final component7()[Lcom/oplus/vfxsdk/common/r;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->animKeys:[Lcom/oplus/vfxsdk/common/r;

    return-object p0
.end method

.method public final component8()Lcom/oplus/vfxsdk/common/o;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->channelData:Lcom/oplus/vfxsdk/common/o;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/vfxsdk/common/u;IF[Lcom/oplus/vfxsdk/common/r;Lcom/oplus/vfxsdk/common/o;)Lcom/oplus/vfxsdk/common/AnimLine;
    .locals 10

    const-string v0, "nodeId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animKeys"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/vfxsdk/common/AnimLine;

    move-object v1, v0

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/oplus/vfxsdk/common/AnimLine;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/vfxsdk/common/u;IF[Lcom/oplus/vfxsdk/common/r;Lcom/oplus/vfxsdk/common/o;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/vfxsdk/common/AnimLine;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/vfxsdk/common/AnimLine;

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimLine;->nodeId:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/AnimLine;->nodeId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimLine;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/AnimLine;->key:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimLine;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/AnimLine;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimLine;->type:Lcom/oplus/vfxsdk/common/u;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/AnimLine;->type:Lcom/oplus/vfxsdk/common/u;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/oplus/vfxsdk/common/AnimLine;->index:I

    iget v3, p1, Lcom/oplus/vfxsdk/common/AnimLine;->index:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/oplus/vfxsdk/common/AnimLine;->lastTime:F

    iget v3, p1, Lcom/oplus/vfxsdk/common/AnimLine;->lastTime:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimLine;->animKeys:[Lcom/oplus/vfxsdk/common/r;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/AnimLine;->animKeys:[Lcom/oplus/vfxsdk/common/r;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->channelData:Lcom/oplus/vfxsdk/common/o;

    iget-object p1, p1, Lcom/oplus/vfxsdk/common/AnimLine;->channelData:Lcom/oplus/vfxsdk/common/o;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getAnimKeys()[Lcom/oplus/vfxsdk/common/r;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->animKeys:[Lcom/oplus/vfxsdk/common/r;

    return-object p0
.end method

.method public final getChannelData()Lcom/oplus/vfxsdk/common/o;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->channelData:Lcom/oplus/vfxsdk/common/o;

    return-object p0
.end method

.method public final getIndex()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->index:I

    return p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final getLastTime()F
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->lastTime:F

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getNodeId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->nodeId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPop()Le8/d;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->pop:Le8/d;

    return-object p0
.end method

.method public final getType()Lcom/oplus/vfxsdk/common/u;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->type:Lcom/oplus/vfxsdk/common/u;

    return-object p0
.end method

.method public final getUpdate()Le8/e;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->update:Le8/e;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->nodeId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimLine;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimLine;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimLine;->type:Lcom/oplus/vfxsdk/common/u;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/vfxsdk/common/AnimLine;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/vfxsdk/common/AnimLine;->lastTime:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimLine;->animKeys:[Lcom/oplus/vfxsdk/common/r;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->channelData:Lcom/oplus/vfxsdk/common/o;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final setChannelData(Lcom/oplus/vfxsdk/common/o;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/AnimLine;->channelData:Lcom/oplus/vfxsdk/common/o;

    return-void
.end method

.method public final setPop(Le8/d;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/AnimLine;->pop:Le8/d;

    return-void
.end method

.method public final setUpdate(Le8/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/AnimLine;->update:Le8/e;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->nodeId:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/AnimLine;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/vfxsdk/common/AnimLine;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/vfxsdk/common/AnimLine;->type:Lcom/oplus/vfxsdk/common/u;

    iget v4, p0, Lcom/oplus/vfxsdk/common/AnimLine;->index:I

    iget v5, p0, Lcom/oplus/vfxsdk/common/AnimLine;->lastTime:F

    iget-object v6, p0, Lcom/oplus/vfxsdk/common/AnimLine;->animKeys:[Lcom/oplus/vfxsdk/common/r;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/AnimLine;->channelData:Lcom/oplus/vfxsdk/common/o;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AnimLine(nodeId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", key="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", index="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", lastTime="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", animKeys="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", channelData="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
