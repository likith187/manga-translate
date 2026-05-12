.class Ld0/i$b;
.super Ld0/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Ld0/i;)V
    .locals 0

    invoke-direct {p0, p1}, Ld0/i$a;-><init>(Ld0/i;)V

    return-void
.end method


# virtual methods
.method public addExtraDataToAccessibilityNodeInfo(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Ld0/i$a;->a:Ld0/i;

    invoke-static {p2}, Ld0/h;->M0(Landroid/view/accessibility/AccessibilityNodeInfo;)Ld0/h;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Ld0/i;->a(ILd0/h;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
