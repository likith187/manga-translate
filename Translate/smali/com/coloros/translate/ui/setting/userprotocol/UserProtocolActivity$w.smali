.class final Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$w;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->p1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)V
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

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$w;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$w;->invoke(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;)V
    .locals 2

    const-string v0, "$this$section"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$w;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    sget v1, Lcom/coloros/translate/R$string;->protocol_content_v7:I

    invoke-static {v0, p1, v1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->K0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;I)V

    .line 3
    new-instance v0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$w$a;

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$w;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$w$a;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->body(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;Lw8/l;)Landroid/widget/TextView;

    return-void
.end method
