.class public final Lcom/oplus/backup/sdk/event/FileConfirmEvent;
.super Lcom/oplus/backup/sdk/event/Event;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/backup/sdk/event/FileConfirmEvent$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/backup/sdk/event/FileConfirmEvent$Companion;

.field public static final EVENT_FILE_CONFIRM_ACTION:Ljava/lang/String; = "file_confirm_action"

.field public static final EVENT_KEY_SENT_FILE:Ljava/lang/String; = "sent_file"


# instance fields
.field private final sentFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/backup/sdk/event/FileConfirmEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/backup/sdk/event/FileConfirmEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/backup/sdk/event/FileConfirmEvent;->Companion:Lcom/oplus/backup/sdk/event/FileConfirmEvent$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/backup/sdk/event/Event;-><init>(Landroid/content/Intent;)V

    const-string v0, "sent_file"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/backup/sdk/event/FileConfirmEvent;->sentFile:Ljava/lang/String;

    return-void
.end method

.method public static final isFileConfirmEvent(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/oplus/backup/sdk/event/FileConfirmEvent;->Companion:Lcom/oplus/backup/sdk/event/FileConfirmEvent$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/backup/sdk/event/FileConfirmEvent$Companion;->isFileConfirmEvent(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getSentFile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/backup/sdk/event/FileConfirmEvent;->sentFile:Ljava/lang/String;

    return-object p0
.end method
