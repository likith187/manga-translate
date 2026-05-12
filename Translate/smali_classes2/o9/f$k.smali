.class public final Lo9/f$k;
.super Ll9/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo9/f;->m1(ILo9/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo9/f;

.field final synthetic f:I

.field final synthetic g:Lo9/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLo9/f;ILo9/b;)V
    .locals 0

    iput-object p3, p0, Lo9/f$k;->e:Lo9/f;

    iput p4, p0, Lo9/f$k;->f:I

    iput-object p5, p0, Lo9/f$k;->g:Lo9/b;

    invoke-direct {p0, p1, p2}, Ll9/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lo9/f$k;->e:Lo9/f;

    iget v1, p0, Lo9/f$k;->f:I

    iget-object v2, p0, Lo9/f$k;->g:Lo9/b;

    invoke-virtual {v0, v1, v2}, Lo9/f;->l1(ILo9/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lo9/f$k;->e:Lo9/f;

    invoke-static {p0, v0}, Lo9/f;->c(Lo9/f;Ljava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
