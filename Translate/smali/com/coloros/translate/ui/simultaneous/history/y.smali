.class public final synthetic Lcom/coloros/translate/ui/simultaneous/history/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/y;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/y;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->Y0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method
