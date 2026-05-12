.class public Lp7/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp7/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp7/n$b;
    }
.end annotation


# instance fields
.field private a:Lp7/m;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lp7/n$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp7/n;-><init>()V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lp7/n;->a:Lp7/m;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ls7/h;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lp7/l;

    invoke-direct {p1}, Lp7/l;-><init>()V

    iput-object p1, p0, Lp7/n;->a:Lp7/m;

    goto :goto_0

    :cond_1
    new-instance p1, Lp7/q;

    invoke-direct {p1}, Lp7/q;-><init>()V

    iput-object p1, p0, Lp7/n;->a:Lp7/m;

    :goto_0
    return-void
.end method

.method public static c()Lp7/n;
    .locals 1

    invoke-static {}, Lp7/n$b;->a()Lp7/n;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lo7/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lp7/n;->b(Landroid/content/Context;)V

    iget-object p0, p0, Lp7/n;->a:Lp7/m;

    invoke-interface {p0, p1, p2}, Lp7/m;->a(Landroid/content/Context;Lo7/f;)V

    return-void
.end method
