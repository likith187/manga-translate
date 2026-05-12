.class public final Lcom/coloros/translate/ui/simultaneous/history/h0$a;
.super Landroidx/recyclerview/widget/k$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/history/h0;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/k$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/coloros/translate/ui/simultaneous/history/k0;Lcom/coloros/translate/ui/simultaneous/history/k0;)Z
    .locals 0

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/history/k0;->h()Z

    move-result p0

    invoke-virtual {p2}, Lcom/coloros/translate/ui/simultaneous/history/k0;->h()Z

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/coloros/translate/ui/simultaneous/history/k0;

    check-cast p2, Lcom/coloros/translate/ui/simultaneous/history/k0;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/h0$a;->a(Lcom/coloros/translate/ui/simultaneous/history/k0;Lcom/coloros/translate/ui/simultaneous/history/k0;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/coloros/translate/ui/simultaneous/history/k0;

    check-cast p2, Lcom/coloros/translate/ui/simultaneous/history/k0;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/h0$a;->b(Lcom/coloros/translate/ui/simultaneous/history/k0;Lcom/coloros/translate/ui/simultaneous/history/k0;)Z

    move-result p0

    return p0
.end method

.method public b(Lcom/coloros/translate/ui/simultaneous/history/k0;Lcom/coloros/translate/ui/simultaneous/history/k0;)Z
    .locals 2

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/history/k0;->d()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/coloros/translate/ui/simultaneous/history/k0;->d()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
