.class public final Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$f;
.super Landroidx/recyclerview/widget/RecyclerView$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->n0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$f;->a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$u;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$u;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$f;->a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$f;->a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->v(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->u(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Z)V

    return-void
.end method
