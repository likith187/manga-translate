.class final Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$g;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->Y0(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$g;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$g;->invoke(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;)V
    .locals 3

    const-string v0, "$this$section"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$g;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->M0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "realme"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/r;->I(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$g;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    sget v1, Lcom/coloros/translate/R$string;->protocol_realme_head_content_1:I

    sget v2, Lcom/coloros/translate/R$string;->protocol_head_content_1_1:I

    invoke-static {v0, p1, v1, v2}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->I0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;II)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$g;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->M0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oneplus"

    invoke-static {v0, v1, v2}, Lkotlin/text/r;->I(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$g;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    .line 6
    sget v1, Lcom/coloros/translate/R$string;->protocol_oneplus_head_content_1:I

    .line 7
    sget v2, Lcom/coloros/translate/R$string;->protocol_head_content_1_1:I

    .line 8
    invoke-static {v0, p1, v1, v2}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->I0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;II)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$g;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    sget v1, Lcom/coloros/translate/R$string;->protocol_oppo_head_content_1:I

    sget v2, Lcom/coloros/translate/R$string;->protocol_head_content_1_1:I

    invoke-static {v0, p1, v1, v2}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->I0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;II)V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$g;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    sget v1, Lcom/coloros/translate/R$string;->protocol_head_content_2:I

    invoke-static {v0, p1, v1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->N0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;I)V

    .line 11
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$g;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    sget v1, Lcom/coloros/translate/R$string;->protocol_head_content_3:I

    invoke-static {v0, p1, v1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->J0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;I)V

    .line 12
    iget-object p0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$g;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    sget v0, Lcom/coloros/translate/R$string;->protocol_head_content_4:I

    invoke-static {p0, p1, v0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->N0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;I)V

    return-void
.end method
