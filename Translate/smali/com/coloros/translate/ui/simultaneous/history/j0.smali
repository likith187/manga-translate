.class public final synthetic Lcom/coloros/translate/ui/simultaneous/history/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/simultaneous/history/k0;

.field public final synthetic b:Lcom/coloros/translate/ui/simultaneous/history/h0;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/simultaneous/history/k0;Lcom/coloros/translate/ui/simultaneous/history/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/j0;->a:Lcom/coloros/translate/ui/simultaneous/history/k0;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/j0;->b:Lcom/coloros/translate/ui/simultaneous/history/h0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/j0;->a:Lcom/coloros/translate/ui/simultaneous/history/k0;

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/j0;->b:Lcom/coloros/translate/ui/simultaneous/history/h0;

    invoke-static {v0, p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->c(Lcom/coloros/translate/ui/simultaneous/history/k0;Lcom/coloros/translate/ui/simultaneous/history/h0;Landroid/view/View;)V

    return-void
.end method
