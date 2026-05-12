.class public Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/core/protocol/ValueType;


# instance fields
.field xmax:Ljava/lang/Float;

.field xmin:Ljava/lang/Float;

.field ymax:Ljava/lang/Float;

.field ymin:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;->ymin:Ljava/lang/Float;

    .line 4
    iput-object p2, p0, Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;->xmin:Ljava/lang/Float;

    .line 5
    iput-object p3, p0, Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;->ymax:Ljava/lang/Float;

    .line 6
    iput-object p4, p0, Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;->xmax:Ljava/lang/Float;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;
    .locals 4

    new-instance v0, Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;

    invoke-direct {v0}, Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "ymin"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;->ymin:Ljava/lang/Float;

    const-string p0, "xmin"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;->xmin:Ljava/lang/Float;

    const-string p0, "ymax"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;->ymax:Ljava/lang/Float;

    const-string p0, "xmax"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;->xmax:Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getXmax()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;->xmax:Ljava/lang/Float;

    return-object p0
.end method

.method public getXmin()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;->xmin:Ljava/lang/Float;

    return-object p0
.end method

.method public getYmax()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;->ymax:Ljava/lang/Float;

    return-object p0
.end method

.method public getYmin()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;->ymin:Ljava/lang/Float;

    return-object p0
.end method

.method public setXmax(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;->xmax:Ljava/lang/Float;

    return-void
.end method

.method public setXmin(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;->xmin:Ljava/lang/Float;

    return-void
.end method

.method public setYmax(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;->ymax:Ljava/lang/Float;

    return-void
.end method

.method public setYmin(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;->ymin:Ljava/lang/Float;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ymin"

    iget-object v2, p0, Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;->ymin:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "xmin"

    iget-object v2, p0, Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;->xmin:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ymax"

    iget-object v2, p0, Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;->ymax:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "xmax"

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/common/Rect2Pt;->xmax:Ljava/lang/Float;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method
