.class public final Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/translation/data/AsrStartRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "START_STRUCT"
.end annotation


# instance fields
.field private bizType:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private data:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->data:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    return-void
.end method


# virtual methods
.method public final getBizType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->bizType:Ljava/lang/String;

    return-object p0
.end method

.method public final getChannel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public final getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->data:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    return-object p0
.end method

.method public final setBizType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->bizType:Ljava/lang/String;

    return-void
.end method

.method public final setChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->channel:Ljava/lang/String;

    return-void
.end method

.method public final setData(Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->data:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    return-void
.end method
