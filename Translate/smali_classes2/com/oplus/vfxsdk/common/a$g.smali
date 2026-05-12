.class final Lcom/oplus/vfxsdk/common/a$g;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/common/a;->A(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/vfxsdk/common/a$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/vfxsdk/common/a$g;

    invoke-direct {v0}, Lcom/oplus/vfxsdk/common/a$g;-><init>()V

    sput-object v0, Lcom/oplus/vfxsdk/common/a$g;->INSTANCE:Lcom/oplus/vfxsdk/common/a$g;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/oplus/vfxsdk/common/Animator;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/a$g;->invoke(Lcom/oplus/vfxsdk/common/Animator;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Lcom/oplus/vfxsdk/common/Animator;)V
    .locals 0

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Animator;->pause()V

    return-void
.end method
