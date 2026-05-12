.class public interface abstract Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/toolkits/callback/SettingsCallback$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/toolkits/callback/SettingsCallback$Companion;

.field public static final SWITCH_CLOSE:I = 0x0

.field public static final SWITCH_DEFAULT:I = -0x1

.field public static final SWITCH_OPEN:I = 0x1

.field public static final UI_DISMISS:I = 0x0

.field public static final UI_NONE:I = -0x1

.field public static final UI_RESUME:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/toolkits/callback/SettingsCallback$Companion;->$$INSTANCE:Lcom/oplus/aiunit/toolkits/callback/SettingsCallback$Companion;

    sput-object v0, Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;->Companion:Lcom/oplus/aiunit/toolkits/callback/SettingsCallback$Companion;

    return-void
.end method


# virtual methods
.method public abstract onError(I)V
.end method

.method public abstract onSwitch(I)V
.end method

.method public abstract onUI(I)V
.end method
