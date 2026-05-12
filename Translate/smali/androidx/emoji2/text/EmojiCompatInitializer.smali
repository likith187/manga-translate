.class public Landroidx/emoji2/text/EmojiCompatInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu0/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/EmojiCompatInitializer$b;,
        Landroidx/emoji2/text/EmojiCompatInitializer$d;,
        Landroidx/emoji2/text/EmojiCompatInitializer$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu0/a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0

    const-class p0, Landroidx/lifecycle/ProcessLifecycleInitializer;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/EmojiCompatInitializer;->c(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    new-instance v0, Landroidx/emoji2/text/EmojiCompatInitializer$b;

    invoke-direct {v0, p1}, Landroidx/emoji2/text/EmojiCompatInitializer$b;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroidx/emoji2/text/e;->h(Landroidx/emoji2/text/e$c;)Landroidx/emoji2/text/e;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/EmojiCompatInitializer;->d(Landroid/content/Context;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method d(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroidx/startup/a;->e(Landroid/content/Context;)Landroidx/startup/a;

    move-result-object p1

    const-class v0, Landroidx/lifecycle/ProcessLifecycleInitializer;

    invoke-virtual {p1, v0}, Landroidx/startup/a;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/s;

    invoke-interface {p1}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p1

    new-instance v0, Landroidx/emoji2/text/EmojiCompatInitializer$a;

    invoke-direct {v0, p0, p1}, Landroidx/emoji2/text/EmojiCompatInitializer$a;-><init>(Landroidx/emoji2/text/EmojiCompatInitializer;Landroidx/lifecycle/l;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/r;)V

    return-void
.end method

.method e()V
    .locals 3

    invoke-static {}, Landroidx/emoji2/text/b;->d()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Landroidx/emoji2/text/EmojiCompatInitializer$d;

    invoke-direct {v0}, Landroidx/emoji2/text/EmojiCompatInitializer$d;-><init>()V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
