.class final Lkotlin/io/n$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/n;->o(Ljava/io/File;Ljava/io/File;ZLw8/p;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $onError:Lw8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/p;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lw8/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/p;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/io/n$b;->$onError:Lw8/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/IOException;

    invoke-virtual {p0, p1, p2}, Lkotlin/io/n$b;->invoke(Ljava/io/File;Ljava/io/IOException;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/io/File;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lkotlin/io/n$b;->$onError:Lw8/p;

    invoke-interface {p0, p1, p2}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p2, Lkotlin/io/p;->TERMINATE:Lkotlin/io/p;

    if-eq p0, p2, :cond_0

    return-void

    :cond_0
    new-instance p0, Lkotlin/io/q;

    invoke-direct {p0, p1}, Lkotlin/io/q;-><init>(Ljava/io/File;)V

    throw p0
.end method
