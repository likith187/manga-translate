.class public final Lcom/oplus/aiunit/core/utils/ApiVersionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/oplus/aiunit/core/utils/ApiVersionUtils;

.field private static final P:I = 0x1c

.field private static final Q:I = 0x1d

.field private static final R:I = 0x1e

.field private static final S:I = 0x1f

.field private static final T:I = 0x21

.field private static final U:I = 0x22


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/core/utils/ApiVersionUtils;

    invoke-direct {v0}, Lcom/oplus/aiunit/core/utils/ApiVersionUtils;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/core/utils/ApiVersionUtils;->INSTANCE:Lcom/oplus/aiunit/core/utils/ApiVersionUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getApiVersion()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static final isP()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isQ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isR()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isS()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isT()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isU()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
