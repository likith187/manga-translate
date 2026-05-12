.class public Lcom/oplus/vfxsdk/naive/coe/engine/Message;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Message;->name:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Message;->name:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Message;->values:[Ljava/lang/Object;

    return-void
.end method
