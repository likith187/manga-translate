.class Lb8/a$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lb8/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb8/a$b;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    const-string p0, "persist.sys.assert.panic"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Lb8/a;->a(Z)Z

    return-void
.end method
