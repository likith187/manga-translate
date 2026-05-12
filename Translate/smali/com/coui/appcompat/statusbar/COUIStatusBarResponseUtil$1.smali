.class Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->initReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$1;->this$0:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "The broadcast receiver was registered successfully and receives the broadcast"

    const-string p2, "COUIStatusBarResponseUtil"

    invoke-static {p2, p1}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$1;->this$0:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;

    invoke-static {p1}, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->access$200(Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;)Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$StatusBarClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$1;->this$0:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;

    invoke-static {p0}, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->access$200(Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;)Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$StatusBarClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$StatusBarClickListener;->onStatusBarClicked()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onStatusBarClicked is called at time :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
