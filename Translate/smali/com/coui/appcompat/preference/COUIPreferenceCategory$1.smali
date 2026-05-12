.class Lcom/coui/appcompat/preference/COUIPreferenceCategory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIPreferenceCategory;->initEndRect(Landroidx/preference/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUIPreferenceCategory;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory$1;->this$0:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory$1;->this$0:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->access$000(Lcom/coui/appcompat/preference/COUIPreferenceCategory;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory$1$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory$1$1;-><init>(Lcom/coui/appcompat/preference/COUIPreferenceCategory$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
