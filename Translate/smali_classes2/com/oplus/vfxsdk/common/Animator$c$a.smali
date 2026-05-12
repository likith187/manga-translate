.class final Lcom/oplus/vfxsdk/common/Animator$c$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/common/Animator$c;->g(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/vfxsdk/common/Animator$c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/vfxsdk/common/Animator$c$a;

    invoke-direct {v0}, Lcom/oplus/vfxsdk/common/Animator$c$a;-><init>()V

    sput-object v0, Lcom/oplus/vfxsdk/common/Animator$c$a;->INSTANCE:Lcom/oplus/vfxsdk/common/Animator$c$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/oplus/vfxsdk/common/r;)Ljava/lang/Float;
    .locals 0

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/oplus/vfxsdk/common/r;->getTime()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/oplus/vfxsdk/common/r;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/Animator$c$a;->invoke(Lcom/oplus/vfxsdk/common/r;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
