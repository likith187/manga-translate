.class public final Lo9/f$i;
.super Ll9/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo9/f;->b1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo9/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLo9/f;)V
    .locals 0

    iput-object p3, p0, Lo9/f$i;->e:Lo9/f;

    invoke-direct {p0, p1, p2}, Ll9/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 2

    iget-object p0, p0, Lo9/f$i;->e:Lo9/f;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v0}, Lo9/f;->k1(ZII)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
