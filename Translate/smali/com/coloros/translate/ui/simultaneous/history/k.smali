.class public final synthetic Lcom/coloros/translate/ui/simultaneous/history/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/k;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/k;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->S0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
