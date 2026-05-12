.class public final Lt5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt5/a;


# instance fields
.field private final a:Landroidx/room/h;

.field private final b:Landroidx/room/c;

.field private final c:Landroidx/room/n;

.field private final d:Landroidx/room/n;


# direct methods
.method public constructor <init>(Landroidx/room/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt5/b;->a:Landroidx/room/h;

    new-instance v0, Lt5/b$a;

    invoke-direct {v0, p0, p1}, Lt5/b$a;-><init>(Lt5/b;Landroidx/room/h;)V

    iput-object v0, p0, Lt5/b;->b:Landroidx/room/c;

    new-instance v0, Lt5/b$b;

    invoke-direct {v0, p0, p1}, Lt5/b$b;-><init>(Lt5/b;Landroidx/room/h;)V

    iput-object v0, p0, Lt5/b;->c:Landroidx/room/n;

    new-instance v0, Lt5/b$c;

    invoke-direct {v0, p0, p1}, Lt5/b$c;-><init>(Lt5/b;Landroidx/room/h;)V

    iput-object v0, p0, Lt5/b;->d:Landroidx/room/n;

    return-void
.end method


# virtual methods
.method public a(Lt5/c;)V
    .locals 1

    iget-object v0, p0, Lt5/b;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->b()V

    iget-object v0, p0, Lt5/b;->a:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->c()V

    :try_start_0
    iget-object v0, p0, Lt5/b;->b:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lt5/b;->a:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lt5/b;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lt5/b;->a:Landroidx/room/h;

    invoke-virtual {p0}, Landroidx/room/h;->g()V

    throw p1
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lt5/c;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "SELECT * FROM a_e WHERE a_e.uid = (?)AND a_e.packageName = (?)AND a_e.capability_name = (?)AND a_e.auth_code = (?)"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Landroidx/room/k;->k(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v4

    move/from16 v6, p1

    int-to-long v6, v6

    const/4 v8, 0x1

    invoke-virtual {v4, v8, v6, v7}, Landroidx/room/k;->e0(IJ)V

    const/4 v6, 0x2

    if-nez v1, :cond_0

    invoke-virtual {v4, v6}, Landroidx/room/k;->M(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v6, v1}, Landroidx/room/k;->z(ILjava/lang/String;)V

    :goto_0
    const/4 v1, 0x3

    if-nez v2, :cond_1

    invoke-virtual {v4, v1}, Landroidx/room/k;->M(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v1, v2}, Landroidx/room/k;->z(ILjava/lang/String;)V

    :goto_1
    if-nez v3, :cond_2

    invoke-virtual {v4, v5}, Landroidx/room/k;->M(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v5, v3}, Landroidx/room/k;->z(ILjava/lang/String;)V

    :goto_2
    iget-object v1, v0, Lt5/b;->a:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->b()V

    iget-object v0, v0, Lt5/b;->a:Landroidx/room/h;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v4, v1, v2}, Lp0/c;->b(Landroidx/room/h;Ls0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "id"

    invoke-static {v3, v0}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "auth_code"

    invoke-static {v3, v5}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "is_enable"

    invoke-static {v3, v6}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "uid"

    invoke-static {v3, v7}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v9, "packageName"

    invoke-static {v3, v9}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "capability_name"

    invoke-static {v3, v10}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "expiration"

    invoke-static {v3, v11}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "permission"

    invoke-static {v3, v12}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "last_update_time"

    invoke-static {v3, v13}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "cache_time"

    invoke-static {v3, v14}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_3

    move/from16 v18, v8

    goto :goto_3

    :cond_3
    move/from16 v18, v1

    :goto_3
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v24

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    new-instance v2, Lt5/c;

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v28}, Lt5/c;-><init>(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;J[BJJ)V

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lt5/c;->k(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_4
    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {v4}, Landroidx/room/k;->B()V

    return-object v2

    :goto_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {v4}, Landroidx/room/k;->B()V

    throw v0
.end method
