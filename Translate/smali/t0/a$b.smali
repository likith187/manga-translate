.class Lt0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt0/a;->t0(Ls0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ls0/e;

.field final synthetic b:Lt0/a;


# direct methods
.method constructor <init>(Lt0/a;Ls0/e;)V
    .locals 0

    iput-object p1, p0, Lt0/a$b;->b:Lt0/a;

    iput-object p2, p0, Lt0/a$b;->a:Ls0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 0

    iget-object p0, p0, Lt0/a$b;->a:Ls0/e;

    new-instance p1, Lt0/d;

    invoke-direct {p1, p4}, Lt0/d;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    invoke-interface {p0, p1}, Ls0/e;->i(Ls0/d;)V

    new-instance p0, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object p0
.end method
