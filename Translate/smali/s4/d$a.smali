.class Ls4/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls4/d;->f()Lq4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ls4/d;


# direct methods
.method constructor <init>(Ls4/d;)V
    .locals 0

    iput-object p1, p0, Ls4/d$a;->a:Ls4/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, v0}, Ls4/d$a;->b(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 7

    new-instance v6, Ls4/e;

    iget-object v0, p0, Ls4/d$a;->a:Ls4/d;

    invoke-static {v0}, Ls4/d;->b(Ls4/d;)Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Ls4/d$a;->a:Ls4/d;

    invoke-static {v0}, Ls4/d;->c(Ls4/d;)Ljava/util/Map;

    move-result-object v3

    iget-object v0, p0, Ls4/d$a;->a:Ls4/d;

    invoke-static {v0}, Ls4/d;->d(Ls4/d;)Lq4/d;

    move-result-object v4

    iget-object p0, p0, Ls4/d$a;->a:Ls4/d;

    invoke-static {p0}, Ls4/d;->e(Ls4/d;)Z

    move-result v5

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Ls4/e;-><init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lq4/d;Z)V

    const/4 p0, 0x0

    invoke-virtual {v6, p1, p0}, Ls4/e;->f(Ljava/lang/Object;Z)Ls4/e;

    invoke-virtual {v6}, Ls4/e;->m()V

    return-void
.end method
