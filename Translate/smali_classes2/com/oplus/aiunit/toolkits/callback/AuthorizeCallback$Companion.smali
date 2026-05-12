.class public final Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback$Companion;

.field public static final STATUS_DEFAULT:I = -0x1

.field public static final STATUS_FAIL:I = 0x0

.field public static final STATUS_SUCCESS:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback$Companion;

    invoke-direct {v0}, Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback$Companion;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback$Companion;->$$INSTANCE:Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
