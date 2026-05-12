.class public final Lcom/coloros/translate/repository/local/SimultaneousHistory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/repository/local/SimultaneousHistory$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coloros/translate/repository/local/SimultaneousHistory$a;

.field public static final TABLE_NAME:Ljava/lang/String; = "simultaneousHistory"


# instance fields
.field private audioFile:Ljava/lang/String;

.field private audioTime:J

.field private id:J

.field private noteId:J

.field private noteTitle:Ljava/lang/String;

.field private simpleText:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/repository/local/SimultaneousHistory$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/repository/local/SimultaneousHistory$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/repository/local/SimultaneousHistory;->Companion:Lcom/coloros/translate/repository/local/SimultaneousHistory$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/translate/repository/local/SimultaneousHistory;->timestamp:J

    const-string v0, ""

    iput-object v0, p0, Lcom/coloros/translate/repository/local/SimultaneousHistory;->noteTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/repository/local/SimultaneousHistory;->audioFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/repository/local/SimultaneousHistory;->simpleText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAudioFile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/SimultaneousHistory;->audioFile:Ljava/lang/String;

    return-object p0
.end method

.method public final getAudioTime()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/SimultaneousHistory;->audioTime:J

    return-wide v0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/SimultaneousHistory;->id:J

    return-wide v0
.end method

.method public final getNoteId()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/SimultaneousHistory;->noteId:J

    return-wide v0
.end method

.method public final getNoteTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/SimultaneousHistory;->noteTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getSimpleText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/SimultaneousHistory;->simpleText:Ljava/lang/String;

    return-object p0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/repository/local/SimultaneousHistory;->timestamp:J

    return-wide v0
.end method

.method public final setAudioFile(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/SimultaneousHistory;->audioFile:Ljava/lang/String;

    return-void
.end method

.method public final setAudioTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/repository/local/SimultaneousHistory;->audioTime:J

    return-void
.end method

.method public final setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/repository/local/SimultaneousHistory;->id:J

    return-void
.end method

.method public final setNoteId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/repository/local/SimultaneousHistory;->noteId:J

    return-void
.end method

.method public final setNoteTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/SimultaneousHistory;->noteTitle:Ljava/lang/String;

    return-void
.end method

.method public final setSimpleText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/local/SimultaneousHistory;->simpleText:Ljava/lang/String;

    return-void
.end method

.method public final setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/repository/local/SimultaneousHistory;->timestamp:J

    return-void
.end method
