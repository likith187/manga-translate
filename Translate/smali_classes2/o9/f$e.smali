.class public final Lo9/f$e;
.super Ll9/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo9/f;->V0(ILt9/f;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo9/f;

.field final synthetic f:I

.field final synthetic g:Lt9/d;

.field final synthetic h:I

.field final synthetic i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLo9/f;ILt9/d;IZ)V
    .locals 0

    iput-object p3, p0, Lo9/f$e;->e:Lo9/f;

    iput p4, p0, Lo9/f$e;->f:I

    iput-object p5, p0, Lo9/f$e;->g:Lt9/d;

    iput p6, p0, Lo9/f$e;->h:I

    iput-boolean p7, p0, Lo9/f$e;->i:Z

    invoke-direct {p0, p1, p2}, Ll9/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 5

    :try_start_0
    iget-object v0, p0, Lo9/f$e;->e:Lo9/f;

    invoke-static {v0}, Lo9/f;->G(Lo9/f;)Lo9/l;

    move-result-object v0

    iget v1, p0, Lo9/f$e;->f:I

    iget-object v2, p0, Lo9/f$e;->g:Lt9/d;

    iget v3, p0, Lo9/f$e;->h:I

    iget-boolean v4, p0, Lo9/f$e;->i:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lo9/l;->d(ILt9/f;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo9/f$e;->e:Lo9/f;

    invoke-virtual {v1}, Lo9/f;->R0()Lo9/j;

    move-result-object v1

    iget v2, p0, Lo9/f$e;->f:I

    sget-object v3, Lo9/b;->CANCEL:Lo9/b;

    invoke-virtual {v1, v2, v3}, Lo9/j;->X(ILo9/b;)V

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo9/f$e;->i:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lo9/f$e;->e:Lo9/f;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lo9/f$e;->e:Lo9/f;

    invoke-static {v1}, Lo9/f;->k(Lo9/f;)Ljava/util/Set;

    move-result-object v1

    iget p0, p0, Lo9/f$e;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
