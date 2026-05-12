.class Lcom/coui/appcompat/preference/COUIPreferenceCategory$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIPreferenceCategory$1;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/preference/COUIPreferenceCategory$1;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIPreferenceCategory$1;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory$1$1;->this$1:Lcom/coui/appcompat/preference/COUIPreferenceCategory$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory$1$1;->this$1:Lcom/coui/appcompat/preference/COUIPreferenceCategory$1;

    iget-object v0, v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory$1;->this$0:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-static {v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->access$100(Lcom/coui/appcompat/preference/COUIPreferenceCategory;)Lcom/coui/appcompat/preference/COUIPreferenceCategory$IGetWidgetLayoutListener;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory$1$1;->this$1:Lcom/coui/appcompat/preference/COUIPreferenceCategory$1;

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory$1;->this$0:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-static {p0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->access$000(Lcom/coui/appcompat/preference/COUIPreferenceCategory;)Landroid/view/View;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory$IGetWidgetLayoutListener;->widgetInflated(Landroid/view/View;)V

    return-void
.end method
