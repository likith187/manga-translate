.class Lk7/c$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lk7/c;


# direct methods
.method private constructor <init>(Lk7/c;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lk7/c$b;->a:Lk7/c;

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lk7/c;Lk7/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lk7/c$b;-><init>(Lk7/c;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lk7/c$b;->a:Lk7/c;

    invoke-static {p0}, Lk7/c;->c(Lk7/c;)Z

    move-result p0

    invoke-static {p0}, Lk7/c;->b(Z)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Change MODE to debug mode : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lk7/c;->a()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lk7/d;->b(Ljava/lang/String;)V

    return-void
.end method
