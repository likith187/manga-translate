.class final Landroidx/activity/v$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


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

    iput-object p1, p0, Landroidx/activity/v$a;->this$0:Landroidx/activity/v;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/activity/b;

    invoke-virtual {p0, p1}, Landroidx/activity/v$a;->invoke(Landroidx/activity/b;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Landroidx/activity/b;)V
    .locals 1

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Landroidx/activity/v$a;->this$0:Landroidx/activity/v;

    invoke-static {p0, p1}, Landroidx/activity/v;->e(Landroidx/activity/v;Landroidx/activity/b;)V

    return-void
.end method
