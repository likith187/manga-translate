.class public interface abstract Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback$Companion;

.field public static final STATUS_DEFAULT:I = -0x1

.field public static final STATUS_FAIL:I = 0x0

.field public static final STATUS_SUCCESS:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback$Companion;->$$INSTANCE:Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback$Companion;

    sput-object v0, Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback;->Companion:Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback$Companion;

    return-void
.end method


# virtual methods
.method public abstract onFail(I)V
.end method

.method public abstract onSuccess()V
.end method
