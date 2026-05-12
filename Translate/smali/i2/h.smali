.class public final Li2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/g;


# instance fields
.field private final a:Landroidx/room/h;

.field private final b:Landroidx/room/c;

.field private final c:Landroidx/room/c;

.field private final d:Landroidx/room/b;

.field private final e:Landroidx/room/b;

.field private final f:Landroidx/room/n;

.field private final g:Landroidx/room/n;


# direct methods
.method public constructor <init>(Landroidx/room/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2/h;->a:Landroidx/room/h;

    new-instance v0, Li2/h$a;

    invoke-direct {v0, p0, p1}, Li2/h$a;-><init>(Li2/h;Landroidx/room/h;)V

    iput-object v0, p0, Li2/h;->b:Landroidx/room/c;

    new-instance v0, Li2/h$b;

    invoke-direct {v0, p0, p1}, Li2/h$b;-><init>(Li2/h;Landroidx/room/h;)V

    iput-object v0, p0, Li2/h;->c:Landroidx/room/c;

    new-instance v0, Li2/h$c;

    invoke-direct {v0, p0, p1}, Li2/h$c;-><init>(Li2/h;Landroidx/room/h;)V

    iput-object v0, p0, Li2/h;->d:Landroidx/room/b;

    new-instance v0, Li2/h$d;

    invoke-direct {v0, p0, p1}, Li2/h$d;-><init>(Li2/h;Landroidx/room/h;)V

    iput-object v0, p0, Li2/h;->e:Landroidx/room/b;

    new-instance v0, Li2/h$e;

    invoke-direct {v0, p0, p1}, Li2/h$e;-><init>(Li2/h;Landroidx/room/h;)V

    iput-object v0, p0, Li2/h;->f:Landroidx/room/n;

    new-instance v0, Li2/h$f;

    invoke-direct {v0, p0, p1}, Li2/h$f;-><init>(Li2/h;Landroidx/room/h;)V

    iput-object v0, p0, Li2/h;->g:Landroidx/room/n;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Li2/h;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->b()V

    iget-object v0, p0, Li2/h;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->c()V

    :try_start_0
    iget-object v0, p0, Li2/h;->b:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->h(Ljava/lang/Iterable;)V

    iget-object p1, p0, Li2/h;->a:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Li2/h;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Li2/h;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    throw p1
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Li2/h;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->b()V

    iget-object v0, p0, Li2/h;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->c()V

    :try_start_0
    iget-object v0, p0, Li2/h;->c:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->k(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Li2/h;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Li2/h;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Li2/h;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    throw p1
.end method

.method public c()I
    .locals 3

    const-string v0, "SELECT COUNT(*) FROM simultaneousSentence"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/k;->k(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    iget-object v2, p0, Li2/h;->a:Landroidx/room/h;

    invoke-virtual {v2}, Landroidx/room/h;->b()V

    iget-object p0, p0, Li2/h;->a:Landroidx/room/h;

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

.method public d(JII)Ljava/util/List;
    .locals 15

    move-object v0, p0

    const-string v1, "SELECT * FROM simultaneousSentence WHERE noteId = ? ORDER BY timestamp LIMIT ? OFFSET ?"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroidx/room/k;->k(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v1

    const/4 v3, 0x1

    move-wide/from16 v4, p1

    invoke-virtual {v1, v3, v4, v5}, Landroidx/room/k;->e0(IJ)V

    const/4 v3, 0x2

    move/from16 v4, p4

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroidx/room/k;->e0(IJ)V

    move/from16 v3, p3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroidx/room/k;->e0(IJ)V

    iget-object v2, v0, Li2/h;->a:Landroidx/room/h;

    invoke-virtual {v2}, Landroidx/room/h;->b()V

    iget-object v0, v0, Li2/h;->a:Landroidx/room/h;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lp0/c;->b(Landroidx/room/h;Ls0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "sid"

    invoke-static {v2, v0}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "msgId"

    invoke-static {v2, v3}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "recordId"

    invoke-static {v2, v4}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "fromText"

    invoke-static {v2, v5}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "toText"

    invoke-static {v2, v6}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "fromLanguage"

    invoke-static {v2, v7}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "toLanguage"

    invoke-static {v2, v8}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "startTimeOffset"

    invoke-static {v2, v9}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "endTimeOffset"

    invoke-static {v2, v10}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "timestamp"

    invoke-static {v2, v11}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "noteId"

    invoke-static {v2, v12}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_0

    new-instance v14, Lcom/coloros/translate/repository/local/SimultaneousSentence;

    invoke-direct {v14}, Lcom/coloros/translate/repository/local/SimultaneousSentence;-><init>()V

    move p0, v12

    move-object/from16 p1, v13

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v14, v12, v13}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setId(J)V

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v14, v12, v13}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setMsgId(J)V

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setRecordId(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setFromText(Ljava/lang/String;)V

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setToText(Ljava/lang/String;)V

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setFromLanguage(Ljava/lang/String;)V

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setToLanguage(Ljava/lang/String;)V

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v14, v12, v13}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setStartTimeOffset(J)V

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v14, v12, v13}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setEndTimeOffset(J)V

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v14, v12, v13}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setTimestamp(J)V

    move v12, p0

    move p0, v3

    move/from16 p2, v4

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v14, v3, v4}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setNoteId(J)V

    move-object/from16 v3, p1

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v4, p2

    move-object v13, v3

    move v3, p0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v3, v13

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroidx/room/k;->B()V

    return-object v3

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroidx/room/k;->B()V

    throw v0
