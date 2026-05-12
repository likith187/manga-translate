.class public final Lo9/f$d$c;
.super Ll9/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo9/f$d;->d(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo9/f;

.field final synthetic f:I

.field final synthetic g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLo9/f;II)V
    .locals 0

    iput-object p3, p0, Lo9/f$d$c;->e:Lo9/f;

    iput p4, p0, Lo9/f$d$c;->f:I

    iput p5, p0, Lo9/f$d$c;->g:I

    invoke-direct {p0, p1, p2}, Ll9/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 3

    iget-object v0, p0, Lo9/f$d$c;->e:Lo9/f;

    iget v1, p0, Lo9/f$d$c;->f:I

    iget p0, p0, Lo9/f$d$c;->g:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, p0}, Lo9/f;->k1(ZII)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
