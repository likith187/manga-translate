.class Li2/h$d;
.super Landroidx/room/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li2/h;-><init>(Landroidx/room/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Li2/h;


# direct methods
.method constructor <init>(Li2/h;Landroidx/room/h;)V
    .locals 0

    iput-object p1, p0, Li2/h$d;->d:Li2/h;

    invoke-direct {p0, p2}, Landroidx/room/b;-><init>(Landroidx/room/h;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 0

    const-string p0, "UPDATE OR REPLACE `simultaneousSentence` SET `sid` = ?,`msgId` = ?,`recordId` = ?,`fromText` = ?,`toText` = ?,`fromLanguage` = ?,`toLanguage` = ?,`startTimeOffset` = ?,`endTimeOffset` = ?,`timestamp` = ?,`noteId` = ? WHERE `sid` = ?"

    return-object p0
.end method

.method public bridge synthetic g(Ls0/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/coloros/translate/repository/local/SimultaneousSentence;

    invoke-virtual {p0, p1, p2}, Li2/h$d;->j(Ls0/f;Lcom/coloros/translate/repository/local/SimultaneousSentence;)V

    return-void
.end method

.method public j(Ls0/f;Lcom/coloros/translate/repository/local/SimultaneousSentence;)V
    .locals 2

    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getId()J

    move-result-wide v0

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    const/4 p0, 0x2

    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getMsgId()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getRecordId()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Ls0/d;->M(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getRecordId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ls0/d;->z(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getFromText()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, Ls0/d;->M(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getFromText()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ls0/d;->z(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getToText()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, Ls0/d;->M(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getToText()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ls0/d;->z(ILjava/lang/String;)V

    :goto_2
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getFromLanguage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    if-nez p0, :cond_3

    invoke-interface {p1, v0}, Ls0/d;->M(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getFromLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ls0/d;->z(ILjava/lang/String;)V

    :goto_3
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getToLanguage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x7

    if-nez p0, :cond_4

    invoke-interface {p1, v0}, Ls0/d;->M(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getToLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ls0/d;->z(ILjava/lang/String;)V

    :goto_4
    const/16 p0, 0x8

    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getStartTimeOffset()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    const/16 p0, 0x9

    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getEndTimeOffset()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    const/16 p0, 0xa

    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getTimestamp()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    const/16 p0, 0xb

    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getNoteId()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    const/16 p0, 0xc

    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getId()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    return-void
.end method
