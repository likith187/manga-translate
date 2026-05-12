.class final Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$registerLayoutChangeCallback$1$2$disposableToken$1;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;->a(Landroid/app/Activity;Ljava/util/concurrent/Executor;Lc0/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/s;",
        "Lw8/l;"
    }
.end annotation


# instance fields
.field final synthetic $consumer:Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;


# direct methods
.method constructor <init>(Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$registerLayoutChangeCallback$1$2$disposableToken$1;->$consumer:Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/window/extensions/layout/WindowLayoutInfo;

    invoke-virtual {p0, p1}, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$registerLayoutChangeCallback$1$2$disposableToken$1;->invoke(Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Landroidx/window/extensions/layout/WindowLayoutInfo;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$registerLayoutChangeCallback$1$2$disposableToken$1;->$consumer:Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;

    invoke-virtual {p0, p1}, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->a(Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    return-void
.end method
