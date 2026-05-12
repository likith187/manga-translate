.class final Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/layout/SafeWindowLayoutComponentProvider;->q()Z
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

    iput-object p1, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;->this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 5

    .line 2
    iget-object v0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;->this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    invoke-static {v0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->d(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    const-string v1, "getBounds"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 4
    const-string v3, "getType"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 5
    const-string v4, "getState"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 6
    iget-object v2, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;->this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    const-string v4, "getBoundsMethod"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v4, Landroid/graphics/Rect;

    invoke-static {v4}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lc9/c;

    move-result-object v4

    invoke-static {v2, v1, v4}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->a(Landroidx/window/layout/SafeWindowLayoutComponentProvider;Ljava/lang/reflect/Method;Lc9/c;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;->this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    invoke-static {v2, v1}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->h(Landroidx/window/layout/SafeWindowLayoutComponentProvider;Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;->this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    const-string v2, "getTypeMethod"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lc9/c;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->a(Landroidx/window/layout/SafeWindowLayoutComponentProvider;Ljava/lang/reflect/Method;Lc9/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;->this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    invoke-static {v1, v3}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->h(Landroidx/window/layout/SafeWindowLayoutComponentProvider;Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;->this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    const-string v3, "getStateMethod"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lc9/c;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->a(Landroidx/window/layout/SafeWindowLayoutComponentProvider;Ljava/lang/reflect/Method;Lc9/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    iget-object p0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;->this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    invoke-static {p0, v0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->h(Landroidx/window/layout/SafeWindowLayoutComponentProvider;Ljava/lang/reflect/Method;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
