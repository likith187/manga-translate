.class public final Lcom/oplus/vfxsdk/common/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/vfxsdk/common/a;
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
    invoke-direct {p0}, Lcom/oplus/vfxsdk/common/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/oplus/vfxsdk/common/AnimLine;Le8/c;)V
    .locals 0

    const-string p0, "animLine"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parameter"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/vfxsdk/common/a$a$a;

    invoke-direct {p0, p2}, Lcom/oplus/vfxsdk/common/a$a$a;-><init>(Le8/c;)V

    invoke-virtual {p1, p0}, Lcom/oplus/vfxsdk/common/AnimLine;->setPop(Le8/d;)V

    return-void
.end method

.method public final b(Lcom/oplus/vfxsdk/common/AnimLine;Le8/c;)V
    .locals 0

    const-string p0, "animLine"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parameter"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/vfxsdk/common/a$a$b;

    invoke-direct {p0, p2}, Lcom/oplus/vfxsdk/common/a$a$b;-><init>(Le8/c;)V

    invoke-virtual {p1, p0}, Lcom/oplus/vfxsdk/common/AnimLine;->setUpdate(Le8/e;)V

    return-void
.end method
