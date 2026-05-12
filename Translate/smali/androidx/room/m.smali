.class Landroidx/room/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/c$c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/io/File;

.field private final c:Ls0/c$c;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Ls0/c$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/m;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/room/m;->b:Ljava/io/File;

    iput-object p3, p0, Landroidx/room/m;->c:Ls0/c$c;

    return-void
.end method


# virtual methods
.method public a(Ls0/c$b;)Ls0/c;
    .locals 7

    new-instance v6, Landroidx/room/l;

    iget-object v1, p1, Ls0/c$b;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/room/m;->a:Ljava/lang/String;

    iget-object v3, p0, Landroidx/room/m;->b:Ljava/io/File;

    iget-object v0, p1, Ls0/c$b;->c:Ls0/c$a;

    iget v4, v0, Ls0/c$a;->a:I

    iget-object p0, p0, Landroidx/room/m;->c:Ls0/c$c;

    invoke-interface {p0, p1}, Ls0/c$c;->a(Ls0/c$b;)Ls0/c;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/room/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ILs0/c;)V

    return-object v6
.end method
