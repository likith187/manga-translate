.class Landroidx/emoji2/text/EmojiCompatInitializer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/emoji2/text/EmojiCompatInitializer;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/l;

.field final synthetic b:Landroidx/emoji2/text/EmojiCompatInitializer;


# direct methods
.method constructor <init>(Landroidx/emoji2/text/EmojiCompatInitializer;Landroidx/lifecycle/l;)V
    .locals 0

    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompatInitializer$a;->b:Landroidx/emoji2/text/EmojiCompatInitializer;

    iput-object p2, p0, Landroidx/emoji2/text/EmojiCompatInitializer$a;->a:Landroidx/lifecycle/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResume(Landroidx/lifecycle/s;)V
    .locals 0

    iget-object p1, p0, Landroidx/emoji2/text/EmojiCompatInitializer$a;->b:Landroidx/emoji2/text/EmojiCompatInitializer;

    invoke-virtual {p1}, Landroidx/emoji2/text/EmojiCompatInitializer;->e()V

    iget-object p1, p0, Landroidx/emoji2/text/EmojiCompatInitializer$a;->a:Landroidx/lifecycle/l;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/l;->d(Landroidx/lifecycle/r;)V

    return-void
.end method
