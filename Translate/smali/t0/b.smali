.class Lt0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt0/b$a;
    }
.end annotation


# instance fields
.field private final a:Lt0/b$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ls0/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lt0/b;->e(Landroid/content/Context;Ljava/lang/String;Ls0/c$a;)Lt0/b$a;

    move-result-object p1

    iput-object p1, p0, Lt0/b;->a:Lt0/b$a;

    return-void
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;Ls0/c$a;)Lt0/b$a;
    .locals 1

    const/4 p0, 0x1

    new-array p0, p0, [Lt0/a;

    new-instance v0, Lt0/b$a;

    invoke-direct {v0, p1, p2, p0, p3}, Lt0/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Lt0/a;Ls0/c$a;)V

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iget-object p0, p0, Lt0/b;->a:Lt0/b$a;

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

.method public b()Ls0/b;
    .locals 0

    iget-object p0, p0, Lt0/b;->a:Lt0/b$a;

    invoke-virtual {p0}, Lt0/b$a;->c()Ls0/b;

    move-result-object p0

    return-object p0
.end method

.method public c()Ls0/b;
    .locals 0

    iget-object p0, p0, Lt0/b;->a:Lt0/b$a;

    invoke-virtual {p0}, Lt0/b$a;->v()Ls0/b;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lt0/b;->a:Lt0/b$a;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
