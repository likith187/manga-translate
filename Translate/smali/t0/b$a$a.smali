.class Lt0/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt0/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Lt0/a;Ls0/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ls0/c$a;

.field final synthetic b:[Lt0/a;


# direct methods
.method constructor <init>(Ls0/c$a;[Lt0/a;)V
    .locals 0

    iput-object p1, p0, Lt0/b$a$a;->a:Ls0/c$a;

    iput-object p2, p0, Lt0/b$a$a;->b:[Lt0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lt0/b$a$a;->a:Ls0/c$a;

    iget-object p0, p0, Lt0/b$a$a;->b:[Lt0/a;

    invoke-static {p0, p1}, Lt0/b$a;->k([Lt0/a;Landroid/database/sqlite/SQLiteDatabase;)Lt0/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Ls0/c$a;->c(Ls0/b;)V

    return-void
.end method
