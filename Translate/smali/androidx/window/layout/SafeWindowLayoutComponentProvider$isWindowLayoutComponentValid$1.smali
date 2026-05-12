.class final Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowLayoutComponentValid$1;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/layout/SafeWindowLayoutComponentProvider;->t()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/s;",
        "Lw8/a;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;


# direct methods
.method constructor <init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowLayoutComponentValid$1;->this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 4

    .line 2
    iget-object v0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowLayoutComponentValid$1;->this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    invoke-static {v0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->c(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)Landroidx/window/core/ConsumerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/window/core/ConsumerAdapter;->c()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 3
    :cond_0
    iget-object v1, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowLayoutComponentValid$1;->this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    invoke-static {v1}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->g(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)Ljava/lang/Class;

    move-result-object v1

    .line 4
    const-class v2, Landroid/app/Activity;

    .line 5
    filled-new-array {v2, v0}, [Ljava/lang/Class;

    move-result-object v2

    .line 6
    const-string v3, "addWindowLayoutInfoListener"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 7
    const-string v3, "removeWindowLayoutInfoListener"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 8
    iget-object v1, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowLayoutComponentValid$1;->this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    const-string v3, "addListenerMethod"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->h(Landroidx/window/layout/SafeWindowLayoutComponentProvider;Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowLayoutComponentValid$1;->this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    const-string v1, "removeListenerMethod"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->h(Landroidx/window/layout/SafeWindowLayoutComponentProvider;Ljava/lang/reflect/Method;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowLayoutComponentValid$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
