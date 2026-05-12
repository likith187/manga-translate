.class public final Li2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/d;


# instance fields
.field private final a:Landroidx/room/h;

.field private final b:Landroidx/room/c;

.field private final c:Landroidx/room/c;

.field private final d:Landroidx/room/b;

.field private final e:Landroidx/room/b;

.field private final f:Landroidx/room/n;


# direct methods
.method public constructor <init>(Landroidx/room/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2/e;->a:Landroidx/room/h;

    new-instance v0, Li2/e$a;

    invoke-direct {v0, p0, p1}, Li2/e$a;-><init>(Li2/e;Landroidx/room/h;)V

    iput-object v0, p0, Li2/e;->b:Landroidx/room/c;

    new-instance v0, Li2/e$b;

    invoke-direct {v0, p0, p1}, Li2/e$b;-><init>(Li2/e;Landroidx/room/h;)V

    iput-object v0, p0, Li2/e;->c:Landroidx/room/c;

    new-instance v0, Li2/e$c;

    invoke-direct {v0, p0, p1}, Li2/e$c;-><init>(Li2/e;Landroidx/room/h;)V

    iput-object v0, p0, Li2/e;->d:Landroidx/room/b;

    new-instance v0, Li2/e$d;

    invoke-direct {v0, p0, p1}, Li2/e$d;-><init>(Li2/e;Landroidx/room/h;)V

    iput-object v0, p0, Li2/e;->e:Landroidx/room/b;

    new-instance v0, Li2/e$e;

    invoke-direct {v0, p0, p1}, Li2/e$e;-><init>(Li2/e;Landroidx/room/h;)V

    iput-object v0, p0, Li2/e;->f:Landroidx/room/n;

    return-void
.end method


# virtual methods
.method public a(Lcom/coloros/translate/repository/local/SimultaneousHistory;)V
    .locals 1

    iget-object v0, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->b()V

    iget-object v0, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->c()V

    :try_start_0
    iget-object v0, p0, Li2/e;->e:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->h(Ljava/lang/Object;)I

    iget-object p1, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    throw p1
.end method

.method public b(J)Lcom/coloros/translate/repository/local/SimultaneousHistory;
    .locals 9

    const-string v0, "SELECT * FROM simultaneousHistory WHERE noteId = ? ORDER BY timestamp"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/k;->k(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/k;->e0(IJ)V

    iget-object p1, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->b()V

    iget-object p0, p0, Li2/e;->a:Landroidx/room/h;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, v0, p1, p2}, Lp0/c;->b(Landroidx/room/h;Ls0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "sid"

    invoke-static {p0, p1}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    const-string v1, "timestamp"

    invoke-static {p0, v1}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "noteId"

    invoke-static {p0, v2}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "noteTitle"

    invoke-static {p0, v3}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "audioFile"

    invoke-static {p0, v4}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "simpleText"

    invoke-static {p0, v5}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "audioTime"

    invoke-static {p0, v6}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance p2, Lcom/coloros/translate/repository/local/SimultaneousHistory;

    invoke-direct {p2}, Lcom/coloros/translate/repository/local/SimultaneousHistory;-><init>()V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {p2, v7, v8}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setId(J)V

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {p2, v7, v8}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setTimestamp(J)V

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setNoteId(J)V

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setNoteTitle(Ljava/lang/String;)V

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setAudioFile(Ljava/lang/String;)V

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setSimpleText(Ljava/lang/String;)V

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setAudioTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/k;->B()V

    return-object p2

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/k;->B()V

    throw p1
.end method

.method public c(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->b()V

    iget-object v0, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->c()V

    :try_start_0
    iget-object v0, p0, Li2/e;->d:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->i(Ljava/lang/Iterable;)I

    iget-object p1, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    throw p1
.end method

.method public d(II)Ljava/util/List;
    .locals 10

    const-string v0, "SELECT * FROM simultaneousHistory ORDER BY timestamp DESC LIMIT ? OFFSET ?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/room/k;->k(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    const/4 v2, 0x1

    int-to-long v3, p2

    invoke-virtual {v0, v2, v3, v4}, Landroidx/room/k;->e0(IJ)V

    int-to-long p1, p1

    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/k;->e0(IJ)V

    iget-object p1, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->b()V

    iget-object p0, p0, Li2/e;->a:Landroidx/room/h;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, v0, p1, p2}, Lp0/c;->b(Landroidx/room/h;Ls0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "sid"

    invoke-static {p0, p1}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    const-string p2, "timestamp"

    invoke-static {p0, p2}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const-string v1, "noteId"

    invoke-static {p0, v1}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "noteTitle"

    invoke-static {p0, v2}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "audioFile"

    invoke-static {p0, v3}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "simpleText"

    invoke-static {p0, v4}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "audioTime"

    invoke-static {p0, v5}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Lcom/coloros/translate/repository/local/SimultaneousHistory;

    invoke-direct {v7}, Lcom/coloros/translate/repository/local/SimultaneousHistory;-><init>()V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setId(J)V

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setTimestamp(J)V

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setNoteId(J)V

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setNoteTitle(Ljava/lang/String;)V

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setAudioFile(Ljava/lang/String;)V

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setSimpleText(Ljava/lang/String;)V

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setAudioTime(J)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/k;->B()V

    return-object v6

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/k;->B()V

    throw p1
.end method

.method public e()I
    .locals 3

    const-string v0, "SELECT COUNT(*) FROM simultaneousHistory"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/k;->k(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    iget-object v2, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {v2}, Landroidx/room/h;->b()V

    iget-object p0, p0, Li2/e;->a:Landroidx/room/h;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lp0/c;->b(Landroidx/room/h;Ls0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/k;->B()V

    return v1

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/k;->B()V

    throw v1
.end method

.method public f(Lcom/coloros/translate/repository/local/SimultaneousHistory;)J
    .locals 2

    iget-object v0, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->b()V

    iget-object v0, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->c()V

    :try_start_0
    iget-object v0, p0, Li2/e;->b:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->j(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object p1, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    throw p1
.end method

.method public g(Lcom/coloros/translate/repository/local/SimultaneousHistory;)V
    .locals 1

    iget-object v0, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->b()V

    iget-object v0, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->c()V

    :try_start_0
    iget-object v0, p0, Li2/e;->d:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->h(Ljava/lang/Object;)I

    iget-object p1, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    throw p1
.end method

.method public h()Ljava/util/List;
    .locals 12

    const-string v0, "SELECT * FROM simultaneousHistory"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/k;->k(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    iget-object v2, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {v2}, Landroidx/room/h;->b()V

    iget-object p0, p0, Li2/e;->a:Landroidx/room/h;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lp0/c;->b(Landroidx/room/h;Ls0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string v1, "sid"

    invoke-static {p0, v1}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "timestamp"

    invoke-static {p0, v2}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "noteId"

    invoke-static {p0, v3}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "noteTitle"

    invoke-static {p0, v4}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "audioFile"

    invoke-static {p0, v5}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "simpleText"

    invoke-static {p0, v6}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "audioTime"

    invoke-static {p0, v7}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Lcom/coloros/translate/repository/local/SimultaneousHistory;

    invoke-direct {v9}, Lcom/coloros/translate/repository/local/SimultaneousHistory;-><init>()V

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setId(J)V

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setTimestamp(J)V

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setNoteId(J)V

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setNoteTitle(Ljava/lang/String;)V

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setAudioFile(Ljava/lang/String;)V

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setSimpleText(Ljava/lang/String;)V

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setAudioTime(J)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/k;->B()V

    return-object v8

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/k;->B()V

    throw v1
.end method

.method public i(Ljava/util/List;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->b()V

    iget-object v0, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->c()V

    :try_start_0
    iget-object v0, p0, Li2/e;->c:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->k(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Li2/e;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    throw p1
.end method
