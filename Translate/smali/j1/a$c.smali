.class final Lj1/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj1/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lj1/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lj1/a$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public b(F)Z
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not implemented"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public d()Ls1/a;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "not implemented"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e(F)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
