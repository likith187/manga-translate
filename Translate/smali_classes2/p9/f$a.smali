.class public final Lp9/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp9/f;
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
    invoke-direct {p0}, Lp9/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lp9/f;
    .locals 0

    invoke-virtual {p0}, Lp9/f$a;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lp9/f;

    invoke-direct {p0}, Lp9/f;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final b()Z
    .locals 0

    invoke-static {}, Lp9/f;->p()Z

    move-result p0

    return p0
.end method
