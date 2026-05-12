.class Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment$1;->this$0:Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment$1;->this$0:Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
