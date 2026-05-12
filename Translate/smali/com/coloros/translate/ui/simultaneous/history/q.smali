.class public final synthetic Lcom/coloros/translate/ui/simultaneous/history/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/simultaneous/history/o;

.field public final synthetic b:Lcom/coloros/translate/ui/simultaneous/history/o$b;

.field public final synthetic c:Lcom/coloros/translate/ui/simultaneous/history/n0;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/simultaneous/history/o;Lcom/coloros/translate/ui/simultaneous/history/o$b;Lcom/coloros/translate/ui/simultaneous/history/n0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/q;->a:Lcom/coloros/translate/ui/simultaneous/history/o;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/q;->b:Lcom/coloros/translate/ui/simultaneous/history/o$b;

    iput-object p3, p0, Lcom/coloros/translate/ui/simultaneous/history/q;->c:Lcom/coloros/translate/ui/simultaneous/history/n0;

    iput p4, p0, Lcom/coloros/translate/ui/simultaneous/history/q;->f:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/q;->a:Lcom/coloros/translate/ui/simultaneous/history/o;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/q;->b:Lcom/coloros/translate/ui/simultaneous/history/o$b;

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/history/q;->c:Lcom/coloros/translate/ui/simultaneous/history/n0;

    iget p0, p0, Lcom/coloros/translate/ui/simultaneous/history/q;->f:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/o$b;->c(Lcom/coloros/translate/ui/simultaneous/history/o;Lcom/coloros/translate/ui/simultaneous/history/o$b;Lcom/coloros/translate/ui/simultaneous/history/n0;ILandroid/view/View;)V

    return-void
.end method
