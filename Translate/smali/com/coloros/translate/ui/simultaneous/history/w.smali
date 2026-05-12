.class public final synthetic Lcom/coloros/translate/ui/simultaneous/history/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

.field public final synthetic b:Lcom/coloros/translate/repository/local/SimultaneousHistory;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Lcom/coloros/translate/repository/local/SimultaneousHistory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/w;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/w;->b:Lcom/coloros/translate/repository/local/SimultaneousHistory;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/w;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/w;->b:Lcom/coloros/translate/repository/local/SimultaneousHistory;

    invoke-static {v0, p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->U0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Lcom/coloros/translate/repository/local/SimultaneousHistory;Landroid/view/View;)V

    return-void
.end method
