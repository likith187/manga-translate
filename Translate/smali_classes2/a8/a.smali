.class public La8/a;
.super Lv7/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lv7/a;-><init>()V

    const-string v0, "window"

    iput-object v0, p0, Lv7/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv7/a;->c:Z

    return-void
.end method
