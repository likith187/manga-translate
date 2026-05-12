.class public final synthetic Lcom/coloros/translate/ui/simultaneous/history/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

.field public final synthetic b:Landroid/media/MediaPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/x;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/x;->b:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/x;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/x;->b:Landroid/media/MediaPlayer;

    invoke-static {v0, p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->c1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V

    return-void
.end method
