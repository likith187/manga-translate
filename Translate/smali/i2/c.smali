.class public final Li2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/b;


# instance fields
.field private final a:Landroidx/room/h;

.field private final b:Landroidx/room/c;

.field private final c:Landroidx/room/b;

.field private final d:Landroidx/room/b;

.field private final e:Landroidx/room/n;


# direct methods
.method public constructor <init>(Landroidx/room/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2/c;->a:Landroidx/room/h;

    new-instance v0, Li2/c$a;

    invoke-direct {v0, p0, p1}, Li2/c$a;-><init>(Li2/c;Landroidx/room/h;)V

    iput-object v0, p0, Li2/c;->b:Landroidx/room/c;

    new-instance v0, Li2/c$b;

    invoke-direct {v0, p0, p1}, Li2/c$b;-><init>(Li2/c;Landroidx/room/h;)V

    iput-object v0, p0, Li2/c;->c:Landroidx/room/b;

    new-instance v0, Li2/c$c;

    invoke-direct {v0, p0, p1}, Li2/c$c;-><init>(Li2/c;Landroidx/room/h;)V

    iput-object v0, p0, Li2/c;->d:Landroidx/room/b;

    new-instance v0, Li2/c$d;

    invoke-direct {v0, p0, p1}, Li2/c$d;-><init>(Li2/c;Landroidx/room/h;)V

    iput-object v0, p0, Li2/c;->e:Landroidx/room/n;

    return-void
.end method


# virtual methods
.method public a(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 1

    iget-object v0, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->b()V

    iget-object v0, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->c()V

    :try_start_0
    iget-object v0, p0, Li2/c;->c:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->h(Ljava/lang/Object;)I

    iget-object p1, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    throw p1
.end method

.method public b(Lcom/coloros/translate/repository/local/Conversation;)J
    .locals 2

    iget-object v0, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->b()V

    iget-object v0, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->c()V

    :try_start_0
    iget-object v0, p0, Li2/c;->b:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->j(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object p1, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    throw p1
.end method

.method public c(II)Ljava/util/List;
    .locals 30

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM conversationHistory ORDER BY timestamp LIMIT ? OFFSET ?"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroidx/room/k;->k(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v1

    move/from16 v3, p2

    int-to-long v3, v3

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v3, v4}, Landroidx/room/k;->e0(IJ)V

    move/from16 v3, p1

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroidx/room/k;->e0(IJ)V

    iget-object v2, v0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {v2}, Landroidx/room/h;->b()V

    iget-object v0, v0, Li2/c;->a:Landroidx/room/h;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lp0/c;->b(Landroidx/room/h;Ls0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "conversationId"

    invoke-static {v2, v0}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "fromText"

    invoke-static {v2, v4}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v6, "toText"

    invoke-static {v2, v6}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "fromLanguage"

    invoke-static {v2, v7}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "toLanguage"

    invoke-static {v2, v8}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "timestamp"

    invoke-static {v2, v9}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "state"

    invoke-static {v2, v10}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "isLeft"

    invoke-static {v2, v11}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "expandField1"

    invoke-static {v2, v12}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "expandField2"

    invoke-static {v2, v13}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "expandField3"

    invoke-static {v2, v14}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_0

    move/from16 v26, v5

    goto :goto_1

    :cond_0
    const/16 v26, 0x0

    :goto_1
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    new-instance v3, Lcom/coloros/translate/repository/local/Conversation;

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v29}, Lcom/coloros/translate/repository/local/Conversation;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroidx/room/k;->B()V

    return-object v15

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroidx/room/k;->B()V

    throw v0
.end method

.method public d(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 1

    iget-object v0, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->b()V

    iget-object v0, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->c()V

    :try_start_0
    iget-object v0, p0, Li2/c;->d:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->h(Ljava/lang/Object;)I

    iget-object p1, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    throw p1
.end method

.method public e(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->b()V

    iget-object v0, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->c()V

    :try_start_0
    iget-object v0, p0, Li2/c;->c:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->i(Ljava/lang/Iterable;)I

    iget-object p1, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    throw p1
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->b()V

    iget-object v0, p0, Li2/c;->e:Landroidx/room/n;

    invoke-virtual {v0}, Landroidx/room/n;->a()Ls0/f;

    move-result-object v0

    iget-object v1, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->c()V

    :try_start_0
    invoke-interface {v0}, Ls0/f;->H()I

    iget-object v1, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->g()V

    iget-object p0, p0, Li2/c;->e:Landroidx/room/n;

    invoke-virtual {p0, v0}, Landroidx/room/n;->f(Ls0/f;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Li2/c;->a:Landroidx/room/h;

    invoke-virtual {v2}, Landroidx/room/h;->g()V

    iget-object p0, p0, Li2/c;->e:Landroidx/room/n;

    invoke-virtual {p0, v0}, Landroidx/room/n;->f(Ls0/f;)V

    throw v1
.end method
