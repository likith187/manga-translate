.class public final Lcom/oplus/vfxsdk/common/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/common/f;-><init>(Lcom/oplus/vfxsdk/common/COEData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/vfxsdk/common/o;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Lcom/oplus/vfxsdk/common/o;->d(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :cond_1
    return-object p0
.end method
