.class public final Landroidx/window/layout/WindowInfoTracker$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/WindowInfoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic a:Landroidx/window/layout/WindowInfoTracker$Companion;

.field private static final b:Z

.field private static final c:Ljava/lang/String;

.field private static final d:Ln8/j;

.field private static e:Landroidx/window/layout/WindowInfoTrackerDecorator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/layout/WindowInfoTracker$Companion;

    invoke-direct {v0}, Landroidx/window/layout/WindowInfoTracker$Companion;-><init>()V

    sput-object v0, Landroidx/window/layout/WindowInfoTracker$Companion;->a:Landroidx/window/layout/WindowInfoTracker$Companion;

    const-class v0, Landroidx/window/layout/WindowInfoTracker;

    invoke-static {v0}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lc9/c;

    move-result-object v0

    invoke-interface {v0}, Lc9/c;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/window/layout/WindowInfoTracker$Companion;->c:Ljava/lang/String;

    sget-object v0, Landroidx/window/layout/WindowInfoTracker$Companion$extensionBackend$2;->INSTANCE:Landroidx/window/layout/WindowInfoTracker$Companion$extensionBackend$2;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Landroidx/window/layout/WindowInfoTracker$Companion;->d:Ln8/j;

    sget-object v0, Landroidx/window/layout/EmptyDecorator;->INSTANCE:Landroidx/window/layout/EmptyDecorator;

    sput-object v0, Landroidx/window/layout/WindowInfoTracker$Companion;->e:Landroidx/window/layout/WindowInfoTrackerDecorator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Z
    .locals 1

    sget-boolean v0, Landroidx/window/layout/WindowInfoTracker$Companion;->b:Z

    return v0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/window/layout/WindowInfoTracker$Companion;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final c()Landroidx/window/layout/WindowBackend;
    .locals 0

    sget-object p0, Landroidx/window/layout/WindowInfoTracker$Companion;->d:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/window/layout/WindowBackend;

    return-object p0
.end method

.method public final d(Landroid/content/Context;)Landroidx/window/layout/WindowInfoTracker;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/window/layout/WindowInfoTracker$Companion;->c()Landroidx/window/layout/WindowBackend;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Landroidx/window/layout/SidecarWindowBackend;->c:Landroidx/window/layout/SidecarWindowBackend$Companion;

    invoke-virtual {p0, p1}, Landroidx/window/layout/SidecarWindowBackend$Companion;->a(Landroid/content/Context;)Landroidx/window/layout/SidecarWindowBackend;

    move-result-object p0

    :cond_0
    new-instance p1, Landroidx/window/layout/WindowInfoTrackerImpl;

    sget-object v0, Landroidx/window/layout/WindowMetricsCalculatorCompat;->INSTANCE:Landroidx/window/layout/WindowMetricsCalculatorCompat;

    invoke-direct {p1, v0, p0}, Landroidx/window/layout/WindowInfoTrackerImpl;-><init>(Landroidx/window/layout/WindowMetricsCalculator;Landroidx/window/layout/WindowBackend;)V

    sget-object p0, Landroidx/window/layout/WindowInfoTracker$Companion;->e:Landroidx/window/layout/WindowInfoTrackerDecorator;

    invoke-interface {p0, p1}, Landroidx/window/layout/WindowInfoTrackerDecorator;->a(Landroidx/window/layout/WindowInfoTracker;)Landroidx/window/layout/WindowInfoTracker;

    move-result-object p0

    return-object p0
.end method
