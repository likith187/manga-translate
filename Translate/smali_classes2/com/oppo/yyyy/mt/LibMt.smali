.class public final Lcom/oppo/yyyy/mt/LibMt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/yyyy/mt/LibMt$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/oppo/yyyy/mt/LibMt$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oppo/yyyy/mt/LibMt$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oppo/yyyy/mt/LibMt$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oppo/yyyy/mt/LibMt;->a:Lcom/oppo/yyyy/mt/LibMt$a;

    const-string v0, "SlpTranslate"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final native init(Landroid/content/Context;)Z
.end method


# virtual methods
.method public final a()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/slp/library/SlpSdk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/yyyy/mt/LibMt;->init(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final native destory(J)I
.end method

.method public final native loadModel(Ljava/lang/String;)J
.end method

.method public final native translate(JLjava/lang/String;)Ljava/lang/String;
.end method
