.class public final Lcom/coui/appcompat/baseview/delegate/ActivityConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/baseview/delegate/ActivityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/coui/appcompat/baseview/delegate/ActivityConfig$Companion;

.field public static final STATUS_IMMERSE:I = 0x0

.field public static final STATUS_TRANSLUCENT:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/baseview/delegate/ActivityConfig$Companion;

    invoke-direct {v0}, Lcom/coui/appcompat/baseview/delegate/ActivityConfig$Companion;-><init>()V

    sput-object v0, Lcom/coui/appcompat/baseview/delegate/ActivityConfig$Companion;->$$INSTANCE:Lcom/coui/appcompat/baseview/delegate/ActivityConfig$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
