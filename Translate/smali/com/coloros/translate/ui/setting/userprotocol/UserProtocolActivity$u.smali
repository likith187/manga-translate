.class final Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$u;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->n1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V
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

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$u;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$u;->invoke(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;)V
    .locals 2

    const-string v0, "$this$section"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$u;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    sget v1, Lcom/coloros/translate/R$string;->protocol_content_v5:I

    invoke-static {v0, p1, v1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->K0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;I)V

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$u;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    sget v1, Lcom/coloros/translate/R$string;->protocol_content_v5_v1:I

    invoke-static {v0, p1, v1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->N0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;I)V

    .line 4
    iget-object p0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$u;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    sget v0, Lcom/coloros/translate/R$string;->protocol_content_v5_v2:I

    invoke-static {p0, p1, v0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->N0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;I)V

    return-void
.end method
