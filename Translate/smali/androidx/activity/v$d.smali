.class final Landroidx/activity/v$d;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/v;-><init>(Ljava/lang/Runnable;Lc0/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/activity/v;


# direct methods
.method constructor <init>(Landroidx/activity/v;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/v$d;->this$0:Landroidx/activity/v;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/v$d;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 0

    .line 2
    iget-object p0, p0, Landroidx/activity/v$d;->this$0:Landroidx/activity/v;

    invoke-static {p0}, Landroidx/activity/v;->c(Landroidx/activity/v;)V

    return-void
.end method
