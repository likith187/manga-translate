.class public final Lcom/coloros/translate/repository/local/SimultaneousSentence;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/repository/local/SimultaneousSentence$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coloros/translate/repository/local/SimultaneousSentence$a;

.field public static final TABLE_NAME:Ljava/lang/String; = "simultaneousSentence"


# instance fields
.field private endTimeOffset:J

.field private fromLanguage:Ljava/lang/String;

.field private fromText:Ljava/lang/String;

.field private id:J

.field private msgId:J

.field private noteId:J

.field private recordId:Ljava/lang/String;

.field private startTimeOffset:J

.field private timestamp:J

.field private toLanguage:Ljava/lang/String;

.field private toText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/repository/local/SimultaneousSentence$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/repository/local/SimultaneousSentence$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->Companion:Lcom/coloros/translate/repository/local/SimultaneousSentence$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->recordId:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->fromText:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->toText:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->fromLanguage:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->toLanguage:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->timestamp:J

    return-void
.end method


# virtual methods
.method public final getEndTimeOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->endTimeOffset:J

    return-wide v0
.end method

.method public final getFromLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->fromLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final getFromText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->fromText:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->id:J

    return-wide v0
.end method

.method public final getMsgId()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->msgId:J

    return-wide v0
.end method

.method public final getNoteId()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->noteId:J

    return-wide v0
.end method

.method public final getRecordId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->recordId:Ljava/lang/String;

    return-object p0
.end method

.method public final getStartTimeOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->startTimeOffset:J

    return-wide v0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->timestamp:J

    return-wide v0
.end method

.method public final getToLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->toLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final getToText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->toText:Ljava/lang/String;

    return-object p0
.end method

.method public final setEndTimeOffset(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->endTimeOffset:J

    return-void
.end method

.method public final setFromLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->fromLanguage:Ljava/lang/String;

    return-void
.end method

.method public final setFromText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->fromText:Ljava/lang/String;

    return-void
.end method

.method public final setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->id:J

    return-void
.end method

.method public final setMsgId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->msgId:J

    return-void
.end method

.method public final setNoteId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->noteId:J

    return-void
.end method

.method public final setRecordId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->recordId:Ljava/lang/String;

    return-void
.end method

.method public final setStartTimeOffset(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->startTimeOffset:J

    return-void
.end method

.method public final setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->timestamp:J

    return-void
.end method

.method public final setToLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->toLanguage:Ljava/lang/String;

    return-void
.end method

.method public final setToText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/SimultaneousSentence;->toText:Ljava/lang/String;

    return-void
.end method
