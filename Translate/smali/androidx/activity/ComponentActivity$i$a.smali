.class final Landroidx/activity/ComponentActivity$i$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/ComponentActivity$i;->invoke()Landroidx/activity/s;
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

    iput-object p1, p0, Landroidx/activity/ComponentActivity$i$a;->this$0:Landroidx/activity/ComponentActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity$i$a;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 0

    .line 2
    iget-object p0, p0, Landroidx/activity/ComponentActivity$i$a;->this$0:Landroidx/activity/ComponentActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->reportFullyDrawn()V

    return-void
.end method
