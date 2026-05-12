.class public Lcom/oplus/aiunit/core/protocol/common/FrameTag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FrameTag"


# instance fields
.field public fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;",
            ">;"
        }
    .end annotation
.end field

.field public packageOrder:Ljava/lang/Integer;

.field public slotOrder:Ljava/lang/Integer;

.field public tag:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->fragments:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->fragments:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->packageOrder:Ljava/lang/Integer;

    .line 6
    iput-object p2, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->slotOrder:Ljava/lang/Integer;

    .line 7
    iput-object p3, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->type:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->tag:Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/oplus/aiunit/core/protocol/common/FrameTag;
    .locals 4

    const-string v0, "fragments"

    new-instance v1, Lcom/oplus/aiunit/core/protocol/common/FrameTag;

    invoke-direct {v1}, Lcom/oplus/aiunit/core/protocol/common/FrameTag;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "packageOrder"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v1, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->packageOrder:Ljava/lang/Integer;

    const-string p0, "slotOrder"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v1, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->slotOrder:Ljava/lang/Integer;

    const-string p0, "type"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->type:Ljava/lang/String;

    const-string p0, "tag"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->tag:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, v1, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->fragments:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->fromJson(Ljava/lang/String;)Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    :cond_0
    return-object v1
.end method

.method public static getInputTags(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/aiunit/core/protocol/common/FrameTag;",
            ">;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->getTagsByType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getOutputTags(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/aiunit/core/protocol/common/FrameTag;",
            ">;"
        }
    .end annotation

    const-string v0, "output"

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->getTagsByType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getTagsByType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/aiunit/core/protocol/common/FrameTag;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "frameTagList"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->fromJson(Ljava/lang/String;)Lcom/oplus/aiunit/core/protocol/common/FrameTag;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->getSlotOrder()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "invalid json is "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FrameTag"

    invoke-static {p1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-object v0
.end method

.method public static listToJson(Ljava/util/List;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/core/protocol/common/FrameTag;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/aiunit/core/protocol/common/FrameTag;

    invoke-virtual {v2}, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p0, "frameTagList"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public addChildFrameUnit(Lcom/oplus/aiunit/core/FrameUnit;I)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "FrameTag"

    const-string p1, "child frame unit is null."

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;

    invoke-direct {v0}, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;-><init>()V

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FrameUnit;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->width:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FrameUnit;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->height:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FrameUnit;->getChannel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->channel:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FrameUnit;->getImageFormat()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->imageFormat:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FrameUnit;->getTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->tag:Ljava/lang/String;

    int-to-long p1, p2

    iput-wide p1, v0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->start:J

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->fragments:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFragments()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->fragments:Ljava/util/List;

    return-object p0
.end method

.method public getPackageOrder()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->packageOrder:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSlotOrder()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->slotOrder:Ljava/lang/Integer;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->type:Ljava/lang/String;

    return-object p0
.end method

.method public setFragments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->fragments:Ljava/util/List;

    return-void
.end method

.method public setPackageOrder(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->packageOrder:Ljava/lang/Integer;

    return-void
.end method

.method public setSlotOrder(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->slotOrder:Ljava/lang/Integer;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->tag:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->type:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "packageOrder"

    iget-object v2, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->packageOrder:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "slotOrder"

    iget-object v2, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->slotOrder:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    iget-object v2, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tag"

    iget-object v2, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->fragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->fragments:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;

    invoke-virtual {v2}, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p0, "fragments"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->toJson()Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method
