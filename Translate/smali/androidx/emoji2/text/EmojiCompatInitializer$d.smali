.class Landroidx/emoji2/text/EmojiCompatInitializer$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiCompatInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    :try_start_0
    const-string p0, "EmojiCompat.EmojiCompatInitializer.run"

    invoke-static {p0}, Lz/i;->a(Ljava/lang/String;)V

    invoke-static {}, Landroidx/emoji2/text/e;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/emoji2/text/e;->c()Landroidx/emoji2/text/e;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/emoji2/text/e;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lz/i;->b()V

    return-void

    :goto_1
    invoke-static {}, Lz/i;->b()V

    throw p0
.end method
