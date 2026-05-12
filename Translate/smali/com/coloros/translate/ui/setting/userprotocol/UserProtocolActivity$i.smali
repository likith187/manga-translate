.class final Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$i;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->Z0(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $resId:I

.field final synthetic this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$i;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    iput p2, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$i;->$resId:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "$this$body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$i;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    iget v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$i;->$resId:I

    invoke-static {p1, v0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->S0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$i;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->L0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$i;->invoke(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
