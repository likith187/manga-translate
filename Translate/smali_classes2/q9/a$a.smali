.class public final Lq9/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq9/a;
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
    invoke-direct {p0}, Lq9/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lq9/k;
    .locals 0

    invoke-virtual {p0}, Lq9/a$a;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lq9/a;

    invoke-direct {p0}, Lq9/a;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final b()Z
    .locals 0

    sget-object p0, Lp9/h;->a:Lp9/h$a;

    invoke-virtual {p0}, Lp9/h$a;->h()Z

    move-result p0

    return p0
.end method