.end method

.method public e(J)V
    .locals 2

    iget-object v0, p0, Li2/h;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->b()V

    iget-object v0, p0, Li2/h;->f:Landroidx/room/n;

    invoke-virtual {v0}, Landroidx/room/n;->a()Ls0/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Ls0/d;->e0(IJ)V

    iget-object p1, p0, Li2/h;->a:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->c()V

    :try_start_0
    invoke-interface {v0}, Ls0/f;->H()I

    iget-object p1, p0, Li2/h;->a:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Li2/h;->a:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->g()V

    iget-object p0, p0, Li2/h;->f:Landroidx/room/n;

    invoke-virtual {p0, v0}, Landroidx/room/n;->f(Ls0/f;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Li2/h;->a:Landroidx/room/h;

    invoke-virtual {p2}, Landroidx/room/h;->g()V

    iget-object p0, p0, Li2/h;->f:Landroidx/room/n;

    invoke-virtual {p0, v0}, Landroidx/room/n;->f(Ls0/f;)V

    throw p1
.end method

.method public f(J)Ljava/util/List;
    .locals 15

    move-object v0, p0

    const-string v1, "SELECT * FROM simultaneousSentence WHERE noteId = ? ORDER BY timestamp"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/k;->k(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v1

    move-wide/from16 v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroidx/room/k;->e0(IJ)V

    iget-object v2, v0, Li2/h;->a:Landroidx/room/h;

    invoke-virtual {v2}, Landroidx/room/h;->b()V

    iget-object v0, v0, Li2/h;->a:Landroidx/room/h;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lp0/c;->b(Landroidx/room/h;Ls0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "sid"

    invoke-static {v2, v0}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "msgId"

    invoke-static {v2, v3}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "recordId"

    invoke-static {v2, v4}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "fromText"

    invoke-static {v2, v5}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "toText"

    invoke-static {v2, v6}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "fromLanguage"

    invoke-static {v2, v7}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "toLanguage"

    invoke-static {v2, v8}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "startTimeOffset"

    invoke-static {v2, v9}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "endTimeOffset"

    invoke-static {v2, v10}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "timestamp"

    invoke-static {v2, v11}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "noteId"

    invoke-static {v2, v12}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_0

    new-instance v14, Lcom/coloros/translate/repository/local/SimultaneousSentence;

    invoke-direct {v14}, Lcom/coloros/translate/repository/local/SimultaneousSentence;-><init>()V

    move p0, v12

    move-object/from16 p1, v13

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v14, v12, v13}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setId(J)V

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v14, v12, v13}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setMsgId(J)V

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setRecordId(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setFromText(Ljava/lang/String;)V

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setToText(Ljava/lang/String;)V

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setFromLanguage(Ljava/lang/String;)V

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setToLanguage(Ljava/lang/String;)V

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v14, v12, v13}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setStartTimeOffset(J)V

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v14, v12, v13}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setEndTimeOffset(J)V

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v14, v12, v13}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setTimestamp(J)V

    move v12, p0

    move p0, v3

    move/from16 p2, v4

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v14, v3, v4}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setNoteId(J)V

    move-object/from16 v3, p1

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v4, p2

    move-object v13, v3

    move v3, p0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v3, v13

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroidx/room/k;->B()V

    return-object v3

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroidx/room/k;->B()V

    throw v0
.end method

.method public g()Ljava/util/List;
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM simultaneousSentence"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/k;->k(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v1

    iget-object v3, v0, Li2/h;->a:Landroidx/room/h;

    invoke-virtual {v3}, Landroidx/room/h;->b()V

    iget-object v0, v0, Li2/h;->a:Landroidx/room/h;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lp0/c;->b(Landroidx/room/h;Ls0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "sid"

    invoke-static {v2, v0}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "msgId"

    invoke-static {v2, v3}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "recordId"

    invoke-static {v2, v4}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "fromText"

    invoke-static {v2, v5}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "toText"

    invoke-static {v2, v6}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "fromLanguage"

    invoke-static {v2, v7}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "toLanguage"

    invoke-static {v2, v8}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "startTimeOffset"

    invoke-static {v2, v9}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "endTimeOffset"

    invoke-static {v2, v10}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "timestamp"

    invoke-static {v2, v11}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "noteId"

    invoke-static {v2, v12}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_0

    new-instance v14, Lcom/coloros/translate/repository/local/SimultaneousSentence;

    invoke-direct {v14}, Lcom/coloros/translate/repository/local/SimultaneousSentence;-><init>()V

    move/from16 p0, v12

    move-object v15, v13

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v14, v12, v13}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setId(J)V

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v14, v12, v13}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setMsgId(J)V

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setRecordId(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setFromText(Ljava/lang/String;)V

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setToText(Ljava/lang/String;)V

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setFromLanguage(Ljava/lang/String;)V

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setToLanguage(Ljava/lang/String;)V

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v14, v12, v13}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setStartTimeOffset(J)V

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v14, v12, v13}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setEndTimeOffset(J)V

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v14, v12, v13}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setTimestamp(J)V

    move/from16 v12, p0

    move/from16 p0, v3

    move v13, v4

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v14, v3, v4}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setNoteId(J)V

    move-object v3, v15

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v13

    move-object v13, v3

    move/from16 v3, p0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v3, v13

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroidx/room/k;->B()V

    return-object v3

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroidx/room/k;->B()V

    throw v0
.end method
