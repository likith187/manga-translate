.class public abstract Lorg/opencv/core/Core;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/opencv/core/Core;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/opencv/core/Core;->a:Ljava/lang/String;

    invoke-static {}, Lorg/opencv/core/Core;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/opencv/core/Core;->b:Ljava/lang/String;

    invoke-static {}, Lorg/opencv/core/Core;->e()I

    move-result v0

    sput v0, Lorg/opencv/core/Core;->c:I

    invoke-static {}, Lorg/opencv/core/Core;->f()I

    move-result v0

    sput v0, Lorg/opencv/core/Core;->d:I

    invoke-static {}, Lorg/opencv/core/Core;->g()I

    move-result v0

    sput v0, Lorg/opencv/core/Core;->e:I

    invoke-static {}, Lorg/opencv/core/Core;->h()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/opencv/core/Core;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->a:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->a:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->add_2(JJJ)V

    return-void
.end method

.method private static native add_2(JJJ)V
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/opencv/core/Core;->getBuildInformation_0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 1

    const-string v0, "opencv_java460"

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .locals 1

    const-string v0, "4.6.0"

    return-object v0
.end method

.method private static e()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method private static f()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method private static g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static native getBuildInformation_0()Ljava/lang/String;
.end method

.method private static h()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
