.class public final Lcom/oplus/vfxsdk/common/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/common/v$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/oplus/vfxsdk/common/v$a;

.field private static e:Z

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;


# instance fields
.field private a:D

.field private b:D

.field private c:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/vfxsdk/common/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/vfxsdk/common/v$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/vfxsdk/common/v;->d:Lcom/oplus/vfxsdk/common/v$a;

    const-string v0, "h"

    sput-object v0, Lcom/oplus/vfxsdk/common/v;->f:Ljava/lang/String;

    const-string v0, "H"

    sput-object v0, Lcom/oplus/vfxsdk/common/v;->g:Ljava/lang/String;

    const-string v0, "mm"

    sput-object v0, Lcom/oplus/vfxsdk/common/v;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/oplus/vfxsdk/common/v;->a:D

    iput-wide v0, p0, Lcom/oplus/vfxsdk/common/v;->b:D

    return-void
.end method

.method public static final synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/oplus/vfxsdk/common/v;->e:Z

    return v0
.end method


# virtual methods
.method public final b(D)D
    .locals 6

    iget-wide v0, p0, Lcom/oplus/vfxsdk/common/v;->a:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/oplus/vfxsdk/common/v;->a:D

    iput-wide p1, p0, Lcom/oplus/vfxsdk/common/v;->b:D

    iput-wide v2, p0, Lcom/oplus/vfxsdk/common/v;->c:D

    :cond_0
    iget-wide v0, p0, Lcom/oplus/vfxsdk/common/v;->b:D

    sub-double v2, p1, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/oplus/vfxsdk/common/v;->c:D

    sub-double v0, p1, v0

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/oplus/vfxsdk/common/v;->c:D

    :cond_1
    iput-wide p1, p0, Lcom/oplus/vfxsdk/common/v;->b:D

    iget-wide v0, p0, Lcom/oplus/vfxsdk/common/v;->a:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Lcom/oplus/vfxsdk/common/v;->c:D

    sub-double/2addr p1, v0

    return-wide p1
.end method
