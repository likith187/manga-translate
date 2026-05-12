.class public final Landroidx/lifecycle/u0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/u0$b;-><init>()V

    return-void
.end method

.method public static synthetic b(Landroidx/lifecycle/u0$b;Landroidx/lifecycle/x0;Landroidx/lifecycle/u0$c;Ll0/a;ILjava/lang/Object;)Landroidx/lifecycle/u0;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    sget-object p2, Lm0/h;->INSTANCE:Lm0/h;

    invoke-virtual {p2, p1}, Lm0/h;->b(Landroidx/lifecycle/x0;)Landroidx/lifecycle/u0$c;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    sget-object p3, Lm0/h;->INSTANCE:Lm0/h;

    invoke-virtual {p3, p1}, Lm0/h;->a(Landroidx/lifecycle/x0;)Ll0/a;

    move-result-object p3

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/lifecycle/u0$b;->a(Landroidx/lifecycle/x0;Landroidx/lifecycle/u0$c;Ll0/a;)Landroidx/lifecycle/u0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/x0;Landroidx/lifecycle/u0$c;Ll0/a;)Landroidx/lifecycle/u0;
    .locals 0

    const-string p0, "owner"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "factory"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "extras"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/lifecycle/u0;

    invoke-interface {p1}, Landroidx/lifecycle/x0;->getViewModelStore()Landroidx/lifecycle/w0;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/w0;Landroidx/lifecycle/u0$c;Ll0/a;)V

    return-object p0
.end method
