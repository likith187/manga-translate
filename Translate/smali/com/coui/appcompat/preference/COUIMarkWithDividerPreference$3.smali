.class Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->initPreciseHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$3;->this$0:Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;II)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$3;->this$0:Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;

    invoke-static {v0}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->access$200(Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;)Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;->onClick(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$3;->this$0:Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->access$300(Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$3;->this$0:Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->access$000(Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;)Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$OnMainLayoutClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$3;->this$0:Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;

    invoke-static {p0}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->access$000(Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;)Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$OnMainLayoutClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$OnMainLayoutClickListener;->onMainLayoutClick()V

    :cond_0
    return-void
.end method
