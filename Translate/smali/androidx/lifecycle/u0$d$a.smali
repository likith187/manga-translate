.class public final Landroidx/lifecycle/u0$d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/u0$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Landroidx/lifecycle/u0$d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/u0$d;
    .locals 0

    invoke-static {}, Landroidx/lifecycle/u0$d;->d()Landroidx/lifecycle/u0$d;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Landroidx/lifecycle/u0$d;

    invoke-direct {p0}, Landroidx/lifecycle/u0$d;-><init>()V

    invoke-static {p0}, Landroidx/lifecycle/u0$d;->e(Landroidx/lifecycle/u0$d;)V

    :cond_0
    invoke-static {}, Landroidx/lifecycle/u0$d;->d()Landroidx/lifecycle/u0$d;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    return-object p0
.end method
