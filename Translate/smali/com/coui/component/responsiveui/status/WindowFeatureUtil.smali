.class public final Lcom/coui/component/responsiveui/status/WindowFeatureUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coui/component/responsiveui/status/WindowFeatureUtil;

.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil;

    invoke-direct {v0}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil;-><init>()V

    sput-object v0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil;->INSTANCE:Lcom/coui/component/responsiveui/status/WindowFeatureUtil;

    sget-object v0, Lcom/coui/component/responsiveui/ResponsiveUILog;->INSTANCE:Lcom/coui/component/responsiveui/ResponsiveUILog;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUILog;->getLOG_DEBUG()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "WindowFeatureUtil"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/coui/component/responsiveui/ResponsiveUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDEBUG$p()Z
    .locals 1

    sget-boolean v0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil;->a:Z

    return v0
.end method

.method public static final isBookPosture(Landroidx/window/layout/FoldingFeature;)Z
    .locals 2

    const-string v0, "foldingFeature"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[isBookPosture] state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroidx/window/layout/FoldingFeature;->a()Landroidx/window/layout/FoldingFeature$Orientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowFeatureUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p0}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object v0

    sget-object v1, Landroidx/window/layout/FoldingFeature$State;->d:Landroidx/window/layout/FoldingFeature$State;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Landroidx/window/layout/FoldingFeature;->a()Landroidx/window/layout/FoldingFeature$Orientation;

    move-result-object p0

    sget-object v0, Landroidx/window/layout/FoldingFeature$Orientation;->c:Landroidx/window/layout/FoldingFeature$Orientation;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isSupportWindowFeature()Z
    .locals 7

    const-string v0, "[isSupportWindowFeature] "

    const-string v1, "WindowFeatureUtil"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.oplus.content.OplusFeatureConfigManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getInstance"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "hasFeature"

    const-class v6, Ljava/lang/String;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v5, "oplus.software.display.google_extension_layout"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    sget-boolean v4, Lcom/coui/component/responsiveui/status/WindowFeatureUtil;->a:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_0
    :goto_0
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return v2
.end method

.method public static final isTableTopPosture(Landroidx/window/layout/FoldingFeature;)Z
    .locals 2

    const-string v0, "foldingFeature"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[isTableTopPosture] state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroidx/window/layout/FoldingFeature;->a()Landroidx/window/layout/FoldingFeature$Orientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowFeatureUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p0}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object v0

    sget-object v1, Landroidx/window/layout/FoldingFeature$State;->d:Landroidx/window/layout/FoldingFeature$State;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Landroidx/window/layout/FoldingFeature;->a()Landroidx/window/layout/FoldingFeature$Orientation;

    move-result-object p0

    sget-object v0, Landroidx/window/layout/FoldingFeature$Orientation;->d:Landroidx/window/layout/FoldingFeature$Orientation;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final trackWindowFeature(Landroidx/activity/ComponentActivity;Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/ComponentActivity;",
            "Ljava/util/function/Consumer<",
            "Lcom/coui/component/responsiveui/status/WindowFeature;",
            ">;)V"
        }
    .end annotation

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "action"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/s;)Landroidx/lifecycle/m;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object v1

    new-instance v3, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;

    const/4 p0, 0x0

    invoke-direct {v3, p1, p2, p0}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;-><init>(Landroidx/activity/ComponentActivity;Ljava/util/function/Consumer;Lkotlin/coroutines/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    return-void
.end method
