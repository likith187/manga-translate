.class Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$n;
.super Lcom/coloros/translate/utils/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "n"
.end annotation


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/utils/h1;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$n;->b(Landroid/os/Message;Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V

    return-void
.end method

.method protected b(Landroid/os/Message;Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage msg id:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OfflineDownloadActivity"

    invoke-static {v0, p0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    invoke-static {p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    move-result-object p0

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget p0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x69

    if-ne p0, v1, :cond_1

    invoke-static {p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void

    :cond_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lt1/a;

    invoke-static {p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->p0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/x;

    move-result-object v1

    iget-object p0, p0, Lt1/a;->r:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/coloros/translate/engine/offline/x;->p(Ljava/lang/String;)Lcom/coloros/translate/engine/offline/f0;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg packageData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/translate/engine/offline/f0;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coloros/translate/utils/c0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->l(Lcom/coloros/translate/engine/offline/f0;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->m(Lcom/coloros/translate/engine/offline/f0;)V

    goto :goto_0

    :pswitch_3
    invoke-static {p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->o(Lcom/coloros/translate/engine/offline/f0;)V

    goto :goto_0

    :pswitch_4
    invoke-static {p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->n(Lcom/coloros/translate/engine/offline/f0;)V

    goto :goto_0

    :pswitch_5
    invoke-static {p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->t(Lcom/coloros/translate/engine/offline/f0;)V

    goto :goto_0

    :pswitch_6
    invoke-static {p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->u(Lcom/coloros/translate/engine/offline/f0;)V

    goto :goto_0

    :pswitch_7
    invoke-static {p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->i(Lcom/coloros/translate/engine/offline/f0;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p0, "handleMessage activity or adapter is null"

    invoke-static {v0, p0}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
