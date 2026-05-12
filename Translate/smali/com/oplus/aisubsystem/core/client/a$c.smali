.class final Lcom/oplus/aisubsystem/core/client/a$c;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aisubsystem/core/client/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/aisubsystem/core/client/a$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aisubsystem/core/client/a$c;

    invoke-direct {v0}, Lcom/oplus/aisubsystem/core/client/a$c;-><init>()V

    sput-object v0, Lcom/oplus/aisubsystem/core/client/a$c;->INSTANCE:Lcom/oplus/aisubsystem/core/client/a$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/oplus/aiunit/core/FramePackage;
    .locals 0

    .line 1
    new-instance p0, Lcom/oplus/aiunit/core/FramePackage;

    invoke-direct {p0}, Lcom/oplus/aiunit/core/FramePackage;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/oplus/aisubsystem/core/client/a$c;->invoke()Lcom/oplus/aiunit/core/FramePackage;

    move-result-object p0

    return-object p0
.end method
