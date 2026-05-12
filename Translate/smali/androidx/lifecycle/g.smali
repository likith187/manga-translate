.class public final Landroidx/lifecycle/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/g$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/f;

.field private final b:Landroidx/lifecycle/p;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/f;Landroidx/lifecycle/p;)V
    .locals 1

    const-string v0, "defaultLifecycleObserver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/g;->a:Landroidx/lifecycle/f;

    iput-object p2, p0, Landroidx/lifecycle/g;->b:Landroidx/lifecycle/p;

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/lifecycle/g$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ln8/o;

    invoke-direct {p0}, Ln8/o;-><init>()V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ON_ANY must not been send by anybody"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    iget-object v0, p0, Landroidx/lifecycle/g;->a:Landroidx/lifecycle/f;

    invoke-interface {v0, p1}, Landroidx/lifecycle/f;->onDestroy(Landroidx/lifecycle/s;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroidx/lifecycle/g;->a:Landroidx/lifecycle/f;

    invoke-interface {v0, p1}, Landroidx/lifecycle/f;->onStop(Landroidx/lifecycle/s;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroidx/lifecycle/g;->a:Landroidx/lifecycle/f;

    invoke-interface {v0, p1}, Landroidx/lifecycle/f;->onPause(Landroidx/lifecycle/s;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroidx/lifecycle/g;->a:Landroidx/lifecycle/f;

    invoke-interface {v0, p1}, Landroidx/lifecycle/f;->onResume(Landroidx/lifecycle/s;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroidx/lifecycle/g;->a:Landroidx/lifecycle/f;

    invoke-interface {v0, p1}, Landroidx/lifecycle/f;->onStart(Landroidx/lifecycle/s;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroidx/lifecycle/g;->a:Landroidx/lifecycle/f;

    invoke-interface {v0, p1}, Landroidx/lifecycle/f;->onCreate(Landroidx/lifecycle/s;)V

    :goto_0
    iget-object p0, p0, Landroidx/lifecycle/g;->b:Landroidx/lifecycle/p;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroidx/lifecycle/p;->onStateChanged(Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
