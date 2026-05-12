.class public final synthetic Lcom/coloros/translate/base/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/base/BaseEarPhoneActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/base/l;->a:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/base/l;->a:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    invoke-static {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1;->a(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V

    return-void
.end method
