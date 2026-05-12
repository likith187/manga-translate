.class Lt0/e;
.super Lt0/d;
.source "SourceFile"

# interfaces
.implements Ls0/f;


# instance fields
.field private final b:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    invoke-direct {p0, p1}, Lt0/d;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    iput-object p1, p0, Lt0/e;->b:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method


# virtual methods
.method public H()I
    .locals 0

    iget-object p0, p0, Lt0/e;->b:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p0

    return p0
.end method

.method public w0()J
    .locals 2

    iget-object p0, p0, Lt0/e;->b:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method
