.class Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH$1;->this$0:Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string p0, "android.widget.Button"

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method
