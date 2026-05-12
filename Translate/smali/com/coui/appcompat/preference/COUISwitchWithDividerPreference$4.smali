.class Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->removePreciseClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$4;->this$0:Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$4;->this$0:Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->access$000(Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;)Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$OnMainLayoutClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$4;->this$0:Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;

    invoke-static {p0}, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->access$000(Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;)Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$OnMainLayoutClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$OnMainLayoutClickListener;->onMainLayoutClick()V

    :cond_0
    return-void
.end method
