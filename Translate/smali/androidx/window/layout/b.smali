.class public final synthetic Landroidx/window/layout/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/a;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/channels/d;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/b;->a:Lkotlinx/coroutines/channels/d;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/window/layout/b;->a:Lkotlinx/coroutines/channels/d;

    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    invoke-static {p0, p1}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->b(Lkotlinx/coroutines/channels/d;Landroidx/window/layout/WindowLayoutInfo;)V

    return-void
.end method
