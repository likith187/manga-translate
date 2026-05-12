.class public final Li2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/i;


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

    iput-object p1, p0, Li2/j;->a:Landroidx/room/h;

    new-instance v0, Li2/j$a;

    invoke-direct {v0, p0, p1}, Li2/j$a;-><init>(Li2/j;Landroidx/room/h;)V

    iput-object v0, p0, Li2/j;->b:Landroidx/room/c;

    new-instance v0, Li2/j$b;

    invoke-direct {v0, p0, p1}, Li2/j$b;-><init>(Li2/j;Landroidx/room/h;)V

    iput-object v0, p0, Li2/j;->c:Landroidx/room/c;

    new-instance v0, Li2/j$c;

    invoke-direct {v0, p0, p1}, Li2/j$c;-><init>(Li2/j;Landroidx/room/h;)V

    iput-object v0, p0, Li2/j;->d:Landroidx/room/b;

    new-instance v0, Li2/j$d;

    invoke-direct {v0, p0, p1}, Li2/j$d;-><init>(Li2/j;Landroidx/room/h;)V

    iput-object v0, p0, Li2/j;->e:Landroidx/room/b;

    new-instance v0, Li2/j$e;

    invoke-direct {v0, p0, p1}, Li2/j$e;-><init>(Li2/j;Landroidx/room/h;)V

    iput-object v0, p0, Li2/j;->f:Landroidx/room/n;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->b()V

    iget-object v0, p0, Li2/j;->f:Landroidx/room/n;

    invoke-virtual {v0}, Landroidx/room/n;->a()Ls0/f;

    move-result-object v0

    iget-object v1, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->c()V

    :try_start_0
    invoke-interface {v0}, Ls0/f;->H()I

    iget-object v1, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->g()V

    iget-object p0, p0, Li2/j;->f:Landroidx/room/n;

    invoke-virtual {p0, v0}, Landroidx/room/n;->f(Ls0/f;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {v2}, Landroidx/room/h;->g()V

    iget-object p0, p0, Li2/j;->f:Landroidx/room/n;

    invoke-virtual {p0, v0}, Landroidx/room/n;->f(Ls0/f;)V

    throw v1
.end method

.method public b()Ljava/util/List;
    .locals 32

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM text_history"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/k;->k(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v1

    iget-object v3, v0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {v3}, Landroidx/room/h;->b()V

    iget-object v0, v0, Li2/j;->a:Landroidx/room/h;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lp0/c;->b(Landroidx/room/h;Ls0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "oriContent"

    invoke-static {v2, v0}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "oriLanguageCode"

    invoke-static {v2, v3}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "resultContent"

    invoke-static {v2, v4}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "resultLanguageCode"

    invoke-static {v2, v5}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "timestamp"

    invoke-static {v2, v6}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "state"

    invoke-static {v2, v7}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "expandField1"

    invoke-static {v2, v8}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "expandField2"

    invoke-static {v2, v9}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "expandField3"

    invoke-static {v2, v10}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "globalId"

    invoke-static {v2, v11}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "type"

    invoke-static {v2, v12}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "updateTimestamp"

    invoke-static {v2, v13}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "id"

    invoke-static {v2, v14}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    new-instance v15, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    new-instance v1, Lcom/coloros/translate/repository/local/TextHistory;

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v31}, Lcom/coloros/translate/repository/local/TextHistory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    move/from16 p0, v3

    move/from16 v17, v4

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/coloros/translate/repository/local/TextHistory;->setId(J)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v3, p0

    move/from16 v4, v17

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/k;->B()V

    return-object v15

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/k;->B()V

    throw v0
.end method

.method public c(Lcom/coloros/translate/repository/local/TextHistory;)V
    .locals 1

    iget-object v0, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->b()V

    iget-object v0, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->c()V

    :try_start_0
    iget-object v0, p0, Li2/j;->e:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->h(Ljava/lang/Object;)I

    iget-object p1, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    throw p1
.end method

.method public d(Lcom/coloros/translate/repository/local/TextHistory;)J
    .locals 2

    iget-object v0, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->b()V

    iget-object v0, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->c()V

    :try_start_0
    iget-object v0, p0, Li2/j;->b:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->j(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object p1, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    throw p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Lcom/coloros/translate/repository/local/TextHistory;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "SELECT * FROM text_history WHERE oriContent = ? AND resultLanguageCode = ?"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroidx/room/k;->k(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v3

    const/4 v5, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v3, v5}, Landroidx/room/k;->M(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v5, v1}, Landroidx/room/k;->z(ILjava/lang/String;)V

    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {v3, v4}, Landroidx/room/k;->M(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v4, v2}, Landroidx/room/k;->z(ILjava/lang/String;)V

    :goto_1
    iget-object v1, v0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->b()V

    iget-object v0, v0, Li2/j;->a:Landroidx/room/h;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Lp0/c;->b(Landroidx/room/h;Ls0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v0, "oriContent"

    invoke-static {v1, v0}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "oriLanguageCode"

    invoke-static {v1, v4}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "resultContent"

    invoke-static {v1, v5}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "resultLanguageCode"

    invoke-static {v1, v6}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "timestamp"

    invoke-static {v1, v7}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "state"

    invoke-static {v1, v8}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "expandField1"

    invoke-static {v1, v9}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "expandField2"

    invoke-static {v1, v10}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "expandField3"

    invoke-static {v1, v11}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "globalId"

    invoke-static {v1, v12}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "type"

    invoke-static {v1, v13}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "updateTimestamp"

    invoke-static {v1, v14}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "id"

    invoke-static {v1, v15}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    new-instance v2, Lcom/coloros/translate/repository/local/TextHistory;

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v31}, Lcom/coloros/translate/repository/local/TextHistory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/coloros/translate/repository/local/TextHistory;->setId(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroidx/room/k;->B()V

    return-object v2

    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroidx/room/k;->B()V

    throw v0
.end method

.method public f()I
    .locals 3

    const-string v0, "SELECT COUNT(*) FROM text_history"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/k;->k(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    iget-object v2, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {v2}, Landroidx/room/h;->b()V

    iget-object p0, p0, Li2/j;->a:Landroidx/room/h;

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

.method public g(Ljava/util/List;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->b()V

    iget-object v0, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->c()V

    :try_start_0
    iget-object v0, p0, Li2/j;->c:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->k(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    throw p1
.end method

.method public h()Ljava/util/List;
    .locals 32

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM text_history ORDER BY updateTimestamp DESC LIMIT 0, 100"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/k;->k(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v1

    iget-object v3, v0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {v3}, Landroidx/room/h;->b()V

    iget-object v0, v0, Li2/j;->a:Landroidx/room/h;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lp0/c;->b(Landroidx/room/h;Ls0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "oriContent"

    invoke-static {v2, v0}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "oriLanguageCode"

    invoke-static {v2, v3}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "resultContent"

    invoke-static {v2, v4}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "resultLanguageCode"

    invoke-static {v2, v5}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "timestamp"

    invoke-static {v2, v6}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "state"

    invoke-static {v2, v7}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "expandField1"

    invoke-static {v2, v8}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "expandField2"

    invoke-static {v2, v9}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "expandField3"

    invoke-static {v2, v10}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "globalId"

    invoke-static {v2, v11}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "type"

    invoke-static {v2, v12}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "updateTimestamp"

    invoke-static {v2, v13}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "id"

    invoke-static {v2, v14}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    new-instance v15, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    new-instance v1, Lcom/coloros/translate/repository/local/TextHistory;

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v31}, Lcom/coloros/translate/repository/local/TextHistory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    move/from16 p0, v3

    move/from16 v17, v4

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/coloros/translate/repository/local/TextHistory;->setId(J)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v3, p0

    move/from16 v4, v17

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/k;->B()V

    return-object v15

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/k;->B()V

    throw v0
.end method

.method public i(Lcom/coloros/translate/repository/local/TextHistory;)V
    .locals 1

    iget-object v0, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->b()V

    iget-object v0, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->c()V

    :try_start_0
    iget-object v0, p0, Li2/j;->d:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->h(Ljava/lang/Object;)I

    iget-object p1, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Li2/j;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    throw p1
.end method
