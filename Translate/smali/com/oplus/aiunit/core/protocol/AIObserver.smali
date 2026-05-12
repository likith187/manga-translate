.class public interface abstract Lcom/oplus/aiunit/core/protocol/AIObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/protocol/AIObserver$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/core/protocol/AIObserver$Companion;

.field public static final ERR_CODE_SERVICE_NOT_SUPPORT:I = 0x2

.field public static final ERR_OBSERVE_EXCEPTION:I = 0x3

.field public static final ERR_SUBSCRIBE_REJECT:I = 0x4

.field public static final ERR_SUBSCRIBE_SUCCESS:I = 0x1

.field public static final ERR_UNSUBSCRIBE:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/protocol/AIObserver$Companion;->$$INSTANCE:Lcom/oplus/aiunit/core/protocol/AIObserver$Companion;

    sput-object v0, Lcom/oplus/aiunit/core/protocol/AIObserver;->Companion:Lcom/oplus/aiunit/core/protocol/AIObserver$Companion;

    return-void
.end method


# virtual methods
.method public abstract onProtocolChange(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/core/data/AIConfig;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSubscribeResult(I)V
.end method
