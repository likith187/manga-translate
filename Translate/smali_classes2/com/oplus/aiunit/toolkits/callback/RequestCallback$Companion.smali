.class public final Lcom/oplus/aiunit/toolkits/callback/RequestCallback$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/toolkits/callback/RequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/oplus/aiunit/toolkits/callback/RequestCallback$Companion;

.field public static final REQUEST_IPC_FAIL:I = 0x0

.field public static final REQUEST_NO_INTERNET:I = 0x191

.field public static final REQUEST_PRIVACY_NOT_PERMIT:I = 0x190

.field public static final REQUEST_SET_UP_NOT_COMPLETE:I = 0x1f4

.field public static final REQUEST_SUCCESS:I = 0x1

.field public static final REQUEST_SUCCESS_IN_HOUR:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/toolkits/callback/RequestCallback$Companion;

    invoke-direct {v0}, Lcom/oplus/aiunit/toolkits/callback/RequestCallback$Companion;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/toolkits/callback/RequestCallback$Companion;->$$INSTANCE:Lcom/oplus/aiunit/toolkits/callback/RequestCallback$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
