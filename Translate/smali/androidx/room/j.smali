.class public Landroidx/room/j;
.super Ls0/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/j$b;,
        Landroidx/room/j$a;
    }
.end annotation


# instance fields
.field private b:Landroidx/room/a;

.field private final c:Landroidx/room/j$a;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/room/a;Landroidx/room/j$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget v0, p2, Landroidx/room/j$a;->a:I

    invoke-direct {p0, v0}, Ls0/c$a;-><init>(I)V

    iput-object p1, p0, Landroidx/room/j;->b:Landroidx/room/a;

    iput-object p2, p0, Landroidx/room/j;->c:Landroidx/room/j$a;

    iput-object p3, p0, Landroidx/room/j;->d:Ljava/lang/String;

    iput-object p4, p0, Landroidx/room/j;->e:Ljava/lang/String;

    return-void
.end method

.method private h(Ls0/b;)V
    .locals 2

    invoke-static {p1}, Landroidx/room/j;->k(Ls0/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ls0/a;

    const-string v1, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v0, v1}, Ls0/a;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ls0/b;->p0(Ls0/e;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    iget-object p1, p0, Landroidx/room/j;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Landroidx/room/j;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_2
    iget-object v0, p0, Landroidx/room/j;->c:Landroidx/room/j$a;

    invoke-virtual {v0, p1}, Landroidx/room/j$a;->g(Ls0/b;)Landroidx/room/j$b;

    move-result-object v0

    iget-boolean v1, v0, Landroidx/room/j$b;->a:Z

    if-eqz v1, :cond_4

    iget-object v0, p0, Landroidx/room/j;->c:Landroidx/room/j$a;

    invoke-virtual {v0, p1}, Landroidx/room/j$a;->e(Ls0/b;)V

    invoke-direct {p0, p1}, Landroidx/room/j;->l(Ls0/b;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pre-packaged database has an invalid schema: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/room/j$b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private i(Ls0/b;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, p0}, Ls0/b;->y(Ljava/lang/String;)V

    return-void
.end method

.method private static j(Ls0/b;)Z
    .locals 2

    const-string v0, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    invoke-interface {p0, v0}, Ls0/b;->y0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v1

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static k(Ls0/b;)Z
    .locals 2

    const-string v0, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    invoke-interface {p0, v0}, Ls0/b;->y0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v1

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private l(Ls0/b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/room/j;->i(Ls0/b;)V

    iget-object p0, p0, Landroidx/room/j;->d:Ljava/lang/String;

    invoke-static {p0}, Landroidx/room/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ls0/b;->y(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Ls0/b;)V
    .locals 0

    invoke-super {p0, p1}, Ls0/c$a;->b(Ls0/b;)V

    return-void
.end method

.method public d(Ls0/b;)V
    .locals 2

    invoke-static {p1}, Landroidx/room/j;->j(Ls0/b;)Z

    move-result v0

    iget-object v1, p0, Landroidx/room/j;->c:Landroidx/room/j$a;

    invoke-virtual {v1, p1}, Landroidx/room/j$a;->a(Ls0/b;)V

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/room/j;->c:Landroidx/room/j$a;

    invoke-virtual {v0, p1}, Landroidx/room/j$a;->g(Ls0/b;)Landroidx/room/j$b;

    move-result-object v0

    iget-boolean v1, v0, Landroidx/room/j$b;->a:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pre-packaged database has an invalid schema: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/room/j$b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroidx/room/j;->l(Ls0/b;)V

    iget-object p0, p0, Landroidx/room/j;->c:Landroidx/room/j$a;

    invoke-virtual {p0, p1}, Landroidx/room/j$a;->c(Ls0/b;)V

    return-void
.end method

.method public e(Ls0/b;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/j;->g(Ls0/b;II)V

    return-void
.end method

.method public f(Ls0/b;)V
    .locals 1

    invoke-super {p0, p1}, Ls0/c$a;->f(Ls0/b;)V

    invoke-direct {p0, p1}, Landroidx/room/j;->h(Ls0/b;)V

    iget-object v0, p0, Landroidx/room/j;->c:Landroidx/room/j$a;

    invoke-virtual {v0, p1}, Landroidx/room/j$a;->d(Ls0/b;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/room/j;->b:Landroidx/room/a;

    return-void
.end method

.method public g(Ls0/b;II)V
    .locals 1

    iget-object v0, p0, Landroidx/room/j;->b:Landroidx/room/a;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/room/a;->d:Landroidx/room/h$c;

    invoke-virtual {v0, p2, p3}, Landroidx/room/h$c;->c(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Landroidx/room/j;->c:Landroidx/room/j$a;

    invoke-virtual {p2, p1}, Landroidx/room/j$a;->f(Ls0/b;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo0/a;

    invoke-virtual {p3, p1}, Lo0/a;->a(Ls0/b;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/room/j;->c:Landroidx/room/j$a;

    invoke-virtual {p2, p1}, Landroidx/room/j$a;->g(Ls0/b;)Landroidx/room/j$b;

    move-result-object p2

    iget-boolean p3, p2, Landroidx/room/j$b;->a:Z

    if-eqz p3, :cond_1

    iget-object p2, p0, Landroidx/room/j;->c:Landroidx/room/j$a;

    invoke-virtual {p2, p1}, Landroidx/room/j$a;->e(Ls0/b;)V

    invoke-direct {p0, p1}, Landroidx/room/j;->l(Ls0/b;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Migration didn\'t properly handle: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroidx/room/j$b;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, p0, Landroidx/room/j;->b:Landroidx/room/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2, p3}, Landroidx/room/a;->a(II)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p2, p0, Landroidx/room/j;->c:Landroidx/room/j$a;

    invoke-virtual {p2, p1}, Landroidx/room/j$a;->b(Ls0/b;)V

    iget-object p0, p0, Landroidx/room/j;->c:Landroidx/room/j$a;

    invoke-virtual {p0, p1}, Landroidx/room/j$a;->a(Ls0/b;)V

    :goto_1
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "A migration from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
