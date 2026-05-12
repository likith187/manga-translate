.class public interface abstract Lcom/coui/appcompat/baseview/delegate/ActivityConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/baseview/delegate/ActivityConfig$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coui/appcompat/baseview/delegate/ActivityConfig$Companion;

.field public static final STATUS_IMMERSE:I = 0x0

.field public static final STATUS_TRANSLUCENT:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/coui/appcompat/baseview/delegate/ActivityConfig$Companion;->$$INSTANCE:Lcom/coui/appcompat/baseview/delegate/ActivityConfig$Companion;

    sput-object v0, Lcom/coui/appcompat/baseview/delegate/ActivityConfig;->Companion:Lcom/coui/appcompat/baseview/delegate/ActivityConfig$Companion;

    return-void
.end method


# virtual methods
.method public abstract getNeedFoldObserver()Z
.end method

.method public abstract getStatusType()I
.end method

.method public abstract isHomeAsUpEnabled()Z
.end method
