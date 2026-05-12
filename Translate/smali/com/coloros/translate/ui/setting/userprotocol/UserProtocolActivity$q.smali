.class final Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$q;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->j1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V
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

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$q;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$q;->invoke(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;)V
    .locals 6

    const-string v2, "$this$section"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$q;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    sget v3, Lcom/coloros/translate/R$string;->protocol_content_v13:I

    invoke-static {v2, p1, v3}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->K0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;I)V

    .line 3
    iget-object v2, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$q;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->M0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "realme"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lkotlin/text/r;->I(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 4
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$q;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    .line 5
    sget v2, Lcom/coloros/translate/R$string;->protocol_realme_demestic_export_v13_1:I

    .line 6
    const-string v3, "global@realme.com"

    invoke-virtual {v0, v3}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->W0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    const-string v4, "global@realme.com"

    const/4 v5, 0x1

    move-object v1, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->P0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$q;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->M0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "oneplus"

    invoke-static {v2, v3, v4}, Lkotlin/text/r;->I(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 10
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$q;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    .line 11
    sget v2, Lcom/coloros/translate/R$string;->protocol_oneplus_demestic_export_v13_1:I

    .line 12
    const-string v3, "support@oneplus.com"

    invoke-virtual {v0, v3}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->W0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    const-string v4, "support@oneplus.com"

    const/4 v5, 0x1

    move-object v1, p1

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->P0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$q;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    .line 16
    sget v2, Lcom/coloros/translate/R$string;->protocol_oppo_export_v13_1:I

    .line 17
    const-string v3, "https://www.oppo.com/en/contact/"

    invoke-virtual {v0, v3}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->W0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 18
    const-string v4, "https://www.oppo.com/en/contact/"

    const/4 v5, 0x1

    move-object v1, p1

    .line 19
    invoke-static/range {v0 .. v5}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->P0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;ILjava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
