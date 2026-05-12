.class Li2/e$b;
.super Landroidx/room/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li2/e;-><init>(Landroidx/room/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Li2/e;


# direct methods
.method constructor <init>(Li2/e;Landroidx/room/h;)V
    .locals 0

    iput-object p1, p0, Li2/e$b;->d:Li2/e;

    invoke-direct {p0, p2}, Landroidx/room/c;-><init>(Landroidx/room/h;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR IGNORE INTO `simultaneousHistory` (`sid`,`timestamp`,`noteId`,`noteTitle`,`audioFile`,`simpleText`,`audioTime`) VALUES (nullif(?, 0),?,?,?,?,?,?)"

    return-object p0
.end method

.method public bridge synthetic g(Ls0/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/coloros/translate/repository/local/SimultaneousHistory;

    invoke-virtual {p0, p1, p2}, Li2/e$b;->l(Ls0/f;Lcom/coloros/translate/repository/local/SimultaneousHistory;)V

    return-void
.end method

.method public l(Ls0/f;Lcom/coloros/translate/repository/local/SimultaneousHistory;)V
    .locals 2

    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getId()J

    move-result-wide v0

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    const/4 p0, 0x2

    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getTimestamp()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    const/4 p0, 0x3

    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteId()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteTitle()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Ls0/d;->M(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteTitle()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ls0/d;->z(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getAudioFile()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, Ls0/d;->M(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getAudioFile()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ls0/d;->z(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getSimpleText()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, Ls0/d;->M(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getSimpleText()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ls0/d;->z(ILjava/lang/String;)V

    :goto_2
    const/4 p0, 0x7

    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getAudioTime()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    return-void
.end method
