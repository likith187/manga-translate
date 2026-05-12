.class public final Lo9/i$d;
.super Lt9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo9/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field final synthetic o:Lo9/i;


# direct methods
.method public constructor <init>(Lo9/i;)V
    .locals 0

    iput-object p1, p0, Lo9/i$d;->o:Lo9/i;

    invoke-direct {p0}, Lt9/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected B()V
    .locals 2

    iget-object v0, p0, Lo9/i$d;->o:Lo9/i;

    sget-object v1, Lo9/b;->CANCEL:Lo9/b;

    invoke-virtual {v0, v1}, Lo9/i;->f(Lo9/b;)V

    iget-object p0, p0, Lo9/i$d;->o:Lo9/i;

    invoke-virtual {p0}, Lo9/i;->g()Lo9/f;

    move-result-object p0

    invoke-virtual {p0}, Lo9/f;->b1()V

    return-void
.end method

.method public final C()V
    .locals 1

    invoke-virtual {p0}, Lt9/c;->w()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo9/i$d;->x(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method protected x(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1

    new-instance p0, Ljava/net/SocketTimeoutException;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object p0
.end method
