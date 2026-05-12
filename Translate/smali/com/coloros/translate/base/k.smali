.class public final synthetic Lcom/coloros/translate/base/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/base/BaseEarPhoneActivity;

.field public final synthetic b:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/base/BaseEarPhoneActivity;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/base/k;->a:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    iput-object p2, p0, Lcom/coloros/translate/base/k;->b:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/base/k;->a:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    iget-object p0, p0, Lcom/coloros/translate/base/k;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1;->b(Lcom/coloros/translate/base/BaseEarPhoneActivity;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
