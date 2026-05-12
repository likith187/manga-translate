.class Lt0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/b;


# static fields
.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, " OR IGNORE "

    const-string v5, " OR REPLACE "

    const-string v0, ""

    const-string v1, " OR ROLLBACK "

    const-string v2, " OR ABORT "

    const-string v3, " OR FAIL "

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lt0/a;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lt0/a;->c:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public J(Ljava/lang/String;)Ls0/f;
    .locals 1

    new-instance v0, Lt0/e;

    iget-object p0, p0, Lt0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p0

    invoke-direct {v0, p0}, Lt0/e;-><init>(Landroid/database/sqlite/SQLiteStatement;)V

    return-object v0
.end method

.method public W()Z
    .locals 0

    iget-object p0, p0, Lt0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p0

    return p0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lt0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method c(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 0

    iget-object p0, p0, Lt0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lt0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-void
.end method

.method public g0()V
    .locals 0

    iget-object p0, p0, Lt0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public isOpen()Z
    .locals 0

    iget-object p0, p0, Lt0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p0

    return p0
.end method

.method public l()V
    .locals 0

    iget-object p0, p0, Lt0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public l0()I
    .locals 0

    iget-object p0, p0, Lt0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result p0

    return p0
.end method

.method public m()V
    .locals 0

    iget-object p0, p0, Lt0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public p0(Ls0/e;)Landroid/database/Cursor;
    .locals 3

    iget-object v0, p0, Lt0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Lt0/a$a;

    invoke-direct {v1, p0, p1}, Lt0/a$a;-><init>(Lt0/a;Ls0/e;)V

    invoke-interface {p1}, Ls0/e;->c()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lt0/a;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public t()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lt0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public t0(Ls0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 6

    iget-object v0, p0, Lt0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Lt0/a$b;

    invoke-direct {v1, p0, p1}, Lt0/a$b;-><init>(Lt0/a;Ls0/e;)V

    invoke-interface {p1}, Ls0/e;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lt0/a;->c:[Ljava/lang/String;

    const/4 v4, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lt0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public y0(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    new-instance v0, Ls0/a;

    invoke-direct {v0, p1}, Ls0/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lt0/a;->p0(Ls0/e;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
