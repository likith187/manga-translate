.class public final Lp9/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp9/b;
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
    invoke-direct {p0}, Lp9/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lp9/h;
    .locals 0

    invoke-virtual {p0}, Lp9/b$a;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lp9/b;

    invoke-direct {p0}, Lp9/b;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final b()Z
    .locals 0

    invoke-static {}, Lp9/b;->p()Z

    move-result p0

    return p0
.end method
