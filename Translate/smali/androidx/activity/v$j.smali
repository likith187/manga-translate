.class final synthetic Landroidx/activity/v$j;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/v;->h(Landroidx/lifecycle/s;Landroidx/activity/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "updateEnabledCallbacks()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Landroidx/activity/v;

    const-string v4, "updateEnabledCallbacks"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/o;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/v$j;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 0

    .line 2
    iget-object p0, p0, Lkotlin/jvm/internal/e;->receiver:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/v;

    invoke-static {p0}, Landroidx/activity/v;->g(Landroidx/activity/v;)V

    return-void
.end method
