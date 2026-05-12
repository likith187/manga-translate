.class public abstract Lcom/oplus/backup/sdk/event/Event;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/backup/sdk/event/Event$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/backup/sdk/event/Event$Companion;

.field public static final EVENT_MESSAGE_RECEIVED:Ljava/lang/String; = "event_message_received"

.field public static final EVENT_MESSAGE_SENT:Ljava/lang/String; = "event_message_sent"

.field public static final EVENT_RESTORE_CMD_SENT:Ljava/lang/String; = "event_restore_cmd_sent"


# instance fields
.field private eventIntent:Landroid/content/Intent;

.field private receivePluginID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/backup/sdk/event/Event$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/backup/sdk/event/Event$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/backup/sdk/event/Event;->Companion:Lcom/oplus/backup/sdk/event/Event$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "eventIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/backup/sdk/event/Event;->eventIntent:Landroid/content/Intent;

    return-void
.end method

.method public static final isEventIntent(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/oplus/backup/sdk/event/Event;->Companion:Lcom/oplus/backup/sdk/event/Event$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/backup/sdk/event/Event$Companion;->isEventIntent(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static final isEventIntent(Ljava/lang/String;)Z
    .locals 1

    .line 2
    sget-object v0, Lcom/oplus/backup/sdk/event/Event;->Companion:Lcom/oplus/backup/sdk/event/Event$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/backup/sdk/event/Event$Companion;->isEventIntent(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getEventIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/oplus/backup/sdk/event/Event;->eventIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public final getReceivePluginID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/backup/sdk/event/Event;->receivePluginID:Ljava/lang/String;

    return-object p0
.end method

.method public final setEventIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/backup/sdk/event/Event;->eventIntent:Landroid/content/Intent;

    return-void
.end method

.method public final setReceivePluginID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/backup/sdk/event/Event;->receivePluginID:Ljava/lang/String;

    return-void
.end method
