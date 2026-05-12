.class public final Lq0/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/g;
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
    invoke-direct {p0}, Lq0/g$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lq0/h;)Ln8/h0;
    .locals 0

    invoke-static {p0}, Lq0/g$a;->c(Lq0/h;)Ln8/h0;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Lq0/h;)Ln8/h0;
    .locals 2

    invoke-interface {p0}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object v0

    new-instance v1, Lq0/a;

    invoke-direct {v1, p0}, Lq0/a;-><init>(Lq0/h;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/r;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method


# virtual methods
.method public final b(Lq0/h;)Lq0/g;
    .locals 1

    const-string p0, "owner"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lr0/b;

    new-instance v0, Lq0/f;

    invoke-direct {v0, p1}, Lq0/f;-><init>(Lq0/h;)V

    invoke-direct {p0, p1, v0}, Lr0/b;-><init>(Lq0/h;Lw8/a;)V

    new-instance p1, Lq0/g;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lq0/g;-><init>(Lr0/b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method
