.class public final Lo9/f$d$b;
.super Ll9/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo9/f$d;->g(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo9/f;

.field final synthetic f:Lo9/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLo9/f;Lo9/i;)V
    .locals 0

    iput-object p3, p0, Lo9/f$d$b;->e:Lo9/f;

    iput-object p4, p0, Lo9/f$d$b;->f:Lo9/i;

    invoke-direct {p0, p1, p2}, Ll9/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 4

    :try_start_0
    iget-object v0, p0, Lo9/f$d$b;->e:Lo9/f;

    invoke-virtual {v0}, Lo9/f;->K0()Lo9/f$c;

    move-result-object v0

    iget-object v1, p0, Lo9/f$d$b;->f:Lo9/i;

    invoke-virtual {v0, v1}, Lo9/f$c;->b(Lo9/i;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lp9/h;->a:Lp9/h$a;

    invoke-virtual {v1}, Lp9/h$a;->g()Lp9/h;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http2Connection.Listener failure for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo9/f$d$b;->e:Lo9/f;

    invoke-virtual {v3}, Lo9/f;->I0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v0}, Lp9/h;->j(Ljava/lang/String;ILjava/lang/Throwable;)V

    :try_start_1
    iget-object p0, p0, Lo9/f$d$b;->f:Lo9/i;

    sget-object v1, Lo9/b;->PROTOCOL_ERROR:Lo9/b;

    invoke-virtual {p0, v1, v0}, Lo9/i;->d(Lo9/b;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
