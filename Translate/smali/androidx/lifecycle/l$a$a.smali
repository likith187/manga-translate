.class public final Landroidx/lifecycle/l$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/l$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/l$a$a$a;
    }
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
    invoke-direct {p0}, Landroidx/lifecycle/l$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$a;
    .locals 0

    const-string p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/lifecycle/l$a$a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/lifecycle/l$a;->ON_PAUSE:Landroidx/lifecycle/l$a;

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/lifecycle/l$a;->ON_STOP:Landroidx/lifecycle/l$a;

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/lifecycle/l$a;->ON_DESTROY:Landroidx/lifecycle/l$a;

    :goto_0
    return-object p0
.end method

.method public final b(Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$a;
    .locals 0

    const-string p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/lifecycle/l$a$a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/lifecycle/l$a;->ON_DESTROY:Landroidx/lifecycle/l$a;

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/lifecycle/l$a;->ON_PAUSE:Landroidx/lifecycle/l$a;

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/lifecycle/l$a;->ON_STOP:Landroidx/lifecycle/l$a;

    :goto_0
    return-object p0
.end method

.method public final c(Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$a;
    .locals 0

    const-string p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/lifecycle/l$a$a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/lifecycle/l$a;->ON_CREATE:Landroidx/lifecycle/l$a;

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/lifecycle/l$a;->ON_RESUME:Landroidx/lifecycle/l$a;

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/lifecycle/l$a;->ON_START:Landroidx/lifecycle/l$a;

    :goto_0
    return-object p0
.end method

.method public final d(Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$a;
    .locals 0

    const-string p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/lifecycle/l$a$a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/lifecycle/l$a;->ON_RESUME:Landroidx/lifecycle/l$a;

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/lifecycle/l$a;->ON_START:Landroidx/lifecycle/l$a;

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/lifecycle/l$a;->ON_CREATE:Landroidx/lifecycle/l$a;

    :goto_0
    return-object p0
.end method
