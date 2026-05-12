.class public final Lcom/oplus/aiunit/nlp/result/NlpEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/nlp/result/NlpEntity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/nlp/result/NlpEntity$Companion;

.field private static final TAG:Ljava/lang/String; = "NlpEntity"


# instance fields
.field private content:Ljava/lang/String;

.field private endIndex:I

.field private entityType:Ljava/lang/String;

.field private startIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/nlp/result/NlpEntity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/nlp/result/NlpEntity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/nlp/result/NlpEntity;->Companion:Lcom/oplus/aiunit/nlp/result/NlpEntity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final fromJson(Ljava/lang/String;)Lcom/oplus/aiunit/nlp/result/NlpEntity;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/nlp/result/NlpEntity;->Companion:Lcom/oplus/aiunit/nlp/result/NlpEntity$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/nlp/result/NlpEntity$Companion;->fromJson(Ljava/lang/String;)Lcom/oplus/aiunit/nlp/result/NlpEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/nlp/result/NlpEntity;->content:Ljava/lang/String;

    return-object p0
.end method

.method public final getEndIndex()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/nlp/result/NlpEntity;->endIndex:I

    return p0
.end method

.method public final getEntityType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/nlp/result/NlpEntity;->entityType:Ljava/lang/String;

    return-object p0
.end method

.method public final getStartIndex()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/nlp/result/NlpEntity;->startIndex:I

    return p0
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/nlp/result/NlpEntity;->content:Ljava/lang/String;

    return-void
.end method

.method public final setEndIndex(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/nlp/result/NlpEntity;->endIndex:I

    return-void
.end method

.method public final setEntityType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/nlp/result/NlpEntity;->entityType:Ljava/lang/String;

    return-void
.end method

.method public final setStartIndex(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/nlp/result/NlpEntity;->startIndex:I

    return-void
.end method

.method public final toJson()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p0, Lcom/oplus/aiunit/nlp/result/NlpEntity;->startIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "startIndex"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Lcom/oplus/aiunit/nlp/result/NlpEntity;->endIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "endIndex"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/oplus/aiunit/nlp/result/NlpEntity;->content:Ljava/lang/String;

    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/oplus/aiunit/nlp/result/NlpEntity;->entityType:Ljava/lang/String;

    const-string v1, "entityType"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/oplus/aiunit/nlp/result/NlpEntity;->toJson()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
