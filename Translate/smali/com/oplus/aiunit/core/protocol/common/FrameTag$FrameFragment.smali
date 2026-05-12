.class public Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/core/protocol/common/FrameTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameFragment"
.end annotation


# instance fields
.field public channel:Ljava/lang/Integer;

.field public height:Ljava/lang/Integer;

.field public imageFormat:Ljava/lang/Integer;

.field start:J

.field public tag:Ljava/lang/String;

.field public width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->width:Ljava/lang/Integer;

    .line 4
    iput-object p2, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->height:Ljava/lang/Integer;

    .line 5
    iput-object p3, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->channel:Ljava/lang/Integer;

    .line 6
    iput-object p4, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->imageFormat:Ljava/lang/Integer;

    .line 7
    iput-object p5, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->tag:Ljava/lang/String;

    .line 8
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->start:J

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;
    .locals 3

    new-instance v0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;

    invoke-direct {v0}, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "width"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->width:Ljava/lang/Integer;

    const-string p0, "height"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->height:Ljava/lang/Integer;

    const-string p0, "channel"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->channel:Ljava/lang/Integer;

    const-string p0, "imageFormat"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->imageFormat:Ljava/lang/Integer;

    const-string p0, "tag"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->tag:Ljava/lang/String;

    const-string p0, "start"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->start:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getChannel()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->channel:Ljava/lang/Integer;

    return-object p0
.end method

.method public getHeight()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->height:Ljava/lang/Integer;

    return-object p0
.end method

.method public getImageFormat()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->imageFormat:Ljava/lang/Integer;

    return-object p0
.end method

.method public getStart()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->start:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->width:Ljava/lang/Integer;

    return-object p0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "width"

    iget-object v2, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->width:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "height"

    iget-object v2, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->height:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    iget-object v2, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->channel:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "imageFormat"

    iget-object v2, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->imageFormat:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tag"

    iget-object v2, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "start"

    iget-wide v2, p0, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->start:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method
