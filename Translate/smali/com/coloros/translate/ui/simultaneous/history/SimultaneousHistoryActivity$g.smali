.class final Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$g;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$g;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/coloros/translate/ui/simultaneous/history/o;
    .locals 1

    .line 2
    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/o;

    invoke-direct {v0}, Lcom/coloros/translate/ui/simultaneous/history/o;-><init>()V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$g;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    .line 3
    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->c1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$h;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->o(Lcom/coloros/translate/ui/simultaneous/history/o$c;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$g;->invoke()Lcom/coloros/translate/ui/simultaneous/history/o;

    move-result-object p0

    return-object p0
.end method
