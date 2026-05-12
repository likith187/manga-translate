.class public final synthetic Lcom/coloros/translate/ui/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/LottieAnimationView;

.field public final synthetic b:Lw8/a;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Lw8/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/g;->a:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/coloros/translate/ui/g;->b:Lw8/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/g;->a:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p0, p0, Lcom/coloros/translate/ui/g;->b:Lw8/a;

    invoke-static {v0, p0, p1, p2}, Lcom/coloros/translate/ui/MainActivity;->L0(Lcom/airbnb/lottie/LottieAnimationView;Lw8/a;Landroid/content/DialogInterface;I)V

    return-void
.end method
