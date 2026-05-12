.class final Lcom/oplus/vfxsdk/common/t$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/common/t;->f(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/vfxsdk/common/t$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/vfxsdk/common/t$b;

    invoke-direct {v0}, Lcom/oplus/vfxsdk/common/t$b;-><init>()V

    sput-object v0, Lcom/oplus/vfxsdk/common/t$b;->INSTANCE:Lcom/oplus/vfxsdk/common/t$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/oplus/vfxsdk/common/Animator;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Animator;->isPlay()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/oplus/vfxsdk/common/Animator;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/t$b;->invoke(Lcom/oplus/vfxsdk/common/Animator;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
