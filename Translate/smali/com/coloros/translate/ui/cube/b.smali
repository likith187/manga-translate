.class public final synthetic Lcom/coloros/translate/ui/cube/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/cube/CubeSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/cube/CubeSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/cube/b;->a:Lcom/coloros/translate/ui/cube/CubeSettingActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/cube/b;->a:Lcom/coloros/translate/ui/cube/CubeSettingActivity;

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->S(Lcom/coloros/translate/ui/cube/CubeSettingActivity;Landroid/content/DialogInterface;)V

    return-void
.end method
