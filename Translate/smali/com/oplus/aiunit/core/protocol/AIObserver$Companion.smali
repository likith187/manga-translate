.class public final Lcom/oplus/aiunit/core/protocol/AIObserver$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/core/protocol/AIObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/oplus/aiunit/core/protocol/AIObserver$Companion;

.field public static final ERR_CODE_SERVICE_NOT_SUPPORT:I = 0x2

.field public static final ERR_OBSERVE_EXCEPTION:I = 0x3

.field public static final ERR_SUBSCRIBE_REJECT:I = 0x4

.field public static final ERR_SUBSCRIBE_SUCCESS:I = 0x1

.field public static final ERR_UNSUBSCRIBE:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/core/protocol/AIObserver$Companion;

    invoke-direct {v0}, Lcom/oplus/aiunit/core/protocol/AIObserver$Companion;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/core/protocol/AIObserver$Companion;->$$INSTANCE:Lcom/oplus/aiunit/core/protocol/AIObserver$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
