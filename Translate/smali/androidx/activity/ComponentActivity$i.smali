.class final Landroidx/activity/ComponentActivity$i;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/ComponentActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/activity/ComponentActivity;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/ComponentActivity$i;->this$0:Landroidx/activity/ComponentActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/activity/s;
    .locals 3

    .line 2
    new-instance v0, Landroidx/activity/s;

    .line 3
    iget-object v1, p0, Landroidx/activity/ComponentActivity$i;->this$0:Landroidx/activity/ComponentActivity;

    invoke-static {v1}, Landroidx/activity/ComponentActivity;->access$getReportFullyDrawnExecutor$p(Landroidx/activity/ComponentActivity;)Landroidx/activity/ComponentActivity$e;

    move-result-object v1

    .line 4
    new-instance v2, Landroidx/activity/ComponentActivity$i$a;

    iget-object p0, p0, Landroidx/activity/ComponentActivity$i;->this$0:Landroidx/activity/ComponentActivity;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$i$a;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/activity/s;-><init>(Ljava/util/concurrent/Executor;Lw8/a;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity$i;->invoke()Landroidx/activity/s;

    move-result-object p0

    return-object p0
.end method
