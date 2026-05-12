.class Lcom/coui/appcompat/preference/COUIMenuPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/preference/COUIMenuPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUIMenuPreference;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIMenuPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference$1;->this$0:Lcom/coui/appcompat/preference/COUIMenuPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference$1;->this$0:Lcom/coui/appcompat/preference/COUIMenuPreference;

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->access$000(Lcom/coui/appcompat/preference/COUIMenuPreference;)[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference$1;->this$0:Lcom/coui/appcompat/preference/COUIMenuPreference;

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->access$000(Lcom/coui/appcompat/preference/COUIMenuPreference;)[Ljava/lang/CharSequence;

    move-result-object p1

    array-length p1, p1

    if-ge p3, p1, :cond_0

    if-ltz p3, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference$1;->this$0:Lcom/coui/appcompat/preference/COUIMenuPreference;

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->access$000(Lcom/coui/appcompat/preference/COUIMenuPreference;)[Ljava/lang/CharSequence;

    move-result-object p2

    aget-object p2, p2, p3

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference$1;->this$0:Lcom/coui/appcompat/preference/COUIMenuPreference;

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->access$000(Lcom/coui/appcompat/preference/COUIMenuPreference;)[Ljava/lang/CharSequence;

    move-result-object p2

    aget-object p2, p2, p3

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference$1;->this$0:Lcom/coui/appcompat/preference/COUIMenuPreference;

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->access$000(Lcom/coui/appcompat/preference/COUIMenuPreference;)[Ljava/lang/CharSequence;

    move-result-object p1

    const-string p2, "COUIMenuPreference"

    if-nez p1, :cond_1

    const-string p1, "OnItemClick, mEntryValues is null"

    invoke-static {p2, p1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "OnItemClick, position is error:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",length:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/coui/appcompat/preference/COUIMenuPreference$1;->this$0:Lcom/coui/appcompat/preference/COUIMenuPreference;

    invoke-static {p3}, Lcom/coui/appcompat/preference/COUIMenuPreference;->access$000(Lcom/coui/appcompat/preference/COUIMenuPreference;)[Ljava/lang/CharSequence;

    move-result-object p3

    array-length p3, p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference$1;->this$0:Lcom/coui/appcompat/preference/COUIMenuPreference;

    invoke-static {p0}, Lcom/coui/appcompat/preference/COUIMenuPreference;->access$100(Lcom/coui/appcompat/preference/COUIMenuPreference;)Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->dismiss()V

    return-void
.end method
