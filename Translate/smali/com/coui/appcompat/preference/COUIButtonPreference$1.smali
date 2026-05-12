.class Lcom/coui/appcompat/preference/COUIButtonPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/preference/COUIButtonPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUIButtonPreference;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIButtonPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIButtonPreference$1;->this$0:Lcom/coui/appcompat/preference/COUIButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIButtonPreference$1;->this$0:Lcom/coui/appcompat/preference/COUIButtonPreference;

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIButtonPreference;->access$000(Lcom/coui/appcompat/preference/COUIButtonPreference;)Lcom/coui/appcompat/preference/COUIButtonPreference$OnButtonClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIButtonPreference$1;->this$0:Lcom/coui/appcompat/preference/COUIButtonPreference;

    invoke-static {p0}, Lcom/coui/appcompat/preference/COUIButtonPreference;->access$000(Lcom/coui/appcompat/preference/COUIButtonPreference;)Lcom/coui/appcompat/preference/COUIButtonPreference$OnButtonClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/coui/appcompat/preference/COUIButtonPreference$OnButtonClickListener;->onButtonClick()V

    :cond_0
    return-void
.end method
