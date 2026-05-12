.class Lcom/coui/appcompat/preference/COUIMenuPreference$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIMenuPreference;->onBindViewHolder(Landroidx/preference/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUIMenuPreference;

.field final synthetic val$holder:Landroidx/preference/l;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIMenuPreference;Landroidx/preference/l;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference$2;->this$0:Lcom/coui/appcompat/preference/COUIMenuPreference;

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIMenuPreference$2;->val$holder:Landroidx/preference/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference$2;->val$holder:Landroidx/preference/l;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference$2;->this$0:Lcom/coui/appcompat/preference/COUIMenuPreference;

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->access$100(Lcom/coui/appcompat/preference/COUIMenuPreference;)Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference$2;->this$0:Lcom/coui/appcompat/preference/COUIMenuPreference;

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->access$100(Lcom/coui/appcompat/preference/COUIMenuPreference;)Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->getPopup()Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference$2;->this$0:Lcom/coui/appcompat/preference/COUIMenuPreference;

    invoke-static {p0}, Lcom/coui/appcompat/preference/COUIMenuPreference;->access$100(Lcom/coui/appcompat/preference/COUIMenuPreference;)Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->getPopup()Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    :cond_0
    return-void
.end method
