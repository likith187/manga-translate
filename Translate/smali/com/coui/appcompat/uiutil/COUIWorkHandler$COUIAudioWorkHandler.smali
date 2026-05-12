.class Lcom/coui/appcompat/uiutil/COUIWorkHandler$COUIAudioWorkHandler;
.super Lcom/coui/appcompat/uiutil/COUIWorkHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/uiutil/COUIWorkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "COUIAudioWorkHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "COUIAudioWorkHandler"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/coui/appcompat/uiutil/COUIWorkHandler;-><init>(Lcom/coui/appcompat/uiutil/COUIWorkHandler$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/uiutil/COUIWorkHandler$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/coui/appcompat/uiutil/COUIWorkHandler$COUIAudioWorkHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected newHandlerInstance()Landroid/os/HandlerThread;
    .locals 2

    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "COUIAudioWorkHandler"

    const/16 v1, -0x10

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-object p0
.end method
