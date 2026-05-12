.class Lt0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/d;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteProgram;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteProgram;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/d;->a:Landroid/database/sqlite/SQLiteProgram;

    return-void
.end method


# virtual methods
.method public M(I)V
    .locals 0

    iget-object p0, p0, Lt0/d;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    return-void
.end method

.method public P(ID)V
    .locals 0

    iget-object p0, p0, Lt0/d;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lt0/d;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-void
.end method

.method public e0(IJ)V
    .locals 0

    iget-object p0, p0, Lt0/d;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public k0(I[B)V
    .locals 0

    iget-object p0, p0, Lt0/d;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    return-void
.end method

.method public z(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lt0/d;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    return-void
.end method
